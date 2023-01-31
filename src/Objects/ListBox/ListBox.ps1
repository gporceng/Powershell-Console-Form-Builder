Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form

$form.Text = "Hello World Form"

$form.Width = 200

$form.Height = 150

$listbox = New-Object System.Windows.Forms.ListBox

$listbox.Width = 100

$listbox.Height = 50

$listbox.Location = New-Object System.Drawing.Point(50,50)

$listbox.Items.Add("Hello")

$listbox.Items.Add("World")

$listbox.SelectedIndexChanged={[System.Windows.Forms.MessageBox]::Show("Hello World!")}

$form.Controls.Add($listbox)

$form.ShowDialog()
