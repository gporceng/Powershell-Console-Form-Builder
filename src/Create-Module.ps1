Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Text = "Form Snip Builder"
$form.Size = New-Object System.Drawing.Size(500,750)


$labelZero = New-Object System.Windows.Forms.Label
$labelZero.Text = "Form Snip Builder"
$labelZero.Width = $form.Width
$labelZero.Height = 50
$labelZero.Font = New-Object System.Drawing.Font("Arial",16,[System.Drawing.FontStyle]::Bold)
$labelZero.TextAlign = "MiddleCenter"
$labelZero.Location = New-Object System.Drawing.Point(0,0)

$labelOne = New-Object System.Windows.Forms.Label
$labelOne.Text = "Title:"
$labelOne.Width = $form.Width
$labelOne.Height = 25
$labelOne.Location = New-Object System.Drawing.Point(10,50)

$textboxOne = New-Object System.Windows.Forms.TextBox
$textboxOne.Width = $form.Width - 50
$textboxOne.Height = 25
$textboxOne.Location = New-Object System.Drawing.Point(10,75)

$labelTwo = New-Object System.Windows.Forms.Label
$labelTwo.Text = "Description:"
$labelTwo.Width = $form.Width
$labelTwo.Height = 25
$labelTwo.Location = New-Object System.Drawing.Point(10,100)

$textboxTwo = New-Object System.Windows.Forms.TextBox
$textboxTwo.Width = $form.Width - 50
$textboxTwo.Height = 75
$textboxTwo.Multiline = $true
$textboxTwo.Location = New-Object System.Drawing.Point(10,125)

$labelThree = New-Object System.Windows.Forms.Label
$labelThree.Text = "Code:"
$labelThree.Width = $form.Width
$labelThree.Height = 25
$labelThree.Location = New-Object System.Drawing.Point(10,200)

$textboxThree = New-Object System.Windows.Forms.TextBox
$textboxThree.Width = $form.Width - 50
$textboxThree.Height = 250
$textboxThree.Multiline = $true
$textboxThree.Location = New-Object System.Drawing.Point(10,225)

$button = New-Object System.Windows.Forms.Button
$button.Text = "Create Form Snip"
$button.Width = 200
$button.Height = 25
$button.Location = New-Object System.Drawing.Point(150, 500)

$button.Add_Click({
    # Add code here to handle the button click event
    # For example, you can use the text in the textboxes to create a form snip
    Write-Output $textboxThree.Text | Out-Default
})

$form.Controls.Add($labelZero)
$form.Controls.Add($labelOne)
$form.Controls.Add($textboxOne)
$form.Controls.Add($labelTwo)
$form.Controls.Add($textboxTwo)
$form.Controls.Add($labelThree)
$form.Controls.Add($textboxThree)
$form.Controls.Add($button)
$form.ShowDialog() | Out-Null

