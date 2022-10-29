.class public abstract Lcom/nuance/input/swypecorelib/T9Write;
.super Ljava/lang/Object;
.source "T9Write.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;


# static fields
.field public static final CHINESE_HONGKONG_LANGUAGEID:I = 0xe2

.field public static final CHINESE_TRAD_LANGUAGEID:I = 0xe0


# instance fields
.field protected mLanguageID:I

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
    .registers 3
    .param p1, "settings"    # Lcom/nuance/input/swypecorelib/T9WriteSetting;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-direct {v0, p0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;-><init>(Lcom/nuance/input/swypecorelib/WriteThreadQueue$OnWriteThreadQueueConsumer;)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    .line 31
    return-void
.end method


# virtual methods
.method public addDigitsAndSymbolsOnlyCategory()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addDigitsAndSymbolsOnlyCategory()V

    .line 240
    return-void
.end method

.method public addEmailOnlyCategory()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addEmailOnlyCategory()V

    .line 155
    return-void
.end method

.method public addGestureCategory()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addGestureCategory()V

    .line 104
    return-void
.end method

.method public addLatinLetterCategory()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addLatinLetterCategory()V

    .line 140
    return-void
.end method

.method public addNumberCategory()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addNumberCategory()V

    .line 150
    return-void
.end method

.method public addNumberOnlyCategory()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addNumberOnlyCategory()V

    .line 119
    return-void
.end method

.method public addOnlyLatinLetterCategory()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addOnlyLatinLetterCategory()V

    .line 130
    return-void
.end method

.method public addOnlyTextCategory()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addOnlyTextCategory()V

    .line 124
    return-void
.end method

.method public addPhoneNumberOnlyCategory()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addPhoneNumberOnlyCategory()V

    .line 235
    return-void
.end method

.method public addPunctuationCategory()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addPunctuationCategory()V

    .line 135
    return-void
.end method

.method public addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 75
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_d
    return-void
.end method

.method public addSymbolCategory()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addSymbolCategory()V

    .line 145
    return-void
.end method

.method public addTextCategory()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addTextCategory()V

    .line 99
    return-void
.end method

.method public addUrlOnlyCategory()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addUrlOnlyCategory()V

    .line 160
    return-void
.end method

.method public applyChangedSettings()V
    .registers 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_3
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 255
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addSettings(Lcom/nuance/input/swypecorelib/T9WriteSetting;)V

    .line 257
    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public clearCategory()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->clearCategory()V

    .line 165
    return-void
.end method

.method public createSession(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .param p1, "databaseConfigFile"    # Ljava/lang/String;
    .param p2, "externalDatabasePath"    # [Ljava/lang/String;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_3
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_16

    .line 45
    invoke-virtual {p0, p1}, Lcom/nuance/input/swypecorelib/T9Write;->create_native_context(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    .line 48
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->start()V

    .line 50
    :cond_16
    invoke-static {p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setExternalDatabasePath([Ljava/lang/String;)V

    .line 51
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method protected abstract create_native_context(Ljava/lang/String;)J
.end method

.method public destroySession()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 56
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_5
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1e

    .line 58
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    invoke-virtual {p0, v2, v3}, Lcom/nuance/input/swypecorelib/T9Write;->destroy_native_context(J)V

    .line 59
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    .line 60
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->stop()V

    .line 61
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    :cond_1e
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v0
.end method

.method protected abstract destroy_native_context(J)V
.end method

.method public endArcsAddingSequence()V
    .registers 3

    .prologue
    .line 271
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_3
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 273
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->endArcSequence()V

    .line 275
    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public abstract finishSession()V
.end method

.method public abstract getDatabaseVersion()Ljava/lang/String;
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getInputGuide()I
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->getInputGuide()I

    move-result v0

    return v0
.end method

.method public getRecognitionMode()I
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->getRecognitionMode()I

    move-result v0

    return v0
.end method

.method public getRecognizerDelay()I
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->getRecognizerDelay()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/nuance/input/swypecorelib/T9WriteSetting;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasSession()Z
    .registers 5

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRecognizeListenerEmpty()Z
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;

    .line 68
    invoke-interface {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;->onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto :goto_6

    .line 70
    :cond_16
    return-void
.end method

.method public queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    .registers 8
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
    .line 280
    .local p1, "arc1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, "arc2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_3
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 282
    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1e

    .line 283
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3, p3}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 291
    :cond_1c
    :goto_1c
    monitor-exit v1

    return-void

    .line 285
    :cond_1e
    if-eqz p1, :cond_2f

    .line 286
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p3}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 291
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0

    .line 287
    :cond_2f
    if-eqz p2, :cond_1c

    .line 288
    :try_start_31
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3, p3}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_2c

    goto :goto_1c
.end method

.method public queueChar(C)V
    .registers 4
    .param p1, "ch"    # C

    .prologue
    .line 315
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_3
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 317
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addChar(C)V

    .line 319
    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public queueKey(I)V
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 324
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_3
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 326
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addKey(I)V

    .line 328
    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public queueRecognition(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "startWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 297
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_3
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 299
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addRecognize(Ljava/lang/CharSequence;)V

    .line 301
    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public queueText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 306
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_3
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 308
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->addText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public removeAllRecognizeListener()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 88
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    :cond_d
    return-void
.end method

.method public removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 82
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mRecognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_d
    return-void
.end method

.method public final setBaseline(I)V
    .registers 3
    .param p1, "b"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setBaseline(I)V

    .line 200
    return-void
.end method

.method public final setHeight(I)V
    .registers 3
    .param p1, "h"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setHeight(I)V

    .line 175
    return-void
.end method

.method public final setHelpline(I)V
    .registers 3
    .param p1, "h"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setHelpline(I)V

    .line 205
    return-void
.end method

.method public final setInputGuide(I)V
    .registers 3
    .param p1, "inputGuide"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setInputGuide(I)V

    .line 190
    return-void
.end method

.method public setRecognitionMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setRecognitionMode(I)V

    .line 225
    return-void
.end method

.method public setRecognizerDelay(I)V
    .registers 3
    .param p1, "delayMS"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setRecognizerDelay(I)V

    .line 109
    return-void
.end method

.method public final setSupportLineSet(I)V
    .registers 3
    .param p1, "supportLineSet"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setSupportLineSet(I)V

    .line 195
    return-void
.end method

.method public final setTopline(I)V
    .registers 3
    .param p1, "t"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setTopline(I)V

    .line 210
    return-void
.end method

.method public final setWidth(I)V
    .registers 3
    .param p1, "w"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setWidth(I)V

    .line 170
    return-void
.end method

.method public setWritingDirection(I)V
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setWritingDirection(I)V

    .line 230
    return-void
.end method

.method public startArcsAddingSequence()V
    .registers 3

    .prologue
    .line 262
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9Write;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_3
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9Write;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 264
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9Write;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->startArcSequence()V

    .line 266
    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public abstract startSession(I)V
.end method
