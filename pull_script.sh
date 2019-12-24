export BRANCH=master # Environment variable for selecting branch ---> Initialized for demo purposes
cd ~
git clone https://github.com/adityapai14/Sample-Node.git 2>/dev/null # For running first time
cd ~/Sample-Node
git pull
git checkout $BRANCH 
mkdir ~/Sample_Mount 2>/dev/null # Bind mount for app is Sample_Mount
mkdir ~/Sample_Mount/$BRANCH 2>/dev/null
rsync -rvh ./* ~/Sample_Mount/$BRANCH
cd ~/Sample_Mount/$BRANCH
npm install




