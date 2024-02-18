$files = @("freddy", "freddy2", "freddy3", "fn4", "sl")

if (-NOT(Test-Path $env:appdata\MMFApplications)){
	Write-Output " > Creating MMFApplications directory ..."
	New-Item -Path $env:appdata\MMFApplications -ItemType Directory
}

foreach ($i in $files){
 $url = "https://raw.githubusercontent.com/LunzRh/Fnaf-save-cheat/main/fnaf-saves/" + $i
	Invoke-WebRequest -Uri $url -OutFile $i
	Move-Item $i $env:appdata\MMFApplications\ -Force
}

Write-Output " > Done."
