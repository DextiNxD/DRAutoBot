if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DextiNxD/DRAutoBot.git /DRAutoBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DRAutoBot
fi
cd /DRAutoBot
pip3 install -U -r requirements.txt
echo "Starting DRAutoBot...."
python3 bot.py
