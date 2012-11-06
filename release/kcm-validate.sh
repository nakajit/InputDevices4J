# if you want to do this script, you should run 'export -f gettop'
# Validate all key maps.
VALIDATOR_DIR=`gettop`/out/host/linux-x86/bin
KEYMAPS_DIR=../res/raw
$VALIDATOR_DIR/validatekeymaps $KEYMAPS_DIR/*.kcm
