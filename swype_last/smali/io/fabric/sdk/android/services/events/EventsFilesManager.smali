.class public abstract Lio/fabric/sdk/android/services/events/EventsFilesManager;
.super Ljava/lang/Object;
.source "EventsFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field public final currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

.field private final defaultMaxFilesToKeep:I

.field protected final eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

.field protected volatile lastRollOverTime:J

.field protected final rollOverListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/fabric/sdk/android/services/events/EventsStorageListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final transform:Lio/fabric/sdk/android/services/events/EventTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/events/EventTransform",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/events/EventTransform;Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lio/fabric/sdk/android/services/events/EventsStorage;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "currentTimeProvider"    # Lio/fabric/sdk/android/services/common/CurrentTimeProvider;
    .param p4, "eventStorage"    # Lio/fabric/sdk/android/services/events/EventsStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/events/EventTransform",
            "<TT;>;",
            "Lio/fabric/sdk/android/services/common/CurrentTimeProvider;",
            "Lio/fabric/sdk/android/services/events/EventsStorage;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    .local p2, "transform":Lio/fabric/sdk/android/services/events/EventTransform;, "Lio/fabric/sdk/android/services/events/EventTransform<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->rollOverListeners:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->transform:Lio/fabric/sdk/android/services/events/EventTransform;

    .line 58
    iput-object p4, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    .line 59
    iput-object p3, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    .line 61
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->lastRollOverTime:J

    .line 63
    const/16 v0, 0x64

    iput v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->defaultMaxFilesToKeep:I

    .line 64
    return-void
.end method

.method private static parseCreationTimestampFromFileName(Ljava/lang/String;)J
    .registers 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 208
    const-string/jumbo v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "fileNameParts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_e

    .line 215
    :goto_d
    return-wide v2

    .line 213
    :cond_e
    const/4 v1, 0x2

    :try_start_f
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_18} :catch_1a

    move-result-wide v2

    goto :goto_d

    .line 215
    :catch_1a
    move-exception v1

    goto :goto_d
.end method


# virtual methods
.method public final deleteAllEventsFiles()V
    .registers 3

    .prologue
    .line 166
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/events/EventsStorage;->getAllFilesInRollOverDirectory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/events/EventsStorage;->deleteFilesInRollOverDirectory(Ljava/util/List;)V

    .line 168
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/EventsStorage;->deleteWorkingFile()V

    .line 169
    return-void
.end method

.method public final deleteOldestInRollOverIfOverMax()V
    .registers 19

    .prologue
    .line 172
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v12}, Lio/fabric/sdk/android/services/events/EventsStorage;->getAllFilesInRollOverDirectory()Ljava/util/List;

    move-result-object v2

    .line 173
    .local v2, "allFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual/range {p0 .. p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->getMaxFilesToKeep()I

    move-result v8

    .line 175
    .local v8, "maxFiles":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-gt v12, v8, :cond_13

    .line 205
    :goto_12
    return-void

    .line 177
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    sub-int v9, v12, v8

    .line 179
    .local v9, "numberOfFilesToDelete":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->context:Landroid/content/Context;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v12}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V

    .line 184
    new-instance v10, Ljava/util/TreeSet;

    new-instance v12, Lio/fabric/sdk/android/services/events/EventsFilesManager$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lio/fabric/sdk/android/services/events/EventsFilesManager$1;-><init>(Lio/fabric/sdk/android/services/events/EventsFilesManager;)V

    invoke-direct {v10, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 192
    .local v10, "sortedFiles":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_57
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_74

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 193
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->parseCreationTimestampFromFileName(Ljava/lang/String;)J

    move-result-wide v4

    .line 194
    .local v4, "creationTimestamp":J
    new-instance v12, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;

    invoke-direct {v12, v3, v4, v5}, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;-><init>(Ljava/io/File;J)V

    invoke-virtual {v10, v12}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 197
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "creationTimestamp":J
    :cond_74
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v11, "toDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_94

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;

    .line 199
    .local v6, "fileWithTimestamp":Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;
    iget-object v12, v6, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;->file:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v9, :cond_7d

    .line 204
    .end local v6    # "fileWithTimestamp":Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;
    :cond_94
    move-object/from16 v0, p0

    iget-object v12, v0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v12, v11}, Lio/fabric/sdk/android/services/events/EventsStorage;->deleteFilesInRollOverDirectory(Ljava/util/List;)V

    goto/16 :goto_12
.end method

.method public final deleteSentFiles(Ljava/util/List;)V
    .registers 3
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
    .line 162
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/events/EventsStorage;->deleteFilesInRollOverDirectory(Ljava/util/List;)V

    .line 163
    return-void
.end method

.method public abstract generateUniqueRollOverFileName()Ljava/lang/String;
.end method

.method public final getBatchOfFilesToSend()Ljava/util/List;
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
    .line 158
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/EventsStorage;->getBatchOfFilesToSend$22f3aa59()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxByteSizePerFile()I
    .registers 2

    .prologue
    .line 139
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    const/16 v0, 0x1f40

    return v0
.end method

.method public getMaxFilesToKeep()I
    .registers 2

    .prologue
    .line 135
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    iget v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->defaultMaxFilesToKeep:I

    return v0
.end method

.method public final registerRollOverListener(Lio/fabric/sdk/android/services/events/EventsStorageListener;)V
    .registers 3
    .param p1, "listener"    # Lio/fabric/sdk/android/services/events/EventsStorageListener;

    .prologue
    .line 78
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    if-eqz p1, :cond_7

    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->rollOverListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_7
    return-void
.end method

.method public final rollFileOver()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    const/4 v0, 0x0

    .line 91
    .local v0, "fileRolledOver":Z
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/events/EventsStorage;->isWorkingFileEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 92
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->generateUniqueRollOverFileName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "targetFileName":Ljava/lang/String;
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v2, v1}, Lio/fabric/sdk/android/services/events/EventsStorage;->rollOver(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->context:Landroid/content/Context;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "generated new file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$3aaf2084$3f52113a(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->lastRollOverTime:J

    .line 102
    const/4 v0, 0x1

    .line 1147
    .end local v1    # "targetFileName":Ljava/lang/String;
    :cond_2f
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->rollOverListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/services/events/EventsStorageListener;

    .line 1149
    :try_start_41
    invoke-interface {v2}, Lio/fabric/sdk/android/services/events/EventsStorageListener;->onRollOver$552c4e01()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_35

    .line 1151
    :catch_45
    move-exception v2

    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->context:Landroid/content/Context;

    const-string/jumbo v4, "One of the roll over listeners threw an exception"

    invoke-static {v2, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError$43da9ce8(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_35

    .line 106
    :cond_4f
    return v0
.end method

.method public final writeEvent(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->transform:Lio/fabric/sdk/android/services/events/EventTransform;

    invoke-interface {v1, p1}, Lio/fabric/sdk/android/services/events/EventTransform;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 68
    .local v0, "eventBytes":[B
    array-length v1, v0

    .line 1116
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->getMaxByteSizePerFile()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lio/fabric/sdk/android/services/events/EventsStorage;->canWorkingFileStore(II)Z

    move-result v2

    if-nez v2, :cond_46

    .line 1117
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v6}, Lio/fabric/sdk/android/services/events/EventsStorage;->getWorkingFileUsedSizeInBytes()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->getMaxByteSizePerFile()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1123
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$3aaf2084$3f52113a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->rollFileOver()Z

    .line 70
    :cond_46
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/events/EventsStorage;->add([B)V

    .line 71
    return-void
.end method
