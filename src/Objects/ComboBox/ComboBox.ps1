Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form

$form.Text = "Hello World Form"

$form.Width = 200

$form.Height = 150

$combobox = New-Object System.Windows.Forms.ComboBox

$combobox.Width = 100

$combobox.Height = 30

$combobox.Location = New-Object System.Drawing.Point(50,50)

$combobox.Items.Add("Hello")

$combobox.Items.Add("World")

$combobox.SelectedIndexChanged={[System.Windows.Forms.MessageBox]::Show("Hello World!")}

$form.Controls.Add($combobox)

$form.ShowDialog()
