$start_num = 38
Get-ChildItem -Filter "Image*.jpg" | Sort-Object Name | ForEach-Object {
    $new_name = "$start_num.jpg"
    Rename-Item $_.FullName $new_name
    $start_num++
}
