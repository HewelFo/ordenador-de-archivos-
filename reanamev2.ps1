$imgjpg = @(Get-ChildItem *.jpg, *.png)
$orde = 0
ForEach($itm in $imgjpg) {
    $orde++
    if($itm.Extension -ilike ".jpg"){
        Rename-Item $itm -NewName "WallPaper $orde.jpg"
    }else{
        Rename-Item $itm -NewName "WallPaper $orde.png"
    }
}