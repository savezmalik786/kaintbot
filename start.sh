if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/savezmalik786/kaintbot.git /kaintbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /kaintbot
fi
cd /kaintbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
