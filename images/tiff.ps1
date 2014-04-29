$tool = 'C:\Program Files (x86)\gs\gs9.10\bin\gswin32c.exe'
$pdfs = get-childitem . -recurse | where {$_.Extension -match "pdf"}

foreach($pdf in $pdfs)
{

    $tiff = $pdf.FullName.split('.')[0] + '.tiff'
    
        'Processing ' + $pdf.Name        
        $param = "-sOutputFile=$tiff"
        & $tool -q -dNOPAUSE -sDEVICE=tiff12nc $param -r300 $pdf.FullName -c quit
    
}