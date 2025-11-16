Add-Type -AssemblyName System.Windows.Forms, System.Drawing

$screen = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds
$bmp = New-Object System.Drawing.Bitmap($screen.Width, $screen.Height)
$graphics = [System.Drawing.Graphics]::FromImage($bmp)
$graphics.CopyFromScreen($screen.Location, [System.Drawing.Point]::Empty, $screen.Size)

$path = 'c:\Users\sabri.DEV001\Desktop\DIO-CADASTRO\screenshot.png'
$bmp.Save($path)
$graphics.Dispose()
$bmp.Dispose()

Write-Host "Screenshot salvo em: $path"
