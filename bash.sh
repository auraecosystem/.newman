git clone https://github.com/reconurge/flowsint.git
cd flowsint

copy .env.example .env
copy .env.example flowsint-api\.env
copy .env.example flowsint-core\.env
copy .env.example flowsint-app\.env
docker compose -f docker-compose.prod.yml up -r

git clone https://github.com/reconurge/flowsint.git
cd flowsint
cp .env.example .env
# Edit .env — see "Before exposing to a network" below
docker compose -f docker-compose.prod.yml up -d
# Test core module
cd flowsint-core
uv run pytest

# Test types module
cd ../flowsint-types
uv run pytest

# Test enrichers module
cd ../flowsint-enrichers
uv run pytest

# Test API module
cd ../flowsint-api
uv run pytest
