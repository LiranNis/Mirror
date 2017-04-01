$7z = "C:\Program Files\7-Zip\7z.exe"
Set-Alias sz $7z
$folders = Get-ChildItem "T:\Projects\Nexus\Mirror\Python\web\packages"

for ($i = 132; $i -lt $folders.Length; $i+=2) {
    $resultPath = "T:\Projects\Nexus\Mirror\PythonA\packages\" + $folders[$i].Name + "-" + $folders[$i+1].Name + ".zip"
    sz a -tzip $resultPath $folders[$i].FullName $folders[$i+1].FullName    
}
