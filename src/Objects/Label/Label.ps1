Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form

$form.Text = "Hello World Form"

$form.Width = 200

$form.Height = 150

$label = New-Object System.Windows.Forms.Label

$label.Text = "Hello World"

$label.Width = 100

$label.Height = 30

$label.Location = New-Object System.Drawing.Point(50,50)

$form.Controls.Add($label)

$form.ShowDialog()
