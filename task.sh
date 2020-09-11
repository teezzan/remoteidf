git clone https://github.com/teezzan/blink_idf.git
mv send.py ./blink_idf
cd ./blink_idf
idf.py build
mv send.py ./build
cd ./build
mv *.bin  build.bin
pip3 install requests
python3 send.py
exit

