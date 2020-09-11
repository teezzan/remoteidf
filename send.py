import os
import zipfile
import requests

def zipdir(path, ziph):
    # ziph is zipfile handle
    for root, dirs, files in os.walk(path):
        for file in files:
            ziph.write(os.path.join(root, file))

if __name__ == '__main__':
    zipfile.ZipFile('build.zip', mode='w').write("build.bin")
    with open('build.zip', 'rb') as f:
        r = ('http://teetodo.herokuapp.com/api/file', {'file': f})


    