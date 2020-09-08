# Conversion Of String From Lower Case To Upper Case Using Transliteration
upperCase() {
    echo "Upper Case: `echo $1 | tr [:lower:] [:upper:]:`"
}
