if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/KuttappanBiju/TG-RJ /TG-RJ
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TG-RJ
fi
cd /TG-RJ
pip3 install -U -r requirements.txt
echo "Starting ROCK...."
python3 bot.py
