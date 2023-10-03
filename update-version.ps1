param(
	[string]$version,
	[string]$jsonPath
)
$json = Get-Content $jsonPath | ConvertFrom-Json
$json.RedundantController.Version = $version
$json | ConvertTo-Json | Set-Content $jsonPath
