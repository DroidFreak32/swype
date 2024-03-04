.class public Lcom/nuance/input/swypecorelib/T9WriteAlpha;
.super Lcom/nuance/input/swypecorelib/T9Write;
.source "T9WriteAlpha.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mIsInstantGesture:[I

.field private mResultCount:[I

.field private mStartWord:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;-><init>()V

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/T9Write;-><init>(Lcom/nuance/input/swypecorelib/T9WriteSetting;)V

    .line 18
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mResultCount:[I

    .line 19
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mIsInstantGesture:[I

    .line 20
    const/16 v0, 0x41

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    .line 24
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 25
    return-void
.end method

.method private static native Write_Alpha_addArc(JLjava/util/List;Ljava/util/List;[I)I
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
            ">;[I)I"
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
    .line 87
    if-eqz p2, :cond_0

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 90
    invoke-virtual {p2, v0}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private buildXT9WordCandiates(Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;I)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 1
    .param p1, "first"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;
    .param p2, "max"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static copyWordArray([CLjava/lang/CharSequence;)V
    .locals 4
    .param p0, "wordArray"    # [C
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 239
    sget-boolean v2, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    array-length v2, p0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 241
    .local v0, "i":I
    if-eqz p1, :cond_1

    .line 243
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 244
    .local v1, "nchars":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 245
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, p0, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "nchars":I
    :cond_1
    const/4 v2, 0x0

    aput-char v2, p0, v0

    .line 249
    return-void
.end method

.method private isGestureCharacter(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 270
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->isInstantGestureCharacter(C)Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 252
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
    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 258
    .local v0, "end":I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->isGestureCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 263
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 266
    .end local p1    # "text":Ljava/lang/String;
    :cond_1
    return-object p1
.end method


# virtual methods
.method public consume(Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;)V
    .locals 21
    .param p1, "item"    # Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-nez v15, :cond_0

    .line 235
    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :goto_0
    return-void

    .line 106
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 107
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->hasSession()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 108
    move-object/from16 v0, p1

    iget v15, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;->mType:I

    packed-switch v15, :pswitch_data_0

    .line 235
    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :cond_1
    :goto_1
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 111
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_beginArc(J)I

    goto :goto_1

    .line 115
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_endArc(J)I

    goto :goto_1

    .line 119
    :pswitch_2
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;

    if-eqz v15, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    check-cast v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;

    move-object v15, v0

    iget-object v15, v15, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;->mArc1:Ljava/util/List;

    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ArcQueueItem;->mArc2:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mIsInstantGesture:[I

    move-object/from16 v20, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-static {v0, v1, v15, v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_addArc(JLjava/util/List;Ljava/util/List;[I)I

    .line 124
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mIsInstantGesture:[I

    const/16 v17, 0x0

    aget v15, v15, v17

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 129
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mResultCount:[I

    move-object/from16 v17, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v15, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_recognize(J[C[I)I

    move-result v15

    if-nez v15, :cond_1

    .line 131
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v10, "recognizeCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;>;"
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mResultCount:[I

    const/16 v17, 0x0

    aget v15, v15, v17

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v10, v15}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_getCandidates(JLjava/util/List;I)I

    move-result v15

    if-lez v15, :cond_1

    .line 139
    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    iget v15, v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mEndWithInstantGesture:I

    if-eqz v15, :cond_1

    .line 140
    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    iget-object v0, v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    iget-object v15, v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 142
    invoke-static {v15}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->normalizeReturnChar(C)C

    move-result v6

    .line 144
    .local v6, "gestureChar":C
    new-instance v4, Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v15, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {v4, v15}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 145
    .local v4, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_2

    .line 146
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    .line 147
    .local v7, "hwrCandidate":Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;
    iget-object v15, v7, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->trimInstantGestureCharacterRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    .line 149
    iget-object v15, v7, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2

    .line 150
    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->toWordCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 145
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 155
    .end local v7    # "hwrCandidate":Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_endArc(J)I

    .line 156
    new-instance v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;

    invoke-direct {v15, v6, v4}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;-><init>(CLcom/nuance/input/swypecorelib/Candidates;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_1

    .line 167
    .end local v4    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    .end local v6    # "gestureChar":C
    .end local v8    # "i":I
    .end local v10    # "recognizeCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;>;"
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_3
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$RecognizeQueueItem;

    if-eqz v15, :cond_1

    .line 168
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$RecognizeQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$RecognizeQueueItem;->mStartWord:Ljava/lang/CharSequence;

    .line 169
    .local v12, "startWord":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    invoke-static {v15, v12}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->copyWordArray([CLjava/lang/CharSequence;)V

    .line 171
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mResultCount:[I

    move-object/from16 v17, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v15, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_recognize(J[C[I)I

    move-result v15

    if-nez v15, :cond_1

    .line 173
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .restart local v10    # "recognizeCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;>;"
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mResultCount:[I

    const/16 v17, 0x0

    aget v15, v15, v17

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v10, v15}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_getCandidates(JLjava/util/List;I)I

    move-result v15

    if-lez v15, :cond_1

    .line 177
    new-instance v4, Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v15, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {v4, v15}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 178
    .restart local v4    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_4

    .line 179
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    .line 180
    .restart local v7    # "hwrCandidate":Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;
    iget-object v15, v7, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->trimInstantGestureCharacterRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    .line 182
    iget-object v15, v7, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 183
    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->toWordCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 178
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 187
    .end local v7    # "hwrCandidate":Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_endArc(J)I

    .line 189
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v15

    if-lez v15, :cond_1

    .line 190
    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v17

    rsub-int/lit8 v17, v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->buildXT9WordCandiates(Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v14

    .line 193
    .local v14, "xt9Candidates":Lcom/nuance/input/swypecorelib/Candidates;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addXT9WorCandidates(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 195
    new-instance v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    invoke-direct {v15, v4}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;-><init>(Lcom/nuance/input/swypecorelib/Candidates;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_1

    .line 205
    .end local v4    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    .end local v8    # "i":I
    .end local v10    # "recognizeCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;>;"
    .end local v12    # "startWord":Ljava/lang/CharSequence;
    .end local v14    # "xt9Candidates":Lcom/nuance/input/swypecorelib/Candidates;
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_4
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;

    if-eqz v15, :cond_1

    .line 206
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget-char v5, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$CharQueueItem;->mChar:C

    .line 207
    .local v5, "ch":C
    new-instance v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    invoke-direct {v15, v5}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;-><init>(C)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_1

    .line 212
    .end local v5    # "ch":C
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_5
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$KeyQueueItem;

    if-eqz v15, :cond_1

    .line 213
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$KeyQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget v9, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$KeyQueueItem;->mKey:I

    .line 214
    .local v9, "key":I
    new-instance v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$KeyWriteEvent;

    invoke-direct {v15, v9}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$KeyWriteEvent;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_1

    .line 219
    .end local v9    # "key":I
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_6
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;

    if-eqz v15, :cond_1

    .line 220
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$TextQueueItem;->mText:Ljava/lang/CharSequence;

    .line 221
    .local v13, "text":Ljava/lang/CharSequence;
    new-instance v15, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    invoke-direct {v15, v13}, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_1

    .line 227
    .end local v13    # "text":Ljava/lang/CharSequence;
    .restart local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    :pswitch_7
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;

    if-eqz v15, :cond_1

    .line 228
    check-cast p1, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;

    .end local p1    # "item":Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;->mSettings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    .line 229
    .local v11, "settings":Lcom/nuance/input/swypecorelib/T9WriteSetting;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v11}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_changeSettings(JLcom/nuance/input/swypecorelib/T9WriteSetting;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 108
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
    .line 29
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_create(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    .line 30
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    return-wide v0
.end method

.method protected destroy_native_context(J)V
    .locals 1
    .param p1, "nativeContext"    # J

    .prologue
    .line 35
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_destroy(J)V

    .line 36
    return-void
.end method

.method public enableUsageLogging(Z)I
    .locals 6
    .param p1, "isEnabled"    # Z

    .prologue
    .line 286
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 288
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3, p1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_enableUsageLogging(JZ)V

    .line 289
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    throw v0
.end method

.method public finishSession()V
    .locals 4

    .prologue
    .line 50
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mWriteThreadQueue:Lcom/nuance/input/swypecorelib/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WriteThreadQueue;->clearQueue()V

    .line 53
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_finish(J)I

    .line 54
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 56
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

.method public getDatabaseVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 72
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 74
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_getDatabaseVersion(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    monitor-exit v1

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 61
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 63
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_getVersion(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    monitor-exit v1

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteSelectedCandidate(I)I
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 276
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 278
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    invoke-static {v2, v3, p1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_noteSelectedCandidate(JI)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startSession(I)V
    .locals 4
    .param p1, "languageID"    # I

    .prologue
    .line 40
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->mStartWord:[C

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 43
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->nativeContext:J

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->settings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    invoke-static {v2, v3, v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->Write_Alpha_start(JLcom/nuance/input/swypecorelib/T9WriteSetting;I)I

    .line 45
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
