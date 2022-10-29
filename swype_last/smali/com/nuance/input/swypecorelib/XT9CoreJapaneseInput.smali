.class public Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
.super Lcom/nuance/input/swypecorelib/XT9CoreInput;
.source "XT9CoreJapaneseInput.java"


# static fields
.field public static final MAXRAWINPUTLEN:I = 0x20

.field public static final MAXROMAJICANDIDATESNUM:I = 0x100

.field public static final MAXROMAJIWORDLEN:I = 0x40

.field public static final MAXWORDLIST:I = 0x20

.field private static final WORDLEN_INDEX:I = 0x0

.field private static final WORDSUBSTITUTIONLEN_INDEX:I = 0x2


# instance fields
.field private final alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

.field private final mWordBuffer:[C

.field private final mWordLenResutls:[I

.field private final mWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mWordPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mWordSubBuffer:[C


# direct methods
.method constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;)V
    .registers 5
    .param p1, "alphaCoreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .param p2, "sessionDataCollector"    # Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    .prologue
    const/16 v1, 0x40

    .line 50
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;-><init>(Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;)V

    .line 39
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    .line 40
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordSubBuffer:[C

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 52
    return-void
.end method

.method private static native buildSelectionList(J[I)I
.end method

.method private static native confirmRangeConvWord(JI)Z
.end method

.method private static native create_context(Ljava/lang/String;)J
.end method

.method private static native destroy_context(J)V
.end method

.method private static native finish(J)V
.end method

.method private static native getExactType(J[CI)I
.end method

.method private static native getInlineDivInfo(JI[I[I)I
.end method

.method private static native getInlineText(J[CI)I
.end method

.method private static native getPredictionWord(JI[C[C[II)Z
.end method

.method private static native getPredictionWordCount(J)I
.end method

.method private static native getRangeConvCandidateWord(JI[C[I)Z
.end method

.method private static native getRangeConvCandidateWordCount(J)I
.end method

.method private static native getRangeConvertedPhrase(JI[I[C[I)I
.end method

.method private static native getWord(JI[C[C[II)Z
.end method

.method private static native hasTraceInput(J)Z
.end method

.method private static native initialize(J)I
.end method

.method private static native kanatoromaji(J[CI[CI[II)I
.end method

.method private static native noteWordDone(J[C[C)Z
.end method

.method private recycleWordPool()V
    .registers 6

    .prologue
    .line 398
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 399
    .local v2, "wordPoolSize":I
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 401
    .local v1, "wordListSize":I
    :goto_c
    const/16 v3, 0x20

    if-ge v2, v3, :cond_28

    if-lez v1, :cond_28

    .line 402
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 403
    .local v0, "collect":Ljava/lang/CharSequence;
    if-eqz v0, :cond_25

    .line 404
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    add-int/lit8 v2, v2, 0x1

    .line 407
    :cond_25
    add-int/lit8 v1, v1, -0x1

    .line 408
    goto :goto_c

    .line 409
    .end local v0    # "collect":Ljava/lang/CharSequence;
    :cond_28
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 410
    return-void
.end method

.method private static native resetConversionEngineDictionary()V
.end method

.method public static resetUserDictionary()V
    .registers 1

    .prologue
    .line 632
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isJapaneseEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 633
    invoke-static {}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->resetConversionEngineDictionary()V

    .line 637
    :goto_9
    return-void

    .line 635
    :cond_a
    const-class v0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto :goto_9
.end method

.method private static native setKeyboardType(JI)V
.end method

.method private static native setRomajiOnlyFlag(JI)V
.end method

.method private static native start(J)Z
.end method

.method private static native startRangeConversion(JI[CI)Z
.end method


# virtual methods
.method public addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .registers 5
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    return v0
.end method

.method public breakContext()V
    .registers 1

    .prologue
    .line 329
    return-void
.end method

.method public clearAllKeys()Z
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    move-result v0

    return v0
.end method

.method public clearKey()Z
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKey()Z

    move-result v0

    return v0
.end method

.method public clearKeyByIndex(II)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKeyByIndex(II)Z

    move-result v0

    return v0
.end method

.method public confirmRangeConvWord(I)Z
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 502
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->confirmRangeConvWord(JI)Z

    move-result v0

    return v0
.end method

.method protected create_native_context(Ljava/lang/String;)J
    .registers 4
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->create_context(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected destroy_native_context(J)V
    .registers 4
    .param p1, "inputContext"    # J

    .prologue
    .line 66
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->destroy_context(J)V

    .line 67
    return-void
.end method

.method protected exportDlmAsEvents()Z
    .registers 2

    .prologue
    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public finishSession()V
    .registers 3

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->finish(J)V

    .line 84
    return-void
.end method

.method public getExactType(Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "exactBuffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 347
    if-nez p1, :cond_4

    .line 358
    :cond_3
    :goto_3
    return-void

    .line 351
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 354
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    const/16 v4, 0x100

    invoke-static {v2, v3, v1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getExactType(J[CI)I

    move-result v0

    .local v0, "len":I
    if-lez v0, :cond_3

    .line 356
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-virtual {p1, v1, v5, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public getInlineDivInfo(I[I[I)I
    .registers 6
    .param p1, "maxSize"    # I
    .param p2, "romajiInDivInfo"    # [I
    .param p3, "kanaOutDivInfo"    # [I

    .prologue
    const/4 v0, 0x0

    .line 614
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 615
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 617
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineDivInfo(JI[I[I)I

    move-result v0

    return v0
.end method

.method public getInlineText(Landroid/text/SpannableStringBuilder;)V
    .registers 8
    .param p1, "inlineBuffer"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 367
    if-nez p1, :cond_3

    .line 381
    :cond_2
    return-void

    .line 371
    :cond_3
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 374
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    const/16 v5, 0x40

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineText(J[CI)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_2

    .line 376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v1, :cond_2

    .line 378
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    aget-char v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public getInputCoreCategory()I
    .registers 2

    .prologue
    .line 580
    const/4 v0, 0x3

    return v0
.end method

.method public getKeyCount()I
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public getPredictionWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;
    .registers 14
    .param p1, "defaultWord"    # Landroid/text/SpannableStringBuilder;
    .param p2, "defaultWordIndex"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 283
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->recycleWordPool()V

    .line 285
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getPredictionWordCount(J)I

    move-result v8

    .line 287
    .local v8, "wordCount":I
    const/4 v2, 0x0

    .local v2, "wordIndex":I
    :goto_b
    if-ge v2, v8, :cond_6c

    const/16 v0, 0x20

    if-ge v2, v0, :cond_6c

    .line 289
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordSubBuffer:[C

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/16 v6, 0x40

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getPredictionWord(JI[C[C[II)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 292
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 295
    .local v9, "wordPoolSize":I
    if-lez v9, :cond_66

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    add-int/lit8 v1, v9, -0x1

    .line 296
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v7, v0

    .line 299
    .local v7, "word":Landroid/text/SpannableStringBuilder;
    :goto_34
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 300
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 302
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    aget v0, v0, v10

    if-lez v0, :cond_6c

    .line 304
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    aget v1, v1, v10

    invoke-virtual {v7, v0, v10, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 311
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_59

    .line 313
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 314
    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 317
    :cond_59
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 287
    .end local v7    # "word":Landroid/text/SpannableStringBuilder;
    .end local v9    # "wordPoolSize":I
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 296
    .restart local v9    # "wordPoolSize":I
    :cond_66
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_34

    .line 321
    .end local v9    # "wordPoolSize":I
    :cond_6c
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    return-object v0
.end method

.method public getRangeConvCandidateList(Landroid/text/SpannableStringBuilder;I)Ljava/util/List;
    .registers 12
    .param p1, "defaultWord"    # Landroid/text/SpannableStringBuilder;
    .param p2, "defaultWordIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 531
    const/4 v6, 0x1

    new-array v4, v6, [I

    .line 533
    .local v4, "wordLen":[I
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->recycleWordPool()V

    .line 535
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvCandidateWordCount()I

    move-result v2

    .line 537
    .local v2, "wordCount":I
    const/4 v0, 0x0

    .line 540
    .local v0, "listIndex":I
    const/4 v3, 0x0

    .local v3, "wordIndex":I
    :goto_d
    if-ge v3, v2, :cond_60

    const/16 v6, 0x20

    if-ge v0, v6, :cond_60

    .line 542
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-virtual {p0, v3, v6, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvCandidateWord(I[C[I)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 544
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 547
    .local v5, "wordPoolSize":I
    if-lez v5, :cond_5a

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    add-int/lit8 v7, v5, -0x1

    .line 548
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/SpannableStringBuilder;

    move-object v1, v6

    .line 551
    .local v1, "word":Landroid/text/SpannableStringBuilder;
    :goto_2e
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 552
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 554
    aget v6, v4, v8

    if-lez v6, :cond_60

    .line 556
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v1, v6, v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 562
    if-ne p2, v3, :cond_4b

    .line 564
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 565
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 568
    :cond_4b
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v6, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 569
    add-int/lit8 v0, v0, 0x1

    .line 540
    .end local v1    # "word":Landroid/text/SpannableStringBuilder;
    .end local v5    # "wordPoolSize":I
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 548
    .restart local v5    # "wordPoolSize":I
    :cond_5a
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_2e

    .line 573
    .end local v5    # "wordPoolSize":I
    :cond_60
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    return-object v6
.end method

.method public getRangeConvCandidateWord(I[C[I)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "word"    # [C
    .param p3, "wordLen"    # [I

    .prologue
    .line 482
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvCandidateWord(JI[C[I)Z

    move-result v0

    return v0
.end method

.method public getRangeConvCandidateWordCount()I
    .registers 3

    .prologue
    .line 491
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvCandidateWordCount(J)I

    move-result v0

    return v0
.end method

.method public getRangeConvertedPhrase(I[I[C[I)I
    .registers 11
    .param p1, "index"    # I
    .param p2, "readingDivInfo"    # [I
    .param p3, "phrase"    # [C
    .param p4, "outPhraseInfo"    # [I

    .prologue
    .line 465
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvertedPhrase(JI[I[C[I)I

    move-result v0

    return v0
.end method

.method public getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    return-object v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;[II)Ljava/util/List;
    .registers 15
    .param p1, "defaultWord"    # Landroid/text/SpannableStringBuilder;
    .param p2, "defaultWordIndex"    # [I
    .param p3, "countToGet"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "[II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->recycleWordPool()V

    .line 216
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setRomajiOnlyFlag(JI)V

    .line 220
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->buildSelectionList(J[I)I

    move-result v9

    .local v9, "wordCount":I
    if-lez v9, :cond_bb

    .line 221
    const/4 v2, 0x0

    .local v2, "wordIndex":I
    :goto_12
    if-ge v2, v9, :cond_bb

    const/16 v0, 0x20

    if-ge v2, v0, :cond_bb

    .line 223
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordSubBuffer:[C

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/16 v6, 0x40

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getWord(JI[C[C[II)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 226
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 230
    .local v10, "wordPoolSize":I
    if-lez v10, :cond_97

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    add-int/lit8 v1, v10, -0x1

    .line 231
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v8, v0

    .line 234
    .local v8, "word":Landroid/text/SpannableStringBuilder;
    :goto_3b
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 235
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 239
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9d

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_9d

    .line 240
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v8, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 248
    :goto_5e
    const/4 v0, 0x0

    aget v0, p2, v0

    if-ne v0, v2, :cond_89

    .line 251
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_b4

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_b4

    .line 253
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    .local v7, "asWord":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordSubBuffer:[C

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v7, v0, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 257
    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 264
    .end local v7    # "asWord":Ljava/lang/StringBuilder;
    :cond_89
    :goto_89
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v8    # "word":Landroid/text/SpannableStringBuilder;
    .end local v10    # "wordPoolSize":I
    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    .line 231
    .restart local v10    # "wordPoolSize":I
    :cond_97
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_3b

    .line 242
    .restart local v8    # "word":Landroid/text/SpannableStringBuilder;
    :cond_9d
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_bb

    .line 243
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v8, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    goto :goto_5e

    .line 259
    :cond_b4
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 260
    invoke-virtual {p1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_89

    .line 269
    .end local v2    # "wordIndex":I
    .end local v8    # "word":Landroid/text/SpannableStringBuilder;
    .end local v10    # "wordPoolSize":I
    :cond_bb
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    return-object v0
.end method

.method public hasActiveInput()Z
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasActiveInput()Z

    move-result v0

    return v0
.end method

.method public hasTraceInput()Z
    .registers 3

    .prologue
    .line 626
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->hasTraceInput(J)Z

    move-result v0

    return v0
.end method

.method protected initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 4
    .param p1, "inputContext"    # J

    .prologue
    .line 61
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->initialize(J)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public isInlineKnown()Z
    .registers 2

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public isLanguageHaveEmojiPrediction()Z
    .registers 2

    .prologue
    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public kanatoRomaji([CI[C[I)I
    .registers 13
    .param p1, "kana"    # [C
    .param p2, "len"    # I
    .param p3, "romaji"    # [C
    .param p4, "plen"    # [I

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    const/16 v5, 0x40

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->kanatoromaji(J[CI[CI[II)I

    move-result v0

    return v0
.end method

.method public noteWordDone(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "yomi"    # Ljava/lang/String;
    .param p2, "midashigo"    # Ljava/lang/String;

    .prologue
    .line 506
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->noteWordDone(J[C[C)Z

    move-result v0

    return v0
.end method

.method protected onDlmEvent([BIZ)V
    .registers 4
    .param p1, "event"    # [B
    .param p2, "len"    # I
    .param p3, "highPriority"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 594
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->onDlmEvent([BIZ)V

    .line 595
    return-void
.end method

.method public persistUserDatabase()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->persistUserDatabase()V

    .line 91
    return-void
.end method

.method public setAttribute(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(II)V

    .line 191
    return-void
.end method

.method public setAttribute(IZ)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(IZ)V

    .line 196
    return-void
.end method

.method public setContext([C)V
    .registers 2
    .param p1, "wordContext"    # [C

    .prologue
    .line 338
    return-void
.end method

.method public setExplicitLearning(ZZ)V
    .registers 4
    .param p1, "enableUserAction"    # Z
    .param p2, "enableScanAction"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(ZZ)V

    .line 111
    return-void
.end method

.method public setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/input/swypecorelib/InputContextRequest;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 167
    return-void
.end method

.method public setKeyboardType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 514
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setKeyboardType(JI)V

    .line 515
    return-void
.end method

.method public setMultiTapInputMode(Z)V
    .registers 3
    .param p1, "isMultiTap"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setMultiTapInputMode(Z)V

    .line 157
    return-void
.end method

.method public setPunctuationBreaking(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setPunctuationBreaking(Z)V

    .line 200
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .registers 3
    .param p1, "shift"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 172
    return-void
.end method

.method public setTouchRequestCallback(Lcom/nuance/input/swypecorelib/TouchRequestCallback;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setTouchRequestCallback(Lcom/nuance/input/swypecorelib/TouchRequestCallback;)V

    .line 162
    return-void
.end method

.method public startRangeConversion(I[CI)Z
    .registers 6
    .param p1, "type"    # I
    .param p2, "wordToConv"    # [C
    .param p3, "wordLen"    # I

    .prologue
    .line 442
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startRangeConversion(JI[CI)Z

    move-result v0

    return v0
.end method

.method public startSession()V
    .registers 3

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->start(J)Z

    .line 76
    return-void
.end method
