if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Joelkb/DQ-the-file-donor.git /Zoro-The-File-Donor
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Zoro-The-File-Donor
fi
cd /Zoro-0The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting Zoro...."
python3 bot.py
