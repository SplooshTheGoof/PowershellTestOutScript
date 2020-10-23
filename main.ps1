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
           [string]$Title = 'Admin function'
     )
     cls
     Write-Host "================ $Title ================"
    
     Write-Host "1: Press '1' for Listing running processes."
     Write-Host "2: Press '2' for Listing running services."
     Write-Host "Q: Press 'Q' to quit/ Exit."
}
function Service-Show
{
     param (
           [string]$Title = 'Servicefunction'
     )
     cls
     Write-Host "================ $Title ================"
    
     Write-Host "1: Press '1' for Listing all running Service."
     Write-Host "2: Press '2' for Listing a single running service."
     Write-Host "Q: Press 'Q' to quit/ Exit."
}


function Process-Show
{
	$pChoice1 = Read-Host "If you wish to specify a paricular process press 1, otherwise press 2"
	switch ($pChoice1)
	{
		'1' {
		$pChoice2 = Read-Host "Please name the process you are looking for"
		$pPrint = Read-Host "If you wish to specify a output file press 1, otherwise press 2"
		switch ($pPrint)
		{
			'1'{
				$pFname = Read-Host "Please name the file you wish to print to "
				$pFname = $pFname + '.csv'
				Get-Process $pChoice2 > $pFname
			}
			'2'{
				Get-Process $pChoice2
			}
		}
		}
		'2'{
		$pPrint = Read-Host "If you wish to specify a output file press 1, otherwise press 2"
		switch ($pPrint)
			{
			'1'
				{
				$pFname = Read-Host "Please name the file you wish to print to "
				$pFname = $pFname + '.csv'
				Get-Process > $pFname
				}
			'2' 
				{
				Get-Process
				}
			}
		}
	}
	
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
					'You chose Process'
					Process-Show
			   } '2' {
					cls
					'You chose Service'
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
					system-admin
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
Main