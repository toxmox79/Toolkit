try {
    Add-Type -AssemblyName System.Drawing
    
    function Create-Icon {
        param (
            [int]$size,
            [string]$path
        )
    
        $bmp = New-Object System.Drawing.Bitmap($size, $size)
        $g = [System.Drawing.Graphics]::FromImage($bmp)
        
        # Background
        $color = [System.Drawing.ColorTranslator]::FromHtml("#93c01f")
        $brush = New-Object System.Drawing.SolidBrush($color)
        $g.FillRectangle($brush, 0, 0, $size, $size)
        
        # Text (AruH)
        $fontSize = [int]($size / 4)
        $font = New-Object System.Drawing.Font("Arial", $fontSize, [System.Drawing.FontStyle]::Bold)
        $textBrush = [System.Drawing.Brushes]::White
        $format = New-Object System.Drawing.StringFormat
        $format.Alignment = [System.Drawing.StringAlignment]::Center
        $format.LineAlignment = [System.Drawing.StringAlignment]::Center
        
        $rect = New-Object System.Drawing.RectangleF(0, 0, $size, $size)
        $g.DrawString("AruH", $font, $textBrush, $rect, $format)
        
        $bmp.Save($path, [System.Drawing.Imaging.ImageFormat]::Png)
        
        $g.Dispose()
        $bmp.Dispose()
        Write-Host "Created $path"
    }
    
    Create-Icon -size 192 -path "c:/Users/Thomas/Documents/Thomas/Apps/AruH_PWA/icon-192.png"
    Create-Icon -size 512 -path "c:/Users/Thomas/Documents/Thomas/Apps/AruH_PWA/icon-512.png"
}
catch {
    Write-Error $_.Exception.Message
}
