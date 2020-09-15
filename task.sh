git clone https://github.com/teezzan/blink_idf.git
cd ./blink_idf
idf.py build
cd ./build
zip bin.zip *.bin
curl -F "file=@bin.zip" https://file.io
exit

