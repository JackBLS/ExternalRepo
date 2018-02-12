#$dir = $(Get-Location).Path;

#
#git remote add origin https://jackbls:pass123@github.com/JackBLS/ExternalRepo.git
#git remote set-url origin https://jackbls:pass123@github.com/JackBLS/ExternalRepo.git
#git push -u  origin --all

#git clone git@github.com:whatever folder-name -r
Try{

	$dirPath = "C:\Git Mirror\GBG"

	if((Test-Path -Path $dirPath) -ne $true){
		New-Item -ItemType Directory -Force -Path $dirPath
	}
	cd  $dirPath
	$directoryInfo = Get-ChildItem $dirPath | Measure-Object
	if($directoryInfo.count -eq 0){
		git clone https://jackbls:pass123@github.com/JackBLS/ExternalRepo.git $dirPath
	}
	else{
		git pull 
	}

	git add .
	git tag -l "v0.1"
	git commit -m "test 01"
	git push -u  origin --all
}
Catch
{
    Write-Host  $_.Exception.Message
}
