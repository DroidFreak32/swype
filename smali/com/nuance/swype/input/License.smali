.class public Lcom/nuance/swype/input/License;
.super Ljava/lang/Object;
.source "License.java"


# static fields
.field public static final DEVICE_ANDROID_ID:Ljava/lang/String; = "device_android_id"

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final DEVICE_PROPERTIES:[Ljava/lang/String;

.field public static final DEVICE_SERIAL:Ljava/lang/String; = "device_serial"

.field public static final DEVICE_STATUS:Ljava/lang/String; = "DEVICE_STATUS"

.field public static final DEVICE_STATUS_DISABLED:Ljava/lang/String; = "DISABLED"

.field public static final DEVICE_STATUS_ENABLED:Ljava/lang/String; = "ENABLED"

.field public static final LICENSE_FILE:Ljava/lang/String; = "license.dat"

.field private static final LICENSE_INVALID:I = 0x0

.field private static final LICENSE_UNKNOWN:I = 0x2

.field private static final LICENSE_VALID:I = 0x1

.field private static final MAX_DELAYED_PROPERTY_CHECK:I = 0x64

.field private static final OTHER_KNOWN_PROPERTIES:[Ljava/lang/String;

.field public static final SWYPE_SWIB:Ljava/lang/String; = "SWIB"

.field private static delayed_property_check_count:I

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private isLicenseCheckComplete:Z

.field private isLicenseValid:Z

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private swib:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    const-string v0, "License"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/License;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.os.Build.ID"

    aput-object v1, v0, v3

    const-string v1, "android.os.Build.PRODUCT"

    aput-object v1, v0, v4

    const-string v1, "android.os.Build.DEVICE"

    aput-object v1, v0, v5

    const-string v1, "android.os.Build.BOARD"

    aput-object v1, v0, v6

    const-string v1, "android.os.Build.BRAND"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.os.Build.MODEL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "device_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "device_serial"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "device_android_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/License;->DEVICE_PROPERTIES:[Ljava/lang/String;

    .line 72
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "LICENSE_EXPIRATION"

    aput-object v1, v0, v3

    const-string v1, "LICENSE_CHECK_THRESHOLD"

    aput-object v1, v0, v4

    const-string v1, "SWIB"

    aput-object v1, v0, v5

    const-string v1, "DEVICE_STATUS"

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/swype/input/License;->OTHER_KNOWN_PROPERTIES:[Ljava/lang/String;

    .line 91
    sput v3, Lcom/nuance/swype/input/License;->delayed_property_check_count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/License;->properties:Ljava/util/Map;

    .line 114
    return-void
.end method

.method private addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/License;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public static bytesToStr([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v0, "hexString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 360
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lcom/nuance/swype/input/License;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private canPropertyCheckDelayed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static createFromDigest([B)Lcom/nuance/swype/input/License;
    .locals 2
    .param p0, "digest"    # [B

    .prologue
    .line 173
    invoke-static {p0}, Lcom/nuance/swype/connect/util/EncryptUtils;->decrypt([B)[B

    move-result-object v0

    .line 174
    .local v0, "message":[B
    if-eqz v0, :cond_0

    .line 175
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/nuance/swype/input/License;->createFromString(Ljava/lang/String;)Lcom/nuance/swype/input/License;

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/nuance/swype/input/License;
    .locals 9
    .param p0, "rawText"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 138
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x1000

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 140
    .local v0, "bufReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Lcom/nuance/swype/input/License;

    invoke-direct {v1}, Lcom/nuance/swype/input/License;-><init>()V

    .line 142
    .local v1, "license":Lcom/nuance/swype/input/License;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 144
    const/16 v7, 0x3d

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 148
    .local v4, "posOfEqual":I
    if-ltz v4, :cond_0

    .line 149
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "value":Ljava/lang/String;
    invoke-direct {v1, v3, v5}, Lcom/nuance/swype/input/License;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "license":Lcom/nuance/swype/input/License;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "posOfEqual":I
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 157
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v6

    .line 162
    :goto_1
    return-object v1

    .line 160
    .restart local v1    # "license":Lcom/nuance/swype/input/License;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    move-exception v7

    move-object v1, v6

    goto :goto_1

    .end local v1    # "license":Lcom/nuance/swype/input/License;
    .end local v2    # "line":Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v1, v6

    goto :goto_1

    .line 159
    :catchall_0
    move-exception v7

    .line 160
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 162
    throw v7

    :catch_3
    move-exception v7

    move-object v1, v6

    goto :goto_1
.end method

.method private getDeviceProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v0, "android.os.Build.ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 343
    :goto_0
    return-object v0

    .line 314
    :cond_0
    const-string v0, "android.os.Build.PRODUCT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_0

    .line 316
    :cond_1
    const-string v0, "android.os.Build.DEVICE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_0

    .line 318
    :cond_2
    const-string v0, "android.os.Build.BOARD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_3
    const-string v0, "android.os.Build.BRAND"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_0

    .line 322
    :cond_4
    const-string v0, "android.os.Build.MODEL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 323
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0

    .line 324
    :cond_5
    const-string v0, "device_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 332
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 334
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_6
    const-string v0, "device_serial"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 336
    invoke-static {}, Lcom/nuance/android/compat/BuildCompat;->getSerial()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_7
    const-string v0, "device_android_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 338
    const-string v0, "android_id"

    goto :goto_0

    .line 339
    :cond_8
    const-string v0, "SWIB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 340
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLicense(Landroid/content/Context;)Lcom/nuance/swype/input/License;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 449
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v7, 0x0

    .line 450
    .local v7, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 451
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 453
    .local v9, "resource":Ljava/io/Closeable;
    :try_start_0
    const-string v11, "license.dat"

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 454
    if-eqz v7, :cond_4

    .line 455
    move-object v9, v7

    .line 456
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 457
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    move-object v9, v2

    .line 459
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 460
    .local v4, "digest":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v8

    .line 461
    .local v8, "readByte":I
    :goto_0
    if-ltz v8, :cond_0

    .line 462
    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 463
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v8

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 466
    new-instance v11, Ljava/io/IOException;

    const-string v12, "digest is empty"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "readByte":I
    :catchall_0
    move-exception v11

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz v9, :cond_1

    .line 480
    :try_start_2
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    :cond_1
    throw v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 483
    :catch_0
    move-exception v5

    .line 484
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_2
    sget-object v11, Lcom/nuance/swype/input/License;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v12, "License file not found"

    invoke-virtual {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    move-object v3, v10

    .line 490
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    return-object v3

    .line 469
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "readByte":I
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/input/License;->createFromDigest([B)Lcom/nuance/swype/input/License;

    move-result-object v3

    .line 470
    .local v3, "currentLicense":Lcom/nuance/swype/input/License;
    if-eqz v3, :cond_3

    .line 471
    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/License;->validate(Landroid/content/Context;)V

    .line 473
    :cond_3
    sget-object v11, Lcom/nuance/swype/input/License;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v12, "getLicense() return currentLicense"

    invoke-virtual {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 479
    :try_start_4
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v3    # "currentLicense":Lcom/nuance/swype/input/License;
    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "readByte":I
    :cond_4
    move-object v3, v10

    .line 477
    goto :goto_3

    .line 486
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "currentLicense":Lcom/nuance/swype/input/License;
    .restart local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "readByte":I
    :catch_1
    move-exception v6

    move-object v1, v2

    .line 487
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "currentLicense":Lcom/nuance/swype/input/License;
    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "readByte":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v6, "ex":Ljava/io/IOException;
    :goto_4
    sget-object v11, Lcom/nuance/swype/input/License;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unable to read license file: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 489
    sget-object v11, Lcom/nuance/swype/input/License;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v12, "getLicense() return null"

    invoke-virtual {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    move-object v3, v10

    .line 490
    goto :goto_3

    .line 486
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_4

    .line 483
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "currentLicense":Lcom/nuance/swype/input/License;
    .restart local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "readByte":I
    :catch_3
    move-exception v5

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 479
    .end local v3    # "currentLicense":Lcom/nuance/swype/input/License;
    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "readByte":I
    :catchall_1
    move-exception v11

    goto :goto_1
.end method

.method private isInAirplaneMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isValidProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 275
    const-string v8, "SWIB"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 276
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v3

    .line 277
    .local v3, "info":Lcom/nuance/swype/input/BuildInfo;
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->isDevBuild()Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz p3, :cond_0

    const-string v8, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 303
    .end local v3    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_0
    :goto_0
    return v6

    .line 280
    .restart local v3    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_1
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    .line 283
    goto :goto_0

    .line 285
    .end local v3    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_2
    sget-object v0, Lcom/nuance/swype/input/License;->DEVICE_PROPERTIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 286
    .local v5, "prop":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/License;->getDeviceProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "deviceProperty":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    .line 289
    goto :goto_0

    .line 285
    .end local v1    # "deviceProperty":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 297
    .end local v5    # "prop":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/nuance/swype/input/License;->OTHER_KNOWN_PROPERTIES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 298
    .restart local v5    # "prop":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 299
    const/4 v6, 0x2

    goto :goto_0

    .line 297
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static md5([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    .line 396
    if-nez p0, :cond_0

    .line 397
    const-string v6, ""

    .line 419
    :goto_0
    return-object v6

    .line 401
    :cond_0
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 402
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 403
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 406
    .local v5, "messageDigest":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v3, "hexString":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 408
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "b":Ljava/lang/String;
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 414
    .end local v0    # "b":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 416
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hexString":Ljava/lang/StringBuilder;
    .end local v4    # "i":I
    .end local v5    # "messageDigest":[B
    :catch_0
    move-exception v2

    .line 417
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v6, Lcom/nuance/swype/input/License;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "Error getting the md5!!"

    invoke-virtual {v6, v7, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 419
    const-string v6, ""

    goto :goto_0
.end method

.method private setLicenseCheckCompleted(Z)V
    .locals 1
    .param p1, "isValid"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/nuance/swype/input/License;->isLicenseValid:Z

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/License;->isLicenseCheckComplete:Z

    .line 438
    return-void
.end method

.method public static strToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 368
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 369
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 370
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 371
    and-int/lit16 v0, v3, 0xff

    .line 372
    .local v0, "high":I
    div-int/lit8 v3, v1, 0x2

    int-to-byte v4, v0

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 376
    .end local v0    # "high":I
    :catch_0
    move-exception v3

    const/4 v2, 0x0

    .end local v2    # "result":[B
    :cond_0
    return-object v2
.end method

.method public static toHex(I)Ljava/lang/String;
    .locals 3
    .param p0, "d"    # I

    .prologue
    .line 382
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "hex":Ljava/lang/String;
    const/16 v1, 0x10

    if-ge p0, v1, :cond_0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .end local v0    # "hex":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/License;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSWIB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nuance/swype/input/License;->swib:Ljava/lang/String;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nuance/swype/input/License;->properties:Ljava/util/Map;

    const-string v1, "DEVICE_STATUS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/License;->properties:Ljava/util/Map;

    const-string v1, "DEVICE_STATUS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/nuance/swype/input/License;->isLicenseCheckComplete:Z

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/License;->validate(Landroid/content/Context;)V

    .line 200
    :cond_0
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isLicensingOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/License;->isLicenseValid:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/nuance/swype/input/License;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/nuance/swype/input/License;->properties:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 187
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public validate(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 236
    iput-boolean v6, p0, Lcom/nuance/swype/input/License;->isLicenseCheckComplete:Z

    .line 237
    iget-object v2, p0, Lcom/nuance/swype/input/License;->properties:Ljava/util/Map;

    const-string v3, "SWIB"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/swype/input/License;->swib:Ljava/lang/String;

    .line 238
    sget-object v2, Lcom/nuance/swype/input/License;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SWIB:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/License;->swib:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 239
    iget-object v2, p0, Lcom/nuance/swype/input/License;->properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    .local v1, "propertyName":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/License;->properties:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/nuance/swype/input/License;->isValidProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 243
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/License;->canPropertyCheckDelayed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/nuance/swype/input/License;->delayed_property_check_count:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 245
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/License;->isInAirplaneMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    iput-boolean v5, p0, Lcom/nuance/swype/input/License;->isLicenseValid:Z

    .line 266
    .end local v1    # "propertyName":Ljava/lang/String;
    :goto_0
    return-void

    .line 253
    .restart local v1    # "propertyName":Ljava/lang/String;
    :cond_1
    sget v2, Lcom/nuance/swype/input/License;->delayed_property_check_count:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/nuance/swype/input/License;->delayed_property_check_count:I

    .line 254
    iput-boolean v5, p0, Lcom/nuance/swype/input/License;->isLicenseValid:Z

    goto :goto_0

    .line 258
    :cond_2
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/License;->setLicenseCheckCompleted(Z)V

    goto :goto_0

    .line 265
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v5}, Lcom/nuance/swype/input/License;->setLicenseCheckCompleted(Z)V

    goto :goto_0
.end method
