if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone git@github.com:sandippshah/DQ-Shaho-MoviesBot-1.git /DQShahoMoviesBot1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQShahoMoviesBot1
fi
cd /DQShahoMoviesBot1
pip3 install -U -r requirements.txt
echo "Starting DQ-Shaho-MoviesBot-1...."
python3 bot.py
