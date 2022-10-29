.class Lcom/localytics/android/CreativeDownloadTask;
.super Ljava/lang/Object;
.source "CreativeDownloadTask.java"

# interfaces
.implements Lcom/localytics/android/ICreativeDownloadTask;


# instance fields
.field private mCallback:Lcom/localytics/android/ICreativeDownloadTaskCallback;

.field private mCampaign:Lcom/localytics/android/MarketingMessage;

.field private mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

.field private mPriority:Lcom/localytics/android/ICreativeDownloadTask$Priority;

.field private mRemoteFileLocation:Ljava/lang/String;

.field private mSequence:I


# direct methods
.method public constructor <init>(Lcom/localytics/android/MarketingMessage;Lcom/localytics/android/ICreativeDownloadTask$Priority;ILcom/localytics/android/LocalyticsDao;Lcom/localytics/android/ICreativeDownloadTaskCallback;)V
    .registers 7
    .param p1, "campaign"    # Lcom/localytics/android/MarketingMessage;
    .param p2, "priority"    # Lcom/localytics/android/ICreativeDownloadTask$Priority;
    .param p3, "sequence"    # I
    .param p4, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p5, "callback"    # Lcom/localytics/android/ICreativeDownloadTaskCallback;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/localytics/android/CreativeDownloadTask;->mCampaign:Lcom/localytics/android/MarketingMessage;

    .line 32
    const-string/jumbo v0, "download_url"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mRemoteFileLocation:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/localytics/android/CreativeDownloadTask;->mPriority:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    .line 34
    iput p3, p0, Lcom/localytics/android/CreativeDownloadTask;->mSequence:I

    .line 35
    iput-object p4, p0, Lcom/localytics/android/CreativeDownloadTask;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 36
    iput-object p5, p0, Lcom/localytics/android/CreativeDownloadTask;->mCallback:Lcom/localytics/android/ICreativeDownloadTaskCallback;

    .line 37
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/localytics/android/ICreativeDownloadTask;)I
    .registers 6
    .param p1, "another"    # Lcom/localytics/android/ICreativeDownloadTask;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mPriority:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    .line 147
    .local v0, "left":Lcom/localytics/android/ICreativeDownloadTask$Priority;
    invoke-interface {p1}, Lcom/localytics/android/ICreativeDownloadTask;->getPriority()Lcom/localytics/android/ICreativeDownloadTask$Priority;

    move-result-object v1

    .line 151
    .local v1, "right":Lcom/localytics/android/ICreativeDownloadTask$Priority;
    if-ne v0, v1, :cond_10

    iget v2, p0, Lcom/localytics/android/CreativeDownloadTask;->mSequence:I

    invoke-interface {p1}, Lcom/localytics/android/ICreativeDownloadTask;->getSequence()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_f
    return v2

    :cond_10
    invoke-virtual {v1}, Lcom/localytics/android/ICreativeDownloadTask$Priority;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lcom/localytics/android/ICreativeDownloadTask$Priority;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_f
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/localytics/android/ICreativeDownloadTask;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/localytics/android/CreativeDownloadTask;->compareTo(Lcom/localytics/android/ICreativeDownloadTask;)I

    move-result v0

    return v0
.end method

.method downloadFile(Ljava/lang/String;Ljava/lang/String;ZLjava/net/Proxy;)Z
    .registers 21
    .param p1, "remoteFilePath"    # Ljava/lang/String;
    .param p2, "localFilePath"    # Ljava/lang/String;
    .param p3, "isOverwrite"    # Z
    .param p4, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 84
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_25

    if-nez p3, :cond_25

    .line 87
    const-string/jumbo v11, "The file %s does exist and overwrite is turned off."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 88
    const/4 v11, 0x1

    .line 140
    :goto_24
    return v11

    .line 91
    :cond_25
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 92
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_4b

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_4b

    .line 94
    const-string/jumbo v11, "Could not create the directory %s for saving file."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 95
    const/4 v11, 0x0

    goto :goto_24

    .line 98
    :cond_4b
    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "%s_%s_temp"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/localytics/android/CreativeDownloadTask;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v14}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v10, "tempFile":Ljava/io/File;
    :try_start_6c
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    move-result v11

    if-eqz v11, :cond_f8

    .line 103
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    move-object/from16 v0, p4

    invoke-static {v11, v0}, Lcom/localytics/android/BaseUploadThread;->createURLConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v11

    .line 107
    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 108
    .local v8, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v11, 0x4000

    invoke-direct {v2, v8, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 109
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 112
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v11, 0x2000

    new-array v3, v11, [B

    .line 113
    .local v3, "buffer":[B
    :goto_97
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    .local v9, "read":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_bf

    .line 115
    const/4 v11, 0x0

    invoke-virtual {v7, v3, v11, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_a2} :catch_a3
    .catchall {:try_start_6c .. :try_end_a2} :catchall_10b

    goto :goto_97

    .line 128
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "buffer":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "read":I
    :catch_a3
    move-exception v5

    .line 130
    .local v5, "e":Ljava/io/IOException;
    :try_start_a4
    const-string/jumbo v11, "Failed to download campaign creative"

    invoke-static {v11, v5}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_10b

    .line 134
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_bc

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_bc

    .line 136
    const-string/jumbo v11, "Failed to delete temporary file for campaign"

    invoke-static {v11}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    .line 140
    .end local v5    # "e":Ljava/io/IOException;
    :cond_bc
    :goto_bc
    const/4 v11, 0x0

    goto/16 :goto_24

    .line 117
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "buffer":[B
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "read":I
    :cond_bf
    :try_start_bf
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 119
    invoke-virtual {v10, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_e3

    .line 121
    const-string/jumbo v11, "Failed to create permanent file for campaign"

    invoke-static {v11}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_ce} :catch_a3
    .catchall {:try_start_bf .. :try_end_ce} :catchall_10b

    .line 134
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_e0

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_e0

    .line 136
    const-string/jumbo v11, "Failed to delete temporary file for campaign"

    invoke-static {v11}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    :cond_e0
    const/4 v11, 0x0

    goto/16 :goto_24

    .line 134
    :cond_e3
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_f5

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_f5

    .line 136
    const-string/jumbo v11, "Failed to delete temporary file for campaign"

    invoke-static {v11}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    :cond_f5
    const/4 v11, 0x1

    goto/16 :goto_24

    .line 134
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "buffer":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "read":I
    :cond_f8
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_bc

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_bc

    .line 136
    const-string/jumbo v11, "Failed to delete temporary file for campaign"

    invoke-static {v11}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    goto :goto_bc

    .line 134
    :catchall_10b
    move-exception v11

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_11e

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_11e

    .line 136
    const-string/jumbo v12, "Failed to delete temporary file for campaign"

    invoke-static {v12}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    :cond_11e
    throw v11
.end method

.method public getCampaign()Lcom/localytics/android/MarketingMessage;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mCampaign:Lcom/localytics/android/MarketingMessage;

    return-object v0
.end method

.method public getPriority()Lcom/localytics/android/ICreativeDownloadTask$Priority;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mPriority:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    return-object v0
.end method

.method public getSequence()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/localytics/android/CreativeDownloadTask;->mSequence:I

    return v0
.end method

.method public run()V
    .registers 6

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "success":Z
    iget-object v2, p0, Lcom/localytics/android/CreativeDownloadTask;->mCampaign:Lcom/localytics/android/MarketingMessage;

    const-string/jumbo v3, "local_file_location"

    invoke-static {v2, v3}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "localFileLocation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 68
    iget-object v2, p0, Lcom/localytics/android/CreativeDownloadTask;->mRemoteFileLocation:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/localytics/android/CreativeDownloadTask;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v4}, Lcom/localytics/android/LocalyticsDao;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/localytics/android/CreativeDownloadTask;->downloadFile(Ljava/lang/String;Ljava/lang/String;ZLjava/net/Proxy;)Z

    move-result v1

    .line 71
    :cond_1d
    if-eqz v1, :cond_25

    .line 73
    iget-object v2, p0, Lcom/localytics/android/CreativeDownloadTask;->mCallback:Lcom/localytics/android/ICreativeDownloadTaskCallback;

    invoke-interface {v2, p0}, Lcom/localytics/android/ICreativeDownloadTaskCallback;->onComplete(Lcom/localytics/android/ICreativeDownloadTask;)V

    .line 79
    :goto_24
    return-void

    .line 77
    :cond_25
    iget-object v2, p0, Lcom/localytics/android/CreativeDownloadTask;->mCallback:Lcom/localytics/android/ICreativeDownloadTaskCallback;

    invoke-interface {v2, p0}, Lcom/localytics/android/ICreativeDownloadTaskCallback;->onError(Lcom/localytics/android/ICreativeDownloadTask;)V

    goto :goto_24
.end method

.method public setPriority(Lcom/localytics/android/ICreativeDownloadTask$Priority;)V
    .registers 2
    .param p1, "priority"    # Lcom/localytics/android/ICreativeDownloadTask$Priority;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/localytics/android/CreativeDownloadTask;->mPriority:Lcom/localytics/android/ICreativeDownloadTask$Priority;

    .line 48
    return-void
.end method
