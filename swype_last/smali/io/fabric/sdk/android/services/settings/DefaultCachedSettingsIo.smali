.class final Lio/fabric/sdk/android/services/settings/DefaultCachedSettingsIo;
.super Ljava/lang/Object;
.source "DefaultCachedSettingsIo.java"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/CachedSettingsIo;


# instance fields
.field private final kit:Lio/fabric/sdk/android/Kit;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;)V
    .registers 2
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/DefaultCachedSettingsIo;->kit:Lio/fabric/sdk/android/Kit;

    .line 25
    return-void
.end method


# virtual methods
.method public final readCachedSettings()Lorg/json/JSONObject;
    .registers 11

    .prologue
    .line 29
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 35
    .local v5, "toReturn":Lorg/json/JSONObject;
    :try_start_5
    new-instance v3, Ljava/io/File;

    new-instance v7, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;

    iget-object v8, p0, Lio/fabric/sdk/android/services/settings/DefaultCachedSettingsIo;->kit:Lio/fabric/sdk/android/Kit;

    invoke-direct {v7, v8}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-virtual {v7}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "com.crashlytics.settings.json"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .local v3, "settingsFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 39
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_39
    .catchall {:try_start_5 .. :try_end_23} :catchall_4e

    .line 40
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_23
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "settingsStr":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2c} :catch_59
    .catchall {:try_start_23 .. :try_end_2c} :catchall_56

    .end local v5    # "toReturn":Lorg/json/JSONObject;
    .local v6, "toReturn":Lorg/json/JSONObject;
    move-object v5, v6

    .end local v6    # "toReturn":Lorg/json/JSONObject;
    .restart local v5    # "toReturn":Lorg/json/JSONObject;
    move-object v1, v2

    .line 49
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "settingsStr":Ljava/lang/String;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_2e
    const-string/jumbo v7, "Error while closing settings cache file."

    invoke-static {v1, v7}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 52
    .end local v3    # "settingsFile":Ljava/io/File;
    :goto_34
    return-object v5

    .line 44
    .restart local v3    # "settingsFile":Ljava/io/File;
    :cond_35
    :try_start_35
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_4e

    goto :goto_2e

    .line 46
    .end local v3    # "settingsFile":Ljava/io/File;
    :catch_39
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    :goto_3a
    :try_start_3a
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    const-string/jumbo v8, "Fabric"

    const-string/jumbo v9, "Failed to fetch cached settings"

    invoke-interface {v7, v8, v9, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_4e

    .line 49
    const-string/jumbo v7, "Error while closing settings cache file."

    invoke-static {v1, v7}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_34

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4e
    move-exception v7

    :goto_4f
    const-string/jumbo v8, "Error while closing settings cache file."

    invoke-static {v1, v8}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v7

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "settingsFile":Ljava/io/File;
    :catchall_56
    move-exception v7

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4f

    .line 46
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_59
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3a
.end method

.method public final writeCachedSettings(JLorg/json/JSONObject;)V
    .registers 11
    .param p1, "expiresAtMillis"    # J
    .param p3, "settingsJson"    # Lorg/json/JSONObject;

    .prologue
    .line 57
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 59
    if-eqz p3, :cond_34

    .line 60
    const/4 v1, 0x0

    .line 63
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_6
    const-string/jumbo v3, "expires_at"

    invoke-virtual {p3, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/io/File;

    new-instance v4, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;

    iget-object v5, p0, Lio/fabric/sdk/android/services/settings/DefaultCachedSettingsIo;->kit:Lio/fabric/sdk/android/Kit;

    invoke-direct {v4, v5}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-virtual {v4}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "com.crashlytics.settings.json"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_35
    .catchall {:try_start_6 .. :try_end_24} :catchall_4a

    .line 67
    .end local v1    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_24
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_55
    .catchall {:try_start_24 .. :try_end_2e} :catchall_52

    .line 72
    const-string/jumbo v3, "Failed to close settings writer."

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 75
    .end local v2    # "writer":Ljava/io/FileWriter;
    :cond_34
    :goto_34
    return-void

    .line 69
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :catch_35
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :goto_36
    :try_start_36
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string/jumbo v4, "Fabric"

    const-string/jumbo v5, "Failed to cache settings"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_4a

    .line 72
    const-string/jumbo v3, "Failed to close settings writer."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_34

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4a
    move-exception v3

    :goto_4b
    const-string/jumbo v4, "Failed to close settings writer."

    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v3

    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_52
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_4b

    .line 69
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_55
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_36
.end method
