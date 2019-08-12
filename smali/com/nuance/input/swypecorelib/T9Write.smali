.class public abstract Lcom/nuance/input/swypecorelib/T9Write;
.super Ljava/lang/Object;
.source "T9Write.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;


# instance fields
.field protected final mLock:Ljava/lang/Object;

.field protected final mRecognizerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

.field protected nativeContext:J

.field protected final settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;


# direct methods
.method protected constructor <init>(Lcom/nuance/input/swypecorelib/T9WriteSetting;)V
    .locals 1
    .param p1, "settings"    # Lcom/nuance/input/swypecorelib/T9WriteSetting;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-direct {v0, p0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;-><init>(Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    .line 27
    return-void
.end method


# virtual methods
.method public addDigitsAndSymbolsOnlyCategory()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addDigitsAndSymbolsOnlyCategory()V

    .line 195
    return-void
.end method

.method public addEmailOnlyCategory()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addEmailOnlyCategory()V

    .line 140
    return-void
.end method

.method public addGestureCategory()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addGestureCategory()V

    .line 89
    return-void
.end method

.method public addLatinLetterCategory()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addLatinLetterCategory()V

    .line 125
    return-void
.end method

.method public addNumberCategory()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addNumberCategory()V

    .line 135
    return-void
.end method

.method public addNumberOnlyCategory()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addNumberOnlyCategory()V

    .line 104
    return-void
.end method

.method public addOnlyLatinLetterCategory()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addOnlyLatinLetterCategory()V

    .line 115
    return-void
.end method

.method public addOnlyTextCategory()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addOnlyTextCategory()V

    .line 109
    return-void
.end method

.method public addPhoneNumberOnlyCategory()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addPhoneNumberOnlyCategory()V

    .line 190
    return-void
.end method

.method public addPunctuationCategory()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addPunctuationCategory()V

    .line 120
    return-void
.end method

.method public addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public addSymbolCategory()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addSymbolCategory()V

    .line 130
    return-void
.end method

.method public addTextCategory()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addTextCategory()V

    .line 84
    return-void
.end method

.method public addUrlOnlyCategory()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addUrlOnlyCategory()V

    .line 145
    return-void
.end method

.method public applyChangedSettings()V
    .locals 3

    .prologue
    .line 204
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addSettings(Lcom/nuance/input/swypecorelib/T9WriteSetting;)V

    .line 212
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearCategory()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->clearCategory()V

    .line 150
    return-void
.end method

.method public createSession(Ljava/lang/String;)V
    .locals 6
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/nuance/input/swypecorelib/T9Write;->create_native_context(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    .line 44
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->start()V

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract create_native_context(Ljava/lang/String;)J
.end method

.method public destroySession()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 51
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 53
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    invoke-virtual {p0, v2, v3}, Lcom/nuance/input/swypecorelib/T9Write;->destroy_native_context(J)V

    .line 54
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    .line 55
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->stop()V

    .line 56
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract destroy_native_context(J)V
.end method

.method public endArcsAddingSequence()V
    .locals 2

    .prologue
    .line 226
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->endArcSequence()V

    .line 230
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public abstract finishSession()V
.end method

.method public abstract getDatabaseVersion()Ljava/lang/String;
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRecognitionMode()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->getRecognitionMode()I

    move-result v0

    return v0
.end method

.method public getRecognizerDelay()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->getRecognizerDelay()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/nuance/input/swypecorelib/T9WriteSetting;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasSession()Z
    .locals 4

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;

    .line 63
    invoke-interface {v1, p1}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;->onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 4
    .param p3, "startWord"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "arc1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, "arc2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 238
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3, p3}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 240
    :cond_1
    if-eqz p1, :cond_2

    .line 241
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p3}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 242
    :cond_2
    if-eqz p2, :cond_0

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3, p3}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public queueChar(C)V
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 270
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addChar(C)V

    .line 274
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public queueKey(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 279
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addKey(I)V

    .line 283
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public queueRecognition(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "startWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 252
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addRecognize(Ljava/lang/CharSequence;)V

    .line 256
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public queueText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public final setHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setHeight(I)V

    .line 160
    return-void
.end method

.method public setRecognitionMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setRecognitionMode(I)V

    .line 180
    return-void
.end method

.method public setRecognizerDelay(I)V
    .locals 1
    .param p1, "delayMS"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setRecognizerDelay(I)V

    .line 94
    return-void
.end method

.method public final setWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setWidth(I)V

    .line 155
    return-void
.end method

.method public setWritingDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setWritingDirection(I)V

    .line 185
    return-void
.end method

.method public startArcsAddingSequence()V
    .locals 2

    .prologue
    .line 217
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->startArcSequence()V

    .line 221
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public abstract startSession(I)V
.end method
