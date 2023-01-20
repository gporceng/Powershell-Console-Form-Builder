Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form

$form.Text = "Hello World Form"

$form.Width = 200

$form.Height = 150

$checkbox = New-Object System.Windows.Forms.CheckBox

$checkbox.Text = "Hello World"

$checkbox.Width = 100

$checkbox.Height = 30

$checkbox.Location = New-Object System.Drawing.Point(50,50)

$checkbox.Add_CheckedChanged({[System.Windows.Forms.MessageBox]::Show("Hello World!")})

$form.Controls.Add($checkbox)

$form.ShowDialog()