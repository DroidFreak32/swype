.class public abstract Lcom/nuance/input/swypecorelib/T9WriteCJK;
.super Lcom/nuance/input/swypecorelib/T9Write;
.source "T9WriteCJK.java"


# static fields
.field public static final MAXWORDLEN:I = 0x20


# instance fields
.field protected mEndsWithInstGest:[I

.field protected mResultCount:[I

.field protected mResultType:[I

.field protected mScratchBuffer:[C

.field protected mScratchInt:[I

.field protected mScratchIntWordSource:[I

.field protected mStartWord:[C

.field protected mTextContext:Ljava/lang/String;

.field protected mWordBuffer:[C

.field protected nativeContextStarted:Z


# direct methods
.method constructor <init>(Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;)V
    .locals 2
    .param p1, "settings"    # Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0, p1}, Lcom/nuance/input/swypecorelib/T9Write;-><init>(Lcom/nuance/input/swypecorelib/T9WriteSetting;)V

    .line 17
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchBuffer:[C

    .line 19
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchInt:[I

    .line 21
    const/16 v0, 0x15

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mStartWord:[C

    .line 22
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mWordBuffer:[C

    .line 23
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mResultCount:[I

    .line 24
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mEndsWithInstGest:[I

    .line 25
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mResultType:[I

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mTextContext:Ljava/lang/String;

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchIntWordSource:[I

    .line 34
    return-void
.end method

.method private static native Write_CJK_addArc(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native Write_CJK_beginArc(J)I
.end method

.method private static native Write_CJK_changeSettings(JLcom/nuance/input/swypecorelib/T9WriteSetting;)I
.end method

.method private static native Write_CJK_clearCommonChar(J)I
.end method

.method public static native Write_CJK_enableUsageLogging(JZ)V
.end method

.method private static native Write_CJK_endArc(J)I
.end method

.method private static native Write_CJK_finish(J)I
.end method

.method private static native Write_CJK_getDatabaseVersion(J)Ljava/lang/String;
.end method

.method private static native Write_CJK_getRecognitionCandidate(JI[CI[I[I[I)I
.end method

.method private static native Write_CJK_getVersion(J)Ljava/lang/String;
.end method

.method private static native Write_CJK_getWord(JI[C[II[I)Z
.end method

.method private static native Write_CJK_noteSelectedCandidate(JI)I
.end method

.method private static native Write_CJK_recognize(J[C[I)I
.end method

.method private static native Write_CJK_setAttribute(JII)Z
.end method

.method private static native Write_CJK_setCommonChar(J)I
.end method

.method private static native Write_CJK_setContext(J[CI)Z
.end method

.method private static native Write_CJK_start(JLcom/nuance/input/swypecorelib/T9WriteSetting;I)I
.end method

.method public static native Write_CJK_updateAlternativeDirection(JZ)V
.end method

.method public static native Write_CJK_updateAttachingCommonWordsLDB(JZ)V
.end method

.method public static native Write_CJK_updateRotationSetting(JZ)V
.end method

.method private getRecognizeCandidates()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 135
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 137
    .local v8, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mStartWord:[C

    aput-char v9, v0, v9

    .line 139
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mStartWord:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mResultCount:[I

    invoke-static {v0, v1, v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_recognize(J[C[I)I

    move-result v0

    if-nez v0, :cond_2

    .line 140
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mResultCount:[I

    aget v0, v0, v9

    if-ge v2, v0, :cond_2

    .line 141
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mWordBuffer:[C

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchInt:[I

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mEndsWithInstGest:[I

    iget-object v7, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mResultType:[I

    invoke-static/range {v0 .. v7}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_getRecognitionCandidate(JI[CI[I[I[I)I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mEndsWithInstGest:[I

    aget v0, v0, v9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mWordBuffer:[C

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchInt:[I

    aget v3, v3, v9

    .line 147
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->isChineseTraditional()Z

    move-result v4

    .line 146
    invoke-static {v0, v1, v9, v3, v4}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->appendWithTransform(Ljava/lang/StringBuilder;[CIIZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "i":I
    :cond_2
    return-object v8
.end method


# virtual methods
.method public clearCommonChar()I
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_clearCommonChar(J)I

    move-result v0

    return v0
.end method

.method public consume(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V
    .locals 10
    .param p1, "item"    # Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;

    .prologue
    const-wide/16 v8, 0x0

    .line 79
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 131
    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :goto_0
    return-void

    .line 83
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :cond_0
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 84
    :try_start_0
    iget-boolean v4, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContextStarted:Z

    if-eqz v4, :cond_1

    iget-wide v6, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1

    .line 85
    iget v4, p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 131
    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :cond_1
    :goto_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 88
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_0
    :try_start_1
    instance-of v4, p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;

    if-eqz v4, :cond_1

    .line 89
    iget-wide v6, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    iget-object v4, p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;->mArc1:Ljava/util/List;

    invoke-static {v6, v7, v4}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_addArc(JLjava/util/List;)I

    goto :goto_1

    .line 94
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_1
    iget-wide v6, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v6, v7}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_beginArc(J)I

    goto :goto_1

    .line 98
    :pswitch_2
    iget-wide v6, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v6, v7}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_endArc(J)I

    goto :goto_1

    .line 102
    :pswitch_3
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->getRecognizeCandidates()Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v4, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    invoke-direct {v4, v0}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto :goto_1

    .line 108
    .end local v0    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :pswitch_4
    instance-of v4, p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;

    if-eqz v4, :cond_1

    .line 109
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    iget-char v1, p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;->mChar:C

    .line 110
    .local v1, "ch":C
    new-instance v4, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    invoke-direct {v4, v1}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;-><init>(C)V

    invoke-virtual {p0, v4}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto :goto_1

    .line 116
    .end local v1    # "ch":C
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_5
    instance-of v4, p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;

    if-eqz v4, :cond_1

    .line 117
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    iget-object v3, p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;->mText:Ljava/lang/CharSequence;

    .line 118
    .local v3, "text":Ljava/lang/CharSequence;
    new-instance v4, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    invoke-direct {v4, v3}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto :goto_1

    .line 124
    .end local v3    # "text":Ljava/lang/CharSequence;
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_6
    instance-of v4, p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;

    if-eqz v4, :cond_1

    .line 125
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    iget-object v2, p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;->mSettings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    .line 126
    .local v2, "settings":Lcom/nuance/input/swypecorelib/T9WriteSetting;
    iget-wide v6, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v6, v7, v2}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_changeSettings(JLcom/nuance/input/swypecorelib/T9WriteSetting;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public enableUsageLogging(Z)I
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 233
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_enableUsageLogging(JZ)V

    .line 234
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public finishSession()V
    .locals 6

    .prologue
    .line 47
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->clearQueue()V

    .line 49
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 50
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_finish(J)I

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContextStarted:Z

    .line 53
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDatabaseVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 68
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_getDatabaseVersion(J)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 59
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_getVersion(J)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getWord(ILjava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 9
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/StringBuilder;
    .param p3, "wordSource"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v8, 0x0

    .line 194
    invoke-virtual {p3, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 195
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 197
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchBuffer:[C

    array-length v5, v2

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchIntWordSource:[I

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_getWord(JI[C[II[I)Z

    move-result v7

    .line 200
    .local v7, "success":Z
    if-eqz v7, :cond_0

    .line 201
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchInt:[I

    aget v1, v1, v8

    .line 202
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->isChineseTraditional()Z

    move-result v2

    .line 201
    invoke-static {p2, v0, v8, v1, v2}, Lcom/nuance/input/swypecorelib/ChineseConversionUtil;->appendWithTransform(Ljava/lang/StringBuilder;[CIIZ)Ljava/lang/StringBuilder;

    .line 203
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mScratchIntWordSource:[I

    aget v0, v0, v8

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 206
    :cond_0
    return v7
.end method

.method public isChineseTraditional()Z
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mLanguageID:I

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mLanguageID:I

    const/16 v1, 0xe2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public learnNewWord(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public noteSelectedCandidate(I)Z
    .locals 2
    .param p1, "wordIndex"    # I

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_noteSelectedCandidate(JI)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttribute(II)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_setAttribute(JII)Z

    move-result v0

    return v0
.end method

.method public setCommonChar()I
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_setCommonChar(J)I

    move-result v0

    return v0
.end method

.method public setContext(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "newContext"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    if-nez p1, :cond_1

    .line 165
    const-string/jumbo v1, ""

    .line 169
    .local v1, "context":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mTextContext:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 170
    const/4 v0, 0x0

    .line 177
    :cond_0
    :goto_1
    return v0

    .line 167
    .end local v1    # "context":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "context":Ljava/lang/String;
    goto :goto_0

    .line 173
    :cond_2
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_setContext(J[CI)Z

    move-result v0

    .line 174
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 175
    iput-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mTextContext:Ljava/lang/String;

    goto :goto_1
.end method

.method public setWritingDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setWritingDirection(I)V

    .line 246
    return-void
.end method

.method public startSession(I)V
    .locals 4
    .param p1, "languageID"    # I

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 39
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mLanguageID:I

    .line 40
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->clearQueue()V

    .line 41
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-static {v0, v1, v2, p1}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_start(JLcom/nuance/input/swypecorelib/T9WriteSetting;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContextStarted:Z

    .line 43
    :cond_0
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAlternativeDirection(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 261
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_updateAlternativeDirection(JZ)V

    .line 263
    :cond_0
    return-void
.end method

.method public updateAttachingCommonWordsLDB(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 256
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_updateAttachingCommonWordsLDB(JZ)V

    .line 258
    :cond_0
    return-void
.end method

.method public updateRotationSetting(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 250
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCJK;->nativeContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/T9WriteCJK;->Write_CJK_updateRotationSetting(JZ)V

    .line 252
    :cond_0
    return-void
.end method
