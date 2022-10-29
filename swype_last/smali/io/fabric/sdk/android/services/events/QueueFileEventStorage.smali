.class public Lio/fabric/sdk/android/services/events/QueueFileEventStorage;
.super Ljava/lang/Object;
.source "QueueFileEventStorage.java"

# interfaces
.implements Lio/fabric/sdk/android/services/events/EventsStorage;


# instance fields
.field private final context:Landroid/content/Context;

.field private queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

.field private targetDirectory:Ljava/io/File;

.field private final targetDirectoryName:Ljava/lang/String;

.field private final workingDirectory:Ljava/io/File;

.field private final workingFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workingDirectory"    # Ljava/io/File;
    .param p3, "workingFileName"    # Ljava/lang/String;
    .param p4, "targetDirectoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->workingDirectory:Ljava/io/File;

    .line 37
    iput-object p4, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->targetDirectoryName:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->workingDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->workingFile:Ljava/io/File;

    .line 41
    new-instance v0, Lio/fabric/sdk/android/services/common/QueueFile;

    iget-object v1, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->workingFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    .line 1047
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->workingDirectory:Ljava/io/File;

    iget-object v2, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->targetDirectoryName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->targetDirectory:Ljava/io/File;

    .line 1048
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->targetDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1049
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->targetDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 44
    :cond_33
    return-void
.end method


# virtual methods
.method public final add([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    .line 1274
    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->add$1cf967a4([BI)V

    .line 56
    return-void
.end method

.method public final canWorkingFileStore(II)Z
    .registers 4
    .param p1, "newEventSizeInBytes"    # I
    .param p2, "maxByteSizePerFile"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    .line 2533
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    if-gt v0, p2, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    .line 159
    goto :goto_c
.end method

.method public final deleteFilesInRollOverDirectory(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 132
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->context:Landroid/content/Context;

    const-string/jumbo v3, "deleting sent analytics file %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 136
    .end local v0    # "file":Ljava/io/File;
    :cond_29
    return-void
.end method

.method public final deleteWorkingFile()V
    .registers 2

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_b

    .line 149
    :goto_5
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->workingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 150
    return-void

    :catch_b
    move-exception v0

    goto :goto_5
.end method

.method public final getAllFilesInRollOverDirectory()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->targetDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBatchOfFilesToSend$22f3aa59()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v1, "batch":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v5, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->targetDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_d
    if-ge v3, v4, :cond_1d

    aget-object v2, v0, v3

    .line 121
    .local v2, "file":Ljava/io/File;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1d

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 126
    .end local v2    # "file":Ljava/io/File;
    :cond_1d
    return-object v1
.end method

.method public getMoveOutputStream(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 3
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final getWorkingFileUsedSizeInBytes()I
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v0

    return v0
.end method

.method public final isWorkingFileEmpty()Z
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final rollOver(Ljava/lang/String;)V
    .registers 7
    .param p1, "targetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->close()V

    .line 67
    iget-object v3, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->workingFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->targetDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2087
    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_38

    .line 2088
    :try_start_14
    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->getMoveOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v2

    .line 2089
    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_4a

    .line 2091
    const-string/jumbo v0, "Failed to close file input stream"

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 2092
    const-string/jumbo v0, "Failed to close output stream"

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 2093
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 69
    new-instance v0, Lio/fabric/sdk/android/services/common/QueueFile;

    iget-object v1, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->workingFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/events/QueueFileEventStorage;->queueFile:Lio/fabric/sdk/android/services/common/QueueFile;

    .line 70
    return-void

    .line 2091
    :catchall_38
    move-exception v0

    move-object v1, v2

    :goto_3a
    const-string/jumbo v4, "Failed to close file input stream"

    invoke-static {v1, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 2092
    const-string/jumbo v1, "Failed to close output stream"

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 2093
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0

    .line 2091
    :catchall_4a
    move-exception v0

    goto :goto_3a
.end method
