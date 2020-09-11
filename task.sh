git clone https://github.com/teezzan/blink_idf.git
mv send.py ./blink_idf
cd ./blink_idf
idf.py build
mv *.bin  build.bin
python3 send.py

