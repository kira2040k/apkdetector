JAVA=$(strings $1 | grep "META-INF/kotlin-stdlib")
if [  "$JAVA" ]
then
    echo "JAVA"
    
fi
REACT=$(strings $1 | grep "reactnative") 
if [  "$REACT" ]
then
    echo "REACT native javascript"    
    
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
   
fi
