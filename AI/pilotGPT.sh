mkdir -p /home/projects
cd /home/projects
git clone https://github.com/Pythagora-io/gpt-pilot.git
cd gpt-pilot

python3 -m venv pilot-env
source pilot-env/bin/activate
# codx debian needs to install libpq-dev
apt install-y libpq-dev
#
pip install -r requirements.txt

cd pilot
mv .env.example .env
python db_init.py