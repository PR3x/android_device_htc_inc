CM9 for the Droid Incredible

## Info

[**XDA Discussion thread**](http://forum.xda-developers.com/showthread.php?t=1558923)

[**Rootz Wiki Thread**](http://rootzwiki.com/topic/25204-romunofficial404-cyanogenmod-9-for-the-droid-incredible-04-jun/)

## Building 

### Initialize
[Setup linux/OS X](http://source.android.com/source/initializing.html) - Please note: it must be sun-java-6, not openjdk

### Prepare to download sources
```bash
mkdir ~/cm9
cd ~/cm9/
curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > ~/bin/repo
chmod a+x ~/bin/repo
repo init -u git://github.com/CyanogenMod/android.git -b ics
```

### Finish setting up repo
```bash
wget -O .repo/local_manifest.xml https://raw.github.com/drkhd/android_device_htc_inc/ics/Manifest/local_manifest.xml
```

### Download the source
```bash
cd ~/cm9
repo sync -j16
```
NOTE: This WILL take a long time.

### Build
Make sure we're in ~/cm9...
```bash
cd ~/cm9
```
Pull in the prebuilts, like Rom Manager...
```bash
./vendor/cm/get-prebuilts
```
And build!
```bash
. build/envsetup.sh && brunch inc
```

