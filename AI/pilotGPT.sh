mkdir -p /home/projects
cd /home/projects
git clone https://github.com/Pythagora-io/gpt-pilot.git
cd gpt-pilot

# Some extra help
curl https://raw.githubusercontent.com/gbrian/yointly-favlists/main/AI/pilotGPT.md > yointly-pilotGPT.md

# Setup environment
python3 -m venv pilot-env
source pilot-env/bin/activate
# codx debian needs to install libpq-dev
apt install-y libpq-dev python3-dev python3-psycopg2
#
pip install -r requirements.txt

cd pilot
mv .env.example .env
python db_init.py
