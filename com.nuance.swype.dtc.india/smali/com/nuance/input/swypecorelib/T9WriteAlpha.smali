.class public Lcom/nuance/input/swypecorelib/T9WriteAlpha;
.super Lcom/nuance/input/swypecorelib/T9Write;
.source "T9WriteAlpha.java"


# instance fields
.field private mEnableInstantGesture:Z

.field private mIsInstantGesture:[I

.field private mResultCount:[I

.field private mStartWord:[C


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;-><init>()V

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/T9Write;-><init>(Lcom/nuance/input/swypecorelib/T9WriteSetting;)V

    .line 19
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mResultCount:[I

    .line 20
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mIsInstantGesture:[I

    .line 21
    const/16 v0, 0x41

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    .line 22
    iput-boolean v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mEnableInstantGesture:Z

    .line 26
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 27
    return-void
.end method

.method private static native Write_Alpha_addArc(JLjava/util/List;Ljava/util/List;[IZ)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;[IZ)I"
        }
    .end annotation
.end method

.method private static native Write_Alpha_beginArc(J)I
.end method

.method private static native Write_Alpha_changeSettings(JLcom/nuance/input/swypecorelib/T9WriteSetting;)I
.end method

.method private static native Write_Alpha_create(Ljava/lang/String;)J
.end method

.method private static native Write_Alpha_destroy(J)V
.end method

.method private static native Write_Alpha_enableUsageLogging(JZ)V
.end method

.method private static native Write_Alpha_endArc(J)I
.end method

.method private static native Write_Alpha_finish(J)I
.end method

.method private static native Write_Alpha_getCandidates(JLjava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;",
            ">;I)I"
        }
    .end annotation
.end method

.method private static native Write_Alpha_getDatabaseVersion(J)Ljava/lang/String;
.end method

.method private static native Write_Alpha_getVersion(J)Ljava/lang/String;
.end method

.method private static native Write_Alpha_noteSelectedCandidate(JI)I
.end method

.method private static native Write_Alpha_recognize(J[C[I)I
.end method

.method private static native Write_Alpha_start(JLcom/nuance/input/swypecorelib/T9WriteSetting;I)I
.end method

.method private addXT9WorCandidates(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 2
    .param p1, "hwrWordCandidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "xt9WrodCandidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 90
    if-eqz p2, :cond_0

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 93
    invoke-virtual {p2, v0}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private buildXT9WordCandiates(Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;I)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 1
    .param p1, "first"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;
    .param p2, "max"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public static copyWordArray([CLjava/lang/CharSequence;)V
    .locals 4
    .param p0, "wordArray"    # [C
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "i":I
    if-eqz p1, :cond_0

    .line 254
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 255
    .local v1, "nchars":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 256
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, p0, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "nchars":I
    :cond_0
    const/4 v2, 0x0

    aput-char v2, p0, v0

    .line 260
    return-void
.end method

.method private isGestureCharacter(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 281
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->isInstantGestureCharacter(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->isMultiTouchGesturesCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static normalizeReturnChar(C)C
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 263
    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/16 p0, 0xa

    .end local p0    # "c":C
    :cond_0
    return p0
.end method

.method private trimInstantGestureCharacterRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 269
    .local v0, "end":I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->isGestureCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 274
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 277
    .end local p1    # "text":Ljava/lang/String;
    :cond_1
    return-object p1
.end method


# virtual methods
.method public consume(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V
    .locals 20
    .param p1, "item"    # Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 247
    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :goto_0
    return-void

    .line 109
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 110
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->hasSession()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    move-object/from16 v0, p1

    iget v2, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 247
    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :cond_1
    :goto_1
    monitor-exit v19

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 114
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_beginArc(J)I

    goto :goto_1

    .line 118
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_endArc(J)I

    goto :goto_1

    .line 122
    :pswitch_2
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;

    if-eqz v2, :cond_1

    .line 123
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-object/from16 v0, p1

    check-cast v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;->mArc1:Ljava/util/List;

    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;->mArc2:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mIsInstantGesture:[I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mEnableInstantGesture:Z

    invoke-static/range {v2 .. v7}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_addArc(JLjava/util/List;Ljava/util/List;[IZ)I

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mIsInstantGesture:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 134
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mResultCount:[I

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_recognize(J[C[I)I

    move-result v2

    if-nez v2, :cond_1

    .line 136
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v14, "recognizeCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mResultCount:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v2, v3, v14, v4}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_getCandidates(JLjava/util/List;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 144
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    iget v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mEndWithInstantGesture:I

    if-eqz v2, :cond_1

    .line 145
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    iget-object v3, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    const/4 v2, 0x0

    .line 146
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    iget-object v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 145
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 147
    invoke-static {v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->normalizeReturnChar(C)C

    move-result v10

    .line 149
    .local v10, "gestureChar":C
    new-instance v8, Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {v8, v2}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 150
    .local v8, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 151
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    .line 152
    .local v11, "hwrCandidate":Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;
    iget-object v2, v11, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->trimInstantGestureCharacterRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    .line 154
    iget-object v2, v11, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {v11}, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->toWordCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 150
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 160
    .end local v11    # "hwrCandidate":Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_endArc(J)I

    .line 161
    new-instance v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;

    invoke-direct {v2, v10, v8}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;-><init>(CLcom/nuance/input/swypecorelib/Candidates;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_1

    .line 172
    .end local v8    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    .end local v10    # "gestureChar":C
    .end local v12    # "i":I
    .end local v14    # "recognizeCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;>;"
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_3
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$RecognizeQueueItem;

    if-eqz v2, :cond_1

    .line 173
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$RecognizeQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$RecognizeQueueItem;->mStartWord:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 174
    .local v16, "startWord":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->copyWordArray([CLjava/lang/CharSequence;)V

    .line 176
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mResultCount:[I

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_recognize(J[C[I)I

    move-result v2

    if-nez v2, :cond_1

    .line 178
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .restart local v14    # "recognizeCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mResultCount:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v2, v3, v14, v4}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_getCandidates(JLjava/util/List;I)I

    move-result v2

    if-lez v2, :cond_5

    .line 182
    new-instance v8, Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {v8, v2}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 184
    .restart local v8    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 186
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    .line 187
    .restart local v11    # "hwrCandidate":Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;
    iget-object v2, v11, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->trimInstantGestureCharacterRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    .line 190
    iget-object v2, v11, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 191
    invoke-virtual {v11}, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->toWordCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 184
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 195
    .end local v11    # "hwrCandidate":Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;
    :cond_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_endArc(J)I

    .line 197
    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    if-lez v2, :cond_1

    .line 198
    const/4 v2, 0x0

    .line 199
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    .line 201
    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v3

    rsub-int/lit8 v3, v3, 0xa

    .line 198
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->buildXT9WordCandiates(Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v18

    .line 202
    .local v18, "xt9Candidates":Lcom/nuance/input/swypecorelib/Candidates;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addXT9WorCandidates(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 204
    new-instance v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    invoke-direct {v2, v8}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;-><init>(Lcom/nuance/input/swypecorelib/Candidates;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_1

    .line 209
    .end local v8    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    .end local v12    # "i":I
    .end local v18    # "xt9Candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_endArc(J)I

    goto/16 :goto_1

    .line 217
    .end local v14    # "recognizeCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;>;"
    .end local v16    # "startWord":Ljava/lang/CharSequence;
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_4
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;

    if-eqz v2, :cond_1

    .line 218
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget-char v9, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;->mChar:C

    .line 219
    .local v9, "ch":C
    new-instance v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    invoke-direct {v2, v9}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;-><init>(C)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_1

    .line 224
    .end local v9    # "ch":C
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_5
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$KeyQueueItem;

    if-eqz v2, :cond_1

    .line 225
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$KeyQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$KeyQueueItem;->mKey:I

    .line 226
    .local v13, "key":I
    new-instance v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$KeyWriteEvent;

    invoke-direct {v2, v13}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$KeyWriteEvent;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_1

    .line 231
    .end local v13    # "key":I
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_6
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;

    if-eqz v2, :cond_1

    .line 232
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .line 233
    .local v17, "text":Ljava/lang/CharSequence;
    new-instance v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_1

    .line 239
    .end local v17    # "text":Ljava/lang/CharSequence;
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_7
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;

    if-eqz v2, :cond_1

    .line 240
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;->mSettings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    .line 241
    .local v15, "settings":Lcom/nuance/input/swypecorelib/T9WriteSetting;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3, v15}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_changeSettings(JLcom/nuance/input/swypecorelib/T9WriteSetting;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method protected create_native_context(Ljava/lang/String;)J
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_create(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    .line 32
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    return-wide v0
.end method

.method protected destroy_native_context(J)V
    .locals 1
    .param p1, "nativeContext"    # J

    .prologue
    .line 37
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_destroy(J)V

    .line 38
    return-void
.end method

.method public enableInstantGesture(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mEnableInstantGesture:Z

    .line 308
    return-void
.end method

.method public enableUsageLogging(Z)I
    .locals 6
    .param p1, "isEnabled"    # Z

    .prologue
    .line 297
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 299
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3, p1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_enableUsageLogging(JZ)V

    .line 300
    const/4 v0, 0x0

    monitor-exit v1

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishSession()V
    .locals 4

    .prologue
    .line 53
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->clearQueue()V

    .line 56
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_finish(J)I

    .line 57
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 59
    :cond_0
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
    .locals 6

    .prologue
    .line 75
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 77
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_getDatabaseVersion(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    monitor-exit v1

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 64
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 66
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_getVersion(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    monitor-exit v1

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteSelectedCandidate(I)I
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 287
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 289
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3, p1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_noteSelectedCandidate(JI)I

    move-result v0

    monitor-exit v1

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startSession(I)V
    .locals 4
    .param p1, "languageID"    # I

    .prologue
    .line 42
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLanguageID:I

    .line 45
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 46
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-static {v2, v3, v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_start(JLcom/nuance/input/swypecorelib/T9WriteSetting;I)I

    .line 48
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
