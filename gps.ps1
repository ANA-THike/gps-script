

Add-Type -AssemblyName System.Device
$Geo = New-Object System.Device.Location.GeoCoordinateWatcher

# Start the GeoCoordinateWatcher
$Geo.Start()

# Wait for the GeoCoordinateWatcher to retrieve location data
Start-Sleep -Seconds 5

# Check if the position is initialized and display the latitude and longitude
if ($Geo.Position.Location.IsUnknown) {
    Write-Output "Location data is not available."
} else {
    Write-Output "Latitude: $($Geo.Position.Location.Latitude)"
    Write-Output "Longitude: $($Geo.Position.Location.Longitude)"
}

# Stop the GeoCoordinateWatcher
$Geo.Stop()
