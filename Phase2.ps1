# param([switch] $intractive=$false)
Import-Module -Verbose -Name "C:\Users\Student\Desktop\StartHere\Connect-VM.ps1"


Import-Module -Name "C:\Users\Student\Desktop\StartHere\Connect-VM.ps1"
echo "Starting Lab..."
$vms = Get-VM

Foreach($vm in $vms){

if($vm.Name -eq "kali-attacker" -and $vm.State -ne "Running"){
echo "Connecting to $vm.Name..."
Start-VM -Name $vm.Name
Connect-VM -Name $vm.Name

}
elseif ($vm.Name -eq "metasploitable"){

Start-VM -VM $vm
echo "Starting $vm.Name..."
Connect-VM -Name $vm.Name
}

elseif ($vm.Name -ne "ubuntu-sim"){
Stop-VM -Name $vm.Name -Force
}

}

#if($interactive -ne $false){
#pause
#}
