function Get-Form-Command {
    param(
        [Parameter(Mandatory=$false)]
        [string]$Run,
        [Parameter(Mandatory=$false)]
        [string]$Example,
        [Parameter(Mandatory=$false)]
        [string]$Copy,
        [Parameter(Mandatory=$false)]
        [string]$Desc
    )


    #Defining the headder text
    $Title = "Get-Form-Command"
    $LineBr = "------------------------------------------------------"
    
    #Running the Form Snip that has been specified in the -Run parameter     
    if ($Run) {   

        #Display header
        Write-Output $Title | Out-Default
        Write-Output $LineBr | Out-Default
        Write-Output "/n" | Out-Default
        Write-Output "RUNNING EXAMPLE: " + Run | Out-Default

        #Execute Form Snip
        $Path = 'Objects\' + $Run + "\" + $Run + ".ps1"
        & $Path
        Write-Output $Run | Out-Default
    }

    #Displays the code for the Form Snip that has been specified in the -Run parameter
    if ($Example) {

        #Display header
        Write-Output $Title | Out-Default
        Write-Output $LineBr | Out-Default
        Write-Output "/n" | Out-Default
        Write-Output "SHOWING EXAMPLE: " + Run | Out-Default

        $Path = 'Objects\' + $Example + "\" + $Example + ".ps1"
        Get-Content $Path | Write-Output | Out-Default

        #Display Description of Form Snip
        $Path = 'Objects\' + $Example + "\desc.txt"
        Get-Content $Path | Write-Output | Out-Default
    }


    #Displays the description for the Form Snip that has been specified in the -Desc parameter
    if ($Desc) {
        $Path = 'Objects\' + $Desc + "\desc.txt"
        Get-Content $Path | Write-Output | Out-Default
    }


    if ($Copy) {
        $Path = 'Objects\' + $Example + "\" + $Example + ".ps1"
        Get-Content $Copy | Set-Clipboard
    }
}

<#
Get-FormCommand -Run 'Objects\Button\Button.ps1'
Get-FormCommand -Example 'Objects\Button\desc.txt'
Get-FormCommand -Copy 'Objects\Button\Button.ps1'
#>

Get-Form-Command -Example "Button"