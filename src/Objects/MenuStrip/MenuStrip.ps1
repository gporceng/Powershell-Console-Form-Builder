Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form

$form.Text = "Hello World Form"

$form.Width = 300

$form.Height = 150

$menustrip = New-Object System.Windows.Forms.MenuStrip

$file = New-Object System.Windows.Forms.ToolStripMenuItem

$file.Text = "File"

$hello = New-Object System.Windows.Forms.ToolStripMenuItem

$hello.Text = "Hello"

$hello.Click={[System.Windows.Forms.MessageBox]::Show("Hello World!")}

$file.DropDownItems.Add($hello)

$menustrip.Items.Add($file)

$form.Controls.Add($menustrip)

$form.ShowDialog()
