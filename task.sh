git clone https://github.com/espressif/esp-idf-template.git
mv send.py ./esp-idf-template
cd ./esp-idf-template
idf.py build
python3 send.py
