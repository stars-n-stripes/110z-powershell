#param([switch] $interactive = $true)
#if($interactive){
#pause
#}
Import-Module -Name "C:\Users\Student\Desktop\StartHere\Connect-VM.ps1"
echo "Stopping Lab..."
$vms = Get-VM

Foreach($vm in $vms){

if($vm.Name -eq "metasploitable"){
echo "Destroying $vm.Name..."
Stop-VM -Name $vm.Name -TurnOff

}
else{

Stop-VM -VM $vm -Force
echo "Destroying $vm.Name..."

}
}

