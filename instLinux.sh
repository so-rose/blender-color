bPath="$1"

if [ -z "$bPath" ]; then bPath="$HOME/subhome/owncloud/blender/builds/stable/2.78"; fi

rm -rf "$bPath/datafiles/colormanagement"
mkdir "$bPath/datafiles/colormanagement"
cp -r config.ocio looks luts "$bPath/datafiles/colormanagement/"
