$SCRIPTDIR = $PSScriptRoot
$COMPOSE_FILE="${SCRIPTDIR}\docker-compose.yml"

if ( -not (docker compose -f "$COMPOSE_FILE" ps -q $SERVICE_NAME)){
    Write-Host "Compose Project is already stopped" -ForegroundColor Green
}
docker compose -f "$COMPOSE_FILE" down --remove-orphans