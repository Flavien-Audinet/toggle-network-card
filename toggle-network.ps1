# Get the network adapter name
$adapterName = "Ethernet"

# Wait for 1 second
Start-Sleep -Seconds 3

# Disable the network adapter
Disable-NetAdapter -Name $adapterName -Confirm:$false

# Wait for 1 second
Start-Sleep -Seconds 5

# Enable the network adapter
Enable-NetAdapter -Name $adapterName -Confirm:$false

Write-Host "Le câble réseau a été désactivé et réactivé avec succès après 1 seconde."
