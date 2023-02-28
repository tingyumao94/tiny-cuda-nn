cmake . -B build
cmake --build build --config RelWithDebInfo -j

cd bindings/torch
rm -rf *.egg-info
rm -rf src
rm -rf dist
rm -rf build 
python3 setup.py install --user
# pip3 install -e . --user
cd ../../