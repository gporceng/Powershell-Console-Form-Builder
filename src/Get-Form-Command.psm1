function Get-Form-Command {
    param(
        [Parameter(Mandatory=$false)]
        [string]$Run,
        [Parameter(Mandatory=$false)]
        [string]$Example,
        [Parameter(Mandatory=$false)]
        [string]$Copy,
        [Parameter(Mandatory=$false)]
        [string]$Desc,
        [Parameter(Mandatory=$false)]
        [string]$Like,
        [Parameter(Mandatory=$false)]
        [switch]$All
    )


    #Defining the headder text
    $Version = "0.0.0"
    $Title = "Get-Form-Command ---Version $Version"
    $LineBr = "------------------------------------------------------"
    $PathToFiles = "C:\Users\gregp\Life\Sandbox\Powershell_Projects\switchblade\Powershell_Console_Form_Builder\src\"
    
    #Running the Form Snip that has been specified in the -Run parameter     
    if ($Run) {   

        #Display header
        Write-Output "`n" | Out-Default
        Write-Output $Title | Out-Default
        Write-Output $LineBr | Out-Default
        Write-Output "`n" | Out-Default
        Write-Output "RUNNING EXAMPLE: " + $Run | Out-Default

        #Execute Form Snip
        $Path = $PathToFiles + 'Objects\' + $Run + "\" + $Run + ".ps1"
        & $Path
        Write-Output $Run | Out-Default
        Write-Output $Path | Out-Default
        Write-Output "`n" | Out-Default
        Write-Output $LineBr | Out-Default
        Write-Output "`n" | Out-Default
    }

    #Displays the code for the Form Snip that has been specified in the -Run parameter
    if ($Example) {

        #Display header
        Write-Output "`n" | Out-Default
        Write-Output $Title | Out-Default
        Write-Output "SHOWING EXAMPLE: $Example" | Out-Default
        Write-Output $LineBr | Out-Default
        Write-Output "`n" | Out-Default

        $Path = 'Objects\' + $Example + "\" + $Example + ".ps1"
        Get-Content $Path | Write-Output | Out-Default

        #Display Description of Form Snip
        $Path = $PathToFiles + 'Objects\' + $Example + "\desc.txt"
        Get-Content $Path | Write-Output | Out-Default

        Write-Output "`n" | Out-Default
        Write-Output $LineBr | Out-Default
        Write-Output "`n" | Out-Default
    }


    #Displays the description for the Form Snip that has been specified in the -Desc parameter
    if ($Desc) {
        $Path = $PathToFiles + 'Objects\' + $Desc + "\desc.txt"
        Get-Content $Path | Write-Output | Out-Default
    }


    #Pulls the specified snipped into the clipboard
    if ($Copy) {
        $Path = $PathToFiles + 'Objects\' + $Copy + "\" + $Copy + ".ps1"
        Get-Content $Path | Set-Clipboard
    }

    if ($Like) {
        Get-ChildItem ./Objects *$Like* | Select Name
    }

    if ($All) {
        Get-ChildItem ./Objects | Select Name
    }


}

<#
Get-FormCommand -Run 'Objects\Button\Button.ps1'
Get-FormCommand -Example 'Objects\Button\desc.txt'
Get-FormCommand -Copy 'Objects\Button\Button.ps1'
#>

#Get-Form-Command -Example "Button"
#Get-Form-Command -Run "Button"
#Get-Form-Command -Copy "Button"

Get-Form-Command -Like "Lab"

<#
Need to add the funcitonality that would allow the file paths to be referenced once the module is installed.

This could be setup by the end user itself...ideally it'd be nice to run immedietly after the module has been installed.
#>