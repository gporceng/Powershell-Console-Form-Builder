Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form

$form.Text = "Hello World Form"

$form.Width = 200

$form.Height = 150

$radiobutton1 = New-Object System.Windows.Forms.RadioButton

$radiobutton1.Text = "Hello"

$radiobutton1.Width = 100

$radiobutton1.Height = 30

$radiobutton1.Location = New-Object System.Drawing.Point(50,50)

$radiobutton2 = New-Object System.Windows.Forms.RadioButton

$radiobutton2.Text = "World"

$radiobutton2.Width = 100

$radiobutton2.Height = 30

$radiobutton2.Location = New-Object System.Drawing.Point(50,70)

$radiobutton1.CheckedChanged={[System.Windows.Forms.MessageBox]::Show("Hello")}

$radiobutton2.CheckedChanged={[System.Windows.Forms.MessageBox]::Show("World")}

$form.Controls.Add($radiobutton1)

$form.Controls.Add($radiobutton2)

$form.ShowDialog()
