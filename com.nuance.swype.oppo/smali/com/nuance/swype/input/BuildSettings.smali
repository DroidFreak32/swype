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
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->properties:Ljava/util/Map;

    .line 37
    return-void
.end method

.method private addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public static createFromDigest([B)Lcom/nuance/swype/input/BuildSettings;
    .locals 2
    .param p0, "digest"    # [B

    .prologue
    .line 97
    invoke-static {p0}, Lcom/nuance/swype/connect/util/EncryptUtils;->decrypt([B)[B

    move-result-object v0

    .line 98
    .local v0, "message":[B
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/nuance/swype/input/BuildSettings;->createFromString(Ljava/lang/String;)Lcom/nuance/swype/input/BuildSettings;

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/nuance/swype/input/BuildSettings;
    .locals 9
    .param p0, "rawText"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 61
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x1000

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 63
    .local v0, "bufReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Lcom/nuance/swype/input/BuildSettings;

    invoke-direct {v4}, Lcom/nuance/swype/input/BuildSettings;-><init>()V

    .line 65
    .local v4, "settings":Lcom/nuance/swype/input/BuildSettings;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 67
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 71
    .local v3, "posOfEqual":I
    if-ltz v3, :cond_0

    .line 72
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "value":Ljava/lang/String;
    invoke-direct {v4, v2, v5}, Lcom/nuance/swype/input/BuildSettings;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "posOfEqual":I
    .end local v4    # "settings":Lcom/nuance/swype/input/BuildSettings;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 80
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v6

    .line 85
    :goto_1
    return-object v4

    .line 83
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "settings":Lcom/nuance/swype/input/BuildSettings;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 85
    :catch_1
    move-exception v7

    move-object v4, v6

    goto :goto_1

    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "settings":Lcom/nuance/swype/input/BuildSettings;
    :catch_2
    move-exception v7

    move-object v4, v6

    goto :goto_1

    .line 82
    :catchall_0
    move-exception v7

    .line 83
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 85
    throw v7

    :catch_3
    move-exception v7

    move-object v4, v6

    goto :goto_1
.end method

.method public static getBuildSettings(Landroid/content/Context;)Lcom/nuance/swype/input/BuildSettings;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 132
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    .line 133
    .local v5, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 134
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 136
    .local v3, "digest":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v7, "buildsettings.dat"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 137
    if-eqz v5, :cond_2

    .line 138
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v7, 0x2000

    invoke-direct {v2, v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    .end local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    .local v4, "digest":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    .line 143
    .local v6, "readByte":I
    :goto_0
    if-ltz v6, :cond_0

    .line 144
    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/BuildSettings;->createFromDigest([B)Lcom/nuance/swype/input/BuildSettings;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 156
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 159
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    if-eqz v5, :cond_1

    .line 163
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    :cond_1
    :goto_1
    move-object v3, v4

    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .line 169
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "readByte":I
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :goto_2
    return-object v7

    .line 156
    :cond_2
    if-eqz v5, :cond_3

    .line 163
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 169
    :cond_3
    :goto_3
    const/4 v7, 0x0

    goto :goto_2

    :catch_0
    move-exception v7

    .line 156
    :goto_4
    if-eqz v3, :cond_4

    .line 157
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 159
    :cond_4
    if-eqz v1, :cond_5

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    :cond_5
    if-eqz v5, :cond_3

    .line 163
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 168
    :catch_1
    move-exception v7

    goto :goto_3

    :catch_2
    move-exception v7

    .line 156
    :goto_5
    if-eqz v3, :cond_6

    .line 157
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 159
    :cond_6
    if-eqz v1, :cond_7

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    :cond_7
    if-eqz v5, :cond_3

    .line 163
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 168
    :catch_3
    move-exception v7

    goto :goto_3

    .line 155
    :catchall_0
    move-exception v7

    .line 156
    :goto_6
    if-eqz v3, :cond_8

    .line 157
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 159
    :cond_8
    if-eqz v1, :cond_9

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    :cond_9
    if-eqz v5, :cond_a

    .line 163
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 167
    :cond_a
    :goto_7
    throw v7

    .line 168
    :catch_4
    move-exception v7

    goto :goto_3

    :catch_5
    move-exception v8

    goto :goto_7

    .line 155
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v7

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v7

    move-object v3, v4

    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v7

    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    :catch_9
    move-exception v7

    move-object v3, v4

    .end local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "digest":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "readByte":I
    :catch_a
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSWIB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->swib:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "SWIB"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/BuildSettings;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->swib:Ljava/lang/String;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/BuildSettings;->swib:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/nuance/swype/input/BuildSettings;->properties:Ljava/util/Map;

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

    .line 109
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/nuance/swype/input/BuildSettings;->properties:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
