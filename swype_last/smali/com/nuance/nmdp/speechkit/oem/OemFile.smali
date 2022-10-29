.class public Lcom/nuance/nmdp/speechkit/oem/OemFile;
.super Ljava/lang/Object;
.source "OemFile.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openForRead(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .local v0, "infile":Ljava/io/File;
    const/4 v1, 0x0

    .line 23
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    .line 26
    if-lez v4, :cond_23

    .line 28
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_22} :catch_24

    .end local v1    # "stream":Ljava/io/InputStream;
    .local v2, "stream":Ljava/io/InputStream;
    move-object v1, v2

    .line 34
    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :cond_23
    :goto_23
    return-object v1

    .line 31
    :catch_24
    move-exception v3

    .line 32
    .local v3, "tr":Ljava/lang/Throwable;
    const-string/jumbo v4, "OemFile"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Cannot read audio input file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method public static openForWrite(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 8
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v1, "outfile":Ljava/io/File;
    const/4 v2, 0x0

    .line 42
    .local v2, "stream":Ljava/io/OutputStream;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 45
    const-string/jumbo v4, "OemFile"

    const-string/jumbo v5, "Can\'t delete existing audio output file"

    invoke-static {v4, v5}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :cond_1f
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 51
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v2    # "stream":Ljava/io/OutputStream;
    .local v3, "stream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 64
    .end local v3    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :goto_31
    return-object v2

    .line 54
    :cond_32
    const-string/jumbo v4, "OemFile"

    const-string/jumbo v5, "Can\'t write to audio output file"

    invoke-static {v4, v5}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3b} :catch_3c

    goto :goto_31

    .line 61
    :catch_3c
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "OemFile"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Cannot open audio output file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 58
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_54
    :try_start_54
    const-string/jumbo v4, "OemFile"

    const-string/jumbo v5, "Can\'t create audio output file"

    invoke-static {v4, v5}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_3c

    goto :goto_31
.end method
