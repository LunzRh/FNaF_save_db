$files = @("freddy", "freddy2", "freddy3", "fn4", "sl")

if (-NOT(Test-Path $env:appdata\MMFApplications)){
	Write-Output " > Creating MMFApplications directory ..."
	New-Item -Path $env:appdata\MMFApplications -ItemType Directory
}

foreach ($i in $files){
	Invoke-WebRequest -Uri "https://github.com/LunzRh/Fnaf-save-cheat/tree/main/fnaf-saves/$i" -OutFile $i
	Move-Item $i $env:appdata\MMFApplications\ -Force
}
Write-Output " > Done."
