plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.fruit_app"
    
    // بناءً على الصورة الأولى: المكتبة بتطلب 35 كحد أدنى الآن
    compileSdk = 35 
    ndkVersion = flutter.ndkVersion

    compileOptions {
        // تفعيل الـ Desugaring ضروري جداً للإشعارات المجدولة
        isCoreLibraryDesugaringEnabled = true
        
        // بناءً على الصور: تم التحديث لـ Java 11
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        // برضه لازم Kotlin يكلم Java 11
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.fruit_app"
        minSdk = flutter.minSdkVersion 
        targetSdk = 35 // خليه زي الـ compileSdk
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        
        // بناءً على الصور: تفعيل MultiDex عشان التطبيق مايضربش بسبب كثرة المكتبات
        multiDexEnabled = true 
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

dependencies {
    // 1. مكتبة Desugaring (النسخة الحديثة 2.1.4 كما في الصور)
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")

    // 2. مكتبات مطلوبة لحل مشكلة تعارض (كما في الصورة الثالثة والرابعة)
    // Flutter issue #110658 fix
    implementation("androidx.window:window:1.0.0")
    implementation("androidx.window:window-java:1.0.0")
}

flutter {
    source = "../.."
}
