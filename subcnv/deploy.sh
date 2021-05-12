INSTALL_PREFIX=~/local
THIS_SH=`pwd`/$0
ENV_DIR=${THIS_SH%/*}/..
echo `pwd`
echo $0
mkdir -p $INSTALL_PREFIX
pushd $INSTALL_PREFIX
wget https://github.com/tindy2013/subconverter/releases/download/v0.6.4/subconverter_linux64.tar.gz
tar xf subconverter_linux64.tar.gz
cd subconverter
git apply $ENV_DIR/subcnv/subconverter.patch
popd
