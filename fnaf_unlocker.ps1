# Fnaf saves
$files = @("freddy", "freddy2", "freddy3", "fn4", "sl")

# Download fnaf save files B)
foreach ($i in $files){
	Invoke-WebRequest "https://github.com/LunzRh/Fnaf-save-cheat/tree/main/fnaf-saves/$i"
}

if (-NOT(Test-Path $env:appdata\MMFApplications)){
	Write-Output " > Creating MMFApplications directory ..."
	New-Item -Path $env:appdata\MMFApplications -ItemType Directory
}

foreach ($j in $files){
	Move-Item $j $env:appdata\MMFApplications\ -Force
}
Write-Output " > Done."

