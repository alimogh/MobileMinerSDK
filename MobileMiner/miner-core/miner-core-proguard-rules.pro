# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/sunyuxin/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in create.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-verbose
-dontwarn
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-ignorewarnings

-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver

-keepattributes SourceFile,LineNumberTable,InnerClasses

-keep public class waterhole.miner.core.** {
    public protected *;
}

-keepclasseswithmembernames class waterhole.miner.core.** {
    native <methods>;
}

-keepclassmembers class waterhole.miner.core.** implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

-keep public class waterhole.miner.core.** implements waterhole.miner.core.NoProGuard

# Rxjava RxAndroid
-keep public class io.reactivex.** {
    public protected *;
}
-keep public class io.reactivex.android.** {
    public protected *;
}