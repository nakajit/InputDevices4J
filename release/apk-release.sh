# if you want to do this script, you should run 'export -f gettop'
SIGNAPK_DIR=`gettop`/out/host/linux-x86/framework
KEY_DIR=`gettop`/build/target/product/security
PACKAGE_NAME=InputDevices4J
java -jar $SIGNAPK_DIR/signapk.jar $KEY_DIR/private.x509.pem $KEY_DIR/private.pk8 $PACKAGE_NAME-release-unsigned.apk $PACKAGE_NAME-release-unaligned.apk
zipalign -f -v 4 $PACKAGE_NAME-release-unaligned.apk $PACKAGE_NAME.apk
