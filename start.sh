if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BLVCK-ANGEL/Zoro-the-file-donor.git /Zoro-The-File-Donor
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Zoro-The-File-Donor
fi
cd /Zoro-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting Zoro...."
python3 bot.py
