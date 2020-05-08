# param([switch] $intractive=$false)
Import-Module -Verbose -Name "C:\Tools\StartHere\Connect-VM.ps1"

echo "Starting Lab..."
$vms = Get-VM

Foreach($vm in $vms){

if($vm.Name -eq "kali-attacker" -or $vm.Name -eq "win10-victim"){
echo "Connecting to $vm.Name..."
Start-VM -Name $vm.Name
Connect-VM -Name $vm.Name

}
elseif ($vm.Name -ne "metasploitable"){

Start-VM -VM $vm
echo "Starting $vm.Name..."

}
}

echo 'All virtual machines have been started. You should see two desktop windows appear shortly. If they do not appear within two minutes, right-click StartLabAgain on the Desktop and selet "Run with PowerShell".'
pause