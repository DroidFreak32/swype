.class public Lcom/nuance/swype/input/BuildSettings;
.super Ljava/lang/Object;
.source "BuildSettings.java"


# static fields
.field public static final BUILDSETTINGS_FILE:Ljava/lang/String; = "buildsettings.dat"

.field public static final SWYPE_SWIB:Ljava/lang/String; = "SWIB"


# instance fields
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
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->properties:Ljava/util/Map;

    .line 39
    return-void
.end method

.method private addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public static createFromDigest([B)Lcom/nuance/swype/input/BuildSettings;
    .registers 6
    .param p0, "digest"    # [B

    .prologue
    const/4 v2, 0x0

    .line 99
    const-string/jumbo v3, "b62a557144ca38d42e69cb430a08d629066fc687713ec7c11c2825369a48b97756d7eb958d7b4eef9786a2467bccfa4dae228709b12efcfadaf8fea6dd149df77db523fd41758a0ca7de1d6765936960b6bcaaaac8029d9214983a19298318dfe4289f1dc8978ee49a158ec3fdf44fd44617444576d288c0c9289a7bcec6f6c5"

    const-string/jumbo v4, "10001"

    invoke-static {p0, v3, v4}, Lcom/nuance/connect/util/EncryptUtils;->legacyDecrypt([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 100
    .local v1, "message":[B
    if-eqz v1, :cond_19

    .line 102
    :try_start_d
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Lcom/nuance/swype/input/BuildSettings;->createFromString(Ljava/lang/String;)Lcom/nuance/swype/input/BuildSettings;
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_18} :catch_1a

    move-result-object v2

    .line 109
    :cond_19
    :goto_19
    return-object v2

    .line 103
    :catch_1a
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "BuildSettings"

    const-string/jumbo v4, "UnsupportedEncodingException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/nuance/swype/input/BuildSettings;
    .registers 10
    .param p0, "rawText"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 63
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x1000

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 65
    .local v0, "bufReader":Ljava/io/BufferedReader;
    :try_start_d
    new-instance v4, Lcom/nuance/swype/input/BuildSettings;

    invoke-direct {v4}, Lcom/nuance/swype/input/BuildSettings;-><init>()V

    .line 67
    .local v4, "settings":Lcom/nuance/swype/input/BuildSettings;
    :cond_12
    :goto_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_3d

    .line 72
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 73
    .local v3, "posOfEqual":I
    if-ltz v3, :cond_12

    .line 74
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "value":Ljava/lang/String;
    invoke-direct {v4, v2, v5}, Lcom/nuance/swype/input/BuildSettings;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_36} :catch_37
    .catchall {:try_start_d .. :try_end_36} :catchall_47

    goto :goto_12

    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "posOfEqual":I
    .end local v4    # "settings":Lcom/nuance/swype/input/BuildSettings;
    .end local v5    # "value":Ljava/lang/String;
    :catch_37
    move-exception v7

    .line 85
    :try_start_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_44

    move-object v4, v6

    .line 87
    :goto_3c
    return-object v4

    .line 85
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "settings":Lcom/nuance/swype/input/BuildSettings;
    :cond_3d
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_3c

    .line 87
    :catch_41
    move-exception v7

    move-object v4, v6

    goto :goto_3c

    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "settings":Lcom/nuance/swype/input/BuildSettings;
    :catch_44
    move-exception v7

    move-object v4, v6

    goto :goto_3c

    .line 84
    :catchall_47
    move-exception v7

    .line 85
    :try_start_48
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 87
    throw v7

    :catch_4c
    move-exception v7

    move-object v4, v6

    goto :goto_3c
.end method

.method public static getBuildSettings(Landroid/content/Context;)Lcom/nuance/swype/input/BuildSettings;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 140
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    .line 141
    .local v5, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 142
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 144
    .local v3, "digest":Ljava/io/ByteArrayOutputStream;
    :try_start_b
    const-string/jumbo v7, "buildsettings.dat"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 145
    if-eqz v5, :cond_44

    .line 146
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v7, 0x2000

    invoke-direct {v2, v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1b} :catch_4b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1b} :catch_5e
    .catchall {:try_start_b .. :try_end_1b} :catchall_71

    .line 148
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_1b
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_94
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_8d
    .catchall {:try_start_1b .. :try_end_20} :catchall_86

    .line 150
    .end local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    .local v4, "digest":Ljava/io/ByteArrayOutputStream;
    :try_start_20
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    .line 151
    .local v6, "readByte":I
    :goto_24
    if-ltz v6, :cond_2e

    .line 152
    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 153
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    goto :goto_24

    .line 155
    :cond_2e
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/BuildSettings;->createFromDigest([B)Lcom/nuance/swype/input/BuildSettings;
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_35} :catch_97
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_35} :catch_90
    .catchall {:try_start_20 .. :try_end_35} :catchall_89

    move-result-object v7

    .line 165
    :try_start_36
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 168
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 170
    if-eqz v5, :cond_41

    .line 171
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_41} :catch_9b

    :cond_41
    :goto_41
    move-object v3, v4

    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .line 177
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "readByte":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :goto_43
    return-object v7

    .line 170
    :cond_44
    if-eqz v5, :cond_49

    .line 171
    :try_start_46
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_82

    .line 177
    :cond_49
    :goto_49
    const/4 v7, 0x0

    goto :goto_43

    :catch_4b
    move-exception v7

    .line 164
    :goto_4c
    if-eqz v3, :cond_51

    .line 165
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 167
    :cond_51
    if-eqz v1, :cond_56

    .line 168
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 170
    :cond_56
    if-eqz v5, :cond_49

    .line 171
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5b} :catch_5c

    goto :goto_49

    .line 176
    :catch_5c
    move-exception v7

    goto :goto_49

    :catch_5e
    move-exception v7

    .line 164
    :goto_5f
    if-eqz v3, :cond_64

    .line 165
    :try_start_61
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 167
    :cond_64
    if-eqz v1, :cond_69

    .line 168
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 170
    :cond_69
    if-eqz v5, :cond_49

    .line 171
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6e} :catch_6f

    goto :goto_49

    .line 176
    :catch_6f
    move-exception v7

    goto :goto_49

    .line 163
    :catchall_71
    move-exception v7

    .line 164
    :goto_72
    if-eqz v3, :cond_77

    .line 165
    :try_start_74
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 167
    :cond_77
    if-eqz v1, :cond_7c

    .line 168
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 170
    :cond_7c
    if-eqz v5, :cond_81

    .line 171
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_81} :catch_84

    .line 175
    :cond_81
    :goto_81
    throw v7

    .line 176
    :catch_82
    move-exception v7

    goto :goto_49

    :catch_84
    move-exception v8

    goto :goto_81

    .line 163
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catchall_86
    move-exception v7

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_72

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    :catchall_89
    move-exception v7

    move-object v3, v4

    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_72

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catch_8d
    move-exception v7

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5f

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    :catch_90
    move-exception v7

    move-object v3, v4

    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5f

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catch_94
    move-exception v7

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4c

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    :catch_97
    move-exception v7

    move-object v3, v4

    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4c

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "readByte":I
    :catch_9b
    move-exception v8

    goto :goto_41
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSWIB()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->swib:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 128
    const-string/jumbo v0, "SWIB"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BuildSettings;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->swib:Ljava/lang/String;

    .line 130
    :cond_d
    iget-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->swib:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/nuance/swype/input/BuildSettings;->properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/nuance/swype/input/BuildSettings;->properties:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 119
    .end local v1    # "key":Ljava/lang/String;
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
