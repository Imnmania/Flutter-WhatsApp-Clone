### **A WhatsApp clone app with Flutter and Firebase**  
---
#### Install Firebase CLI:  
```
npm install -g firebase-tools  
```

#### Activate Firebase CLI:  
```
dart pub global activate flutterfire_cli  
flutterfire configure --project=whatsapp-clone-backend-bab1c  
```

#### Important ID's:  
```  
Platform  Firebase App Id  
android   1:586723330577:android:2d3a0001676c5e7993ffb0  
ios       1:586723330577:ios:cb78b75d6d3b579b93ffb0  
``` 

#### Android Configuration:

*[project_folder]/app/build.gradle*
```
defaultConfig {
    ...

    multiDexEnabled true
}
```
```
dependencies {
    ...

    implementation "com.android.support:multidex:2.0.1"
}

```

#### iOS Configuration
```
cd ios
pod install
sudo arch -x86_64 gem install ffi
sudo arch -x86_64 pod install
sudo arch -x86_64 pod install --repo-update
```