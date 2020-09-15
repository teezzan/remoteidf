# git clone https://github.com/teezzan/blink_idf.git
GIT_REPO=$1
GIT_REPO_NAME=$2
git clone $GIT_REPO
cd ./$GIT_REPO_NAME
idf.py build
cd ./build
zip bin.zip *.bin
curl -F "file=@bin.zip" https://file.io
exit
