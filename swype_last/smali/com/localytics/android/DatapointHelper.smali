.class final Lcom/localytics/android/DatapointHelper;
.super Ljava/lang/Object;
.source "DatapointHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/DatapointHelper$AdvertisingInfo;
    }
.end annotation


# static fields
.field private static final INVALID_ANDROID_ID:Ljava/lang/String; = "9774d56d682e549c"

.field private static final LEGACY_DEVICE_ID_FILE:Ljava/lang/String; = "/localytics/device_id"

.field private static final STRING_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/localytics/android/DatapointHelper;->STRING_CLASS_ARRAY:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getAdvertisingInfo(Landroid/content/Context;)Lcom/localytics/android/DatapointHelper$AdvertisingInfo;
    .registers 8
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 233
    :try_start_1
    invoke-static {}, Lcom/localytics/android/PlayServicesUtils;->isAdvertisingAvailable()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 235
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 236
    .local v1, "advertisingIdInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    if-eqz v1, :cond_29

    .line 238
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "advertisingId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    .line 240
    .local v3, "isLimit":Z
    new-instance v4, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v0, v5

    .end local v0    # "advertisingId":Ljava/lang/String;
    :cond_1e
    invoke-direct {v4, v0, v3}, Lcom/localytics/android/DatapointHelper$AdvertisingInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    .line 249
    .end local v1    # "advertisingIdInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .end local v3    # "isLimit":Z
    :goto_21
    return-object v4

    .line 244
    :catch_22
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Failed to get advertising info"

    invoke-static {v4, v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_29
    move-object v4, v5

    .line 249
    goto :goto_21
.end method

.method static getAndroidIdHashOrNull(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-static {p0}, Lcom/localytics/android/DatapointHelper;->getAndroidIdOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "androidId":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method static getAndroidIdOrNull(Landroid/content/Context;)Ljava/lang/String;
    .registers 13
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 143
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/localytics/device_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v4, "fp":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_5a

    .line 148
    const/4 v6, 0x0

    .line 151
    .local v6, "reader":Ljava/io/BufferedReader;
    const/16 v8, 0x64

    :try_start_30
    new-array v1, v8, [C

    .line 153
    .local v1, "buf":[C
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v9, 0x80

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_3e} :catch_4e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_76

    .line 154
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_3e
    invoke-virtual {v7, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    .line 155
    .local v5, "numRead":I
    const/4 v8, 0x0

    invoke-static {v1, v8, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "deviceId":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_4a} :catch_8d
    .catchall {:try_start_3e .. :try_end_4a} :catchall_8a

    .line 167
    :try_start_4a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_87

    .line 183
    .end local v1    # "buf":[C
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v5    # "numRead":I
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_4d
    return-object v2

    .line 159
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_4e
    move-exception v3

    .line 161
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_4f
    :try_start_4f
    const-string/jumbo v8, "Caught exception"

    invoke-static {v8, v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_76

    .line 165
    if-eqz v6, :cond_5a

    .line 167
    :try_start_57
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_7d

    .line 177
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "androidId":Ljava/lang/String;
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "9774d56d682e549c"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 180
    :cond_74
    const/4 v2, 0x0

    goto :goto_4d

    .line 165
    .end local v0    # "androidId":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_76
    move-exception v8

    :goto_77
    if-eqz v6, :cond_7c

    .line 167
    :try_start_79
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_7c
    throw v8
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7d} :catch_7d

    .line 171
    :catch_7d
    move-exception v3

    .line 173
    .local v3, "e":Ljava/io/IOException;
    :goto_7e
    const-string/jumbo v8, "Caught exception"

    invoke-static {v8, v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "androidId":Ljava/lang/String;
    :cond_85
    move-object v2, v0

    .line 183
    goto :goto_4d

    .line 171
    .end local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "buf":[C
    .restart local v2    # "deviceId":Ljava/lang/String;
    .restart local v5    # "numRead":I
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_87
    move-exception v3

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_7e

    .line 165
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v5    # "numRead":I
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_8a
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_77

    .line 159
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_8d
    move-exception v3

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_4f
.end method

.method static getApiLevel()I
    .registers 4

    .prologue
    .line 96
    :try_start_0
    const-class v2, Landroid/os/Build$VERSION;

    .line 97
    const-string/jumbo v3, "SDK"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result v2

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :goto_14
    return v2

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Caught exception"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :try_start_1c
    const-class v2, Landroid/os/Build$VERSION;

    .line 108
    const-string/jumbo v3, "SDK_INT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_29} :catch_2b

    move-result v2

    goto :goto_14

    .line 110
    :catch_2b
    move-exception v1

    .line 112
    .local v1, "ignore":Ljava/lang/Exception;
    const-string/jumbo v2, "Caught exception"

    invoke-static {v2, v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const/4 v2, 0x3

    goto :goto_14
.end method

.method static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 365
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 370
    .local v2, "versionName":Ljava/lang/String;
    if-nez v2, :cond_1a

    .line 372
    const-string/jumbo v3, "versionName was null--is a versionName attribute set in the Android Manifest?"

    invoke-static {v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 374
    const-string/jumbo v2, "unknown"
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_1a} :catch_1b

    .line 377
    .end local v2    # "versionName":Ljava/lang/String;
    :cond_1a
    return-object v2

    .line 379
    :catch_1b
    move-exception v0

    .line 384
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static getFBAttribution(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 323
    const/4 v8, 0x0

    .line 325
    .local v8, "facebookAttribution":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 328
    .local v1, "uri":Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aid"

    aput-object v4, v2, v3

    .line 329
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 332
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_19
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 333
    if-eqz v6, :cond_30

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 335
    const-string/jumbo v3, "aid"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2f} :catch_36
    .catchall {:try_start_19 .. :try_end_2f} :catchall_43

    move-result-object v8

    .line 344
    :cond_30
    if-eqz v6, :cond_35

    .line 346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_35
    :goto_35
    return-object v8

    .line 338
    :catch_36
    move-exception v7

    .line 340
    .local v7, "e":Ljava/lang/Exception;
    :try_start_37
    const-string/jumbo v3, "Error reading FB attribution"

    invoke-static {v3, v7}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_43

    .line 344
    if-eqz v6, :cond_35

    .line 346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_35

    .line 344
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_43
    move-exception v3

    if-eqz v6, :cond_49

    .line 346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_49
    throw v3
.end method

.method static getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 427
    if-nez p0, :cond_b

    .line 429
    const-string/jumbo v5, "Context passed to getLocalyticsAppKeyOrNull() is NULL. Please pass a valid context."

    invoke-static {v5}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    move-object v3, v4

    .line 454
    :goto_a
    return-object v3

    .line 435
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 436
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 437
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_38

    .line 439
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "LOCALYTICS_APP_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 440
    .local v3, "metaData":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_38

    .line 442
    check-cast v3, Ljava/lang/String;
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_30} :catch_31

    goto :goto_a

    .line 446
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "metaData":Ljava/lang/Object;
    :catch_31
    move-exception v2

    .line 451
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appContext":Landroid/content/Context;
    .restart local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_38
    move-object v3, v4

    .line 454
    goto :goto_a
.end method

.method static getLocalyticsNotificationIcon(Landroid/content/Context;)I
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 465
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 466
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v2, :cond_1b

    .line 468
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 469
    .local v0, "appIcon":I
    invoke-static {p0, v0}, Lcom/localytics/android/DatapointHelper;->isValidResourceId(Landroid/content/Context;I)Z
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_16} :catch_1a

    move-result v2

    if-eqz v2, :cond_1b

    .line 478
    .end local v0    # "appIcon":I
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_19
    return v0

    :catch_1a
    move-exception v2

    :cond_1b
    const v0, 0x1080093

    goto :goto_19
.end method

.method static getLocalyticsRollupKeyOrNull(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 497
    const/4 v4, 0x0

    .line 501
    .local v4, "rollupKey":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 502
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_24

    .line 504
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "LOCALYTICS_ROLLUP_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 505
    .local v3, "metaData":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_24

    .line 507
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_24} :catch_25

    .line 519
    .end local v3    # "metaData":Ljava/lang/Object;
    :cond_24
    return-object v4

    .line 511
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_25
    move-exception v2

    .line 516
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method static getManufacturer()Ljava/lang/String;
    .registers 1

    .prologue
    .line 313
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method static getNetworkType(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 280
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2b

    .line 282
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 283
    .local v1, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 285
    const-string/jumbo v2, "wifi"

    .line 302
    .end local v1    # "wifiInfo":Landroid/net/NetworkInfo;
    :goto_2a
    return-object v2

    .line 290
    :cond_2b
    const-string/jumbo v2, "Application does not have one more more of the following permissions: ACCESS_WIFI_STATE. Determining Wi-Fi connectivity is unavailable"

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_31} :catch_46
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_31} :catch_4e

    .line 302
    :cond_31
    :goto_31
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "android_network_type_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 293
    :catch_46
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "Application does not have the permission ACCESS_NETWORK_STATE. Determining Wi-Fi connectivity is unavailable"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 297
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_4e
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "NullPointerException in getNetworkType()"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method static getSerialNumberHashOrNull()Ljava/lang/String;
    .registers 1

    .prologue
    .line 267
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v0}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 208
    :try_start_0
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 209
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 210
    .local v0, "digest":[B
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 211
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1d} :catch_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1d} :catch_26

    move-result-object v2

    return-object v2

    .line 213
    .end local v0    # "digest":[B
    :catch_1f
    move-exception v1

    .line 215
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 217
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_26
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static getTelephonyDeviceIdOrNull(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 403
    const-string/jumbo v1, "Device does not have telephony; cannot read telephony id"

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->i(Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x0

    .line 422
    :goto_1c
    return-object v0

    .line 411
    :cond_1d
    const/4 v0, 0x0

    .line 412
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3d

    .line 414
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 415
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 416
    goto :goto_1c

    .line 419
    :cond_3d
    const-string/jumbo v1, "Application does not have permission READ_PHONE_STATE; determining device id is not possible.  Please consider requesting READ_PHONE_STATE in the AndroidManifest"

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_1c
.end method

.method static isLocationPermissionGranted(Landroid/content/Context;)I
    .registers 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 524
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 525
    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static isValidResourceId(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 485
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    .line 486
    const/4 v0, 0x1

    .line 490
    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method static isWifiEnabled(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 535
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2e

    .line 538
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 540
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_2a

    .line 542
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    const-string/jumbo v2, "Yes"

    .line 562
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_25
    return-object v2

    .line 542
    .restart local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_26
    const-string/jumbo v2, "No"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_38

    goto :goto_25

    .line 546
    :cond_2a
    const-string/jumbo v2, "Wifi Manager is Null"

    goto :goto_25

    .line 552
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2e
    :try_start_2e
    const-string/jumbo v2, "Application does not have one more more of the following permissions: ACCESS_WIFI_STATE. Determining Wi-Fi connectivity is unavailable"

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 554
    const-string/jumbo v2, "Permissions Not Granted"
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_25

    .line 557
    :catch_38
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NullPointerException in isWifiEnabled()"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    const-string/jumbo v2, "Permissions Not Granted"

    goto :goto_25
.end method
