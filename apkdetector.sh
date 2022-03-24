JAVA=$(strings $1 | grep "META-INF/kotlin-stdlib")
if [  "$JAVA" ]
then
    echo "JAVA"
    echo "for decompile https://github.com/skylot/jadx"
fi
REACT=$(strings $1 | grep "reactnative") 
if [  "$REACT" ]
then
    echo "REACT native javascript"    
    echo "for decompile https://www.npmjs.com/package/react-native-decompiler" 
fi
flutter=$(strings $1 | grep "libflutter.so") 
if [  "$flutter" ]
then
    echo "flutter dart"     
fi

xamarin=$(strings $1 | grep "libxamarin-app") 
if [  "$xamarin" ]
then
    echo "xamarin C#"     
    echo "for decompile https://github.com/dnSpy/dnSpy"
fi
