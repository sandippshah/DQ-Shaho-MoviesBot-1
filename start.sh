if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sandippshah/DQ-Shaho-MoviesBot-1.git /DQ-Shaho-MoviesBot-1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQ-Shaho-MoviesBot-1
fi
cd /DQ-Shaho-MoviesBot-1
pip3 install -U -r requirements.txt
echo "Starting DQ-Shaho-MoviesBot-1...."
python3 bot.py
