git clone https://github.com/auraecosystem/flowsint.git
cd flowsint
# 1. Clone the repo
git clone https://github.com/auraecosystem/Crucix.git
cd Crucix

# 2. Install dependencies (just Express)
npm install

# 3. Copy env template and add your API keys (see below)
cp .env.example .env

# 4. Start the dashboard
npm run dev
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
