.class public final Lcom/crashlytics/android/beta/DeviceTokenLoader;
.super Ljava/lang/Object;
.source "DeviceTokenLoader.java"

# interfaces
.implements Lio/fabric/sdk/android/services/cache/ValueLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/cache/ValueLoader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineDeviceToken(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    .registers 5
    .param p0, "zis"    # Ljava/util/zip/ZipInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_20

    .line 70
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "assets/com.crashlytics.android.beta/dirfactor-device-token="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const/16 v2, 0x3b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 77
    .end local v1    # "name":Ljava/lang/String;
    :goto_1f
    return-object v2

    :cond_20
    const-string/jumbo v2, ""

    goto :goto_1f
.end method

.method private static load(Landroid/content/Context;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 28
    .local v4, "start":J
    const-string/jumbo v1, ""

    .line 29
    .local v1, "token":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1061
    .local v6, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1062
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1063
    new-instance v7, Ljava/util/zip/ZipInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_21} :catch_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_21} :catch_7f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_21} :catch_a2
    .catchall {:try_start_8 .. :try_end_21} :catchall_c7

    .line 35
    .end local v6    # "zis":Ljava/util/zip/ZipInputStream;
    .local v7, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_21
    invoke-static {v7}, Lcom/crashlytics/android/beta/DeviceTokenLoader;->determineDeviceToken(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_24} :catch_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_24} :catch_e3
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_e0
    .catchall {:try_start_21 .. :try_end_24} :catchall_dd

    move-result-object v1

    .line 45
    :try_start_25
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_4c

    move-object v6, v7

    .line 52
    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_29
    :goto_29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 53
    sub-long/2addr v8, v4

    long-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v2, v8, v10

    .line 54
    .local v2, "millis":D
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Beta device token load took "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    return-object v1

    .line 46
    .end local v2    # "millis":D
    .end local v6    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_4c
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    const-string/jumbo v9, "Beta"

    const-string/jumbo v10, "Failed to close the APK file"

    invoke-interface {v8, v9, v10, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v7

    .line 48
    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_29

    .line 36
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5c
    move-exception v0

    .line 37
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_5d
    :try_start_5d
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    const-string/jumbo v9, "Beta"

    const-string/jumbo v10, "Failed to find this app in the PackageManager"

    invoke-interface {v8, v9, v10, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_5d .. :try_end_6a} :catchall_c7

    .line 43
    if-eqz v6, :cond_29

    .line 45
    :try_start_6c
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_29

    .line 46
    :catch_70
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    const-string/jumbo v9, "Beta"

    const-string/jumbo v10, "Failed to close the APK file"

    invoke-interface {v8, v9, v10, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 38
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7f
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_80
    :try_start_80
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    const-string/jumbo v9, "Beta"

    const-string/jumbo v10, "Failed to find the APK file"

    invoke-interface {v8, v9, v10, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_c7

    .line 43
    if-eqz v6, :cond_29

    .line 45
    :try_start_8f
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_29

    .line 46
    :catch_93
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    const-string/jumbo v9, "Beta"

    const-string/jumbo v10, "Failed to close the APK file"

    invoke-interface {v8, v9, v10, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    :catch_a2
    move-exception v0

    .line 41
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_a3
    :try_start_a3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    const-string/jumbo v9, "Beta"

    const-string/jumbo v10, "Failed to read the APK file"

    invoke-interface {v8, v9, v10, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b0
    .catchall {:try_start_a3 .. :try_end_b0} :catchall_c7

    .line 43
    if-eqz v6, :cond_29

    .line 45
    :try_start_b2
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b7

    goto/16 :goto_29

    .line 46
    :catch_b7
    move-exception v0

    .line 47
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    const-string/jumbo v9, "Beta"

    const-string/jumbo v10, "Failed to close the APK file"

    invoke-interface {v8, v9, v10, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_c7
    move-exception v8

    :goto_c8
    if-eqz v6, :cond_cd

    .line 45
    :try_start_ca
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce

    .line 48
    :cond_cd
    :goto_cd
    throw v8

    .line 46
    :catch_ce
    move-exception v0

    .line 47
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v9

    const-string/jumbo v10, "Beta"

    const-string/jumbo v11, "Failed to close the APK file"

    invoke-interface {v9, v10, v11, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_cd

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_dd
    move-exception v8

    move-object v6, v7

    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_c8

    .line 40
    .end local v6    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_e0
    move-exception v0

    move-object v6, v7

    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_a3

    .line 38
    .end local v6    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_e3
    move-exception v0

    move-object v6, v7

    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_80

    .line 36
    .end local v6    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_e6
    move-exception v0

    move-object v6, v7

    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_5d
.end method


# virtual methods
.method public final bridge synthetic load(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p1}, Lcom/crashlytics/android/beta/DeviceTokenLoader;->load(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
