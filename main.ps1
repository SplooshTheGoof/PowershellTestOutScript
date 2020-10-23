function Show-User-Menu
{
     param (
           [string]$Title = 'User Menu'
     )
     cls
     Write-Host "================ $Title ================"
    
     Write-Host "1: Press '1' for System Admin."
     Write-Host "2: Press '2' Security Admin."
     Write-Host "Q: Press 'Q' to quit/ Exit."
}

function Show-System-Admin-Menu
{
     param (
           [string]$Title = 'Process function'
     )
     cls
     Write-Host "================ $Title ================"
    
     Write-Host "1: Press '1' for Listing running processes."
     Write-Host "2: Press '2' for Listing running services."
     Write-Host "Q: Press 'Q' to quit/ Exit."
}
function Process-Show
{
	


}


function system-admin
{
	do
	{
		 Show-System-Admin-Menu
		 $input = Read-Host "Please make a selection"
		 switch ($input)
		 {
			   '1' {
					cls
					'You chose System Admin'
			   } '2' {
					cls
					'You chose Security Admin'
			   } 'q' {
					return
			   }
		 }
		 pause
	}
	until ($input -eq 'q')
}

function Main
{
	do
	{
		 Show-User-Menu
		 $input = Read-Host "Please make a selection"
		 switch ($input)
		 {
			   '1' {
					cls
					'You chose System Admin'
			   } '2' {
					cls
					'You chose Security Admin'
			   } 'q' {
					return
			   }
		 }
		 pause
	}
	until ($input -eq 'q')
}