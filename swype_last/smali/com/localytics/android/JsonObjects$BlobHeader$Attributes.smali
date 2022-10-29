.class final Lcom/localytics/android/JsonObjects$BlobHeader$Attributes;
.super Ljava/lang/Object;
.source "JsonObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/JsonObjects$BlobHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Attributes"
.end annotation


# static fields
.field static final KEY_CLIENT_APP_VERSION:Ljava/lang/String; = "av"

.field static final KEY_CURRENT_ANDROID_ID:Ljava/lang/String; = "caid"

.field static final KEY_DATA_CONNECTION:Ljava/lang/String; = "dac"

.field static final KEY_DEVICE_ADVERTISING_ID:Ljava/lang/String; = "gadid"

.field static final KEY_DEVICE_ANDROID_ID:Ljava/lang/String; = "aid"

.field static final KEY_DEVICE_ANDROID_ID_HASH:Ljava/lang/String; = "du"

.field static final KEY_DEVICE_COUNTRY:Ljava/lang/String; = "dc"

.field static final KEY_DEVICE_MANUFACTURER:Ljava/lang/String; = "dma"

.field static final KEY_DEVICE_MODEL:Ljava/lang/String; = "dmo"

.field static final KEY_DEVICE_OS_VERSION:Ljava/lang/String; = "dov"

.field static final KEY_DEVICE_PLATFORM:Ljava/lang/String; = "dp"

.field static final KEY_DEVICE_SDK_LEVEL:Ljava/lang/String; = "dsdk"

.field static final KEY_DEVICE_SERIAL_HASH:Ljava/lang/String; = "dms"

.field static final KEY_DEVICE_TIMEZONE:Ljava/lang/String; = "tz"

.field static final KEY_FB_COOKIE:Ljava/lang/String; = "fbat"

.field static final KEY_GOOGLE_PLAY_ATTRIBUTION:Ljava/lang/String; = "aurl"

.field static final KEY_LEGACY_ADVERTISING_ID:Ljava/lang/String; = "gcadid"

.field static final KEY_LIMIT_AD_TRACKING:Ljava/lang/String; = "lad"

.field static final KEY_LOCALE_COUNTRY:Ljava/lang/String; = "dlc"

.field static final KEY_LOCALE_LANGUAGE:Ljava/lang/String; = "dll"

.field static final KEY_LOCALYTICS_API_KEY:Ljava/lang/String; = "au"

.field static final KEY_LOCALYTICS_CLIENT_LIBRARY_VERSION:Ljava/lang/String; = "lv"

.field static final KEY_LOCALYTICS_DATA_TYPE:Ljava/lang/String; = "dt"

.field static final KEY_LOCALYTICS_INSTALLATION_ID:Ljava/lang/String; = "iu"

.field static final KEY_LOCATION_PERMISSION_GRANTED:Ljava/lang/String; = "lpg"

.field static final KEY_NETWORK_CARRIER:Ljava/lang/String; = "nca"

.field static final KEY_NETWORK_COUNTRY:Ljava/lang/String; = "nc"

.field static final KEY_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "ne"

.field static final KEY_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field static final KEY_PUSH_ID:Ljava/lang/String; = "push"

.field static final VALUE_DATA_TYPE:Ljava/lang/String; = "a"

.field static final VALUE_PLATFORM:Ljava/lang/String; = "Android"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
