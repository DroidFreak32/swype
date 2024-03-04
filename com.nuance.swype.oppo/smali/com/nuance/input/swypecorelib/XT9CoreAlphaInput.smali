.class public Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
.super Lcom/nuance/input/swypecorelib/XT9CoreInput;
.source "XT9CoreAlphaInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;,
        Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;
    }
.end annotation


# static fields
.field private static final MAX_TERMINAL_PUNCT:I = 0x10


# instance fields
.field private explicitApprovalCb:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

.field private final mWordBuffer:[C

.field private final mWordLenResults:[I

.field private textChecker:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

.field private wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;-><init>()V

    .line 17
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordLenResults:[I

    .line 31
    return-void
.end method

.method private static native addCustomSymbolSet(J[CII)Z
.end method

.method private static native addCustomWords(J[CI)Z
.end method

.method private static native addExplicit(J[CII)Z
.end method

.method private static native alpha_delayWordReorder(JII)V
.end method

.method private static native buildSelectionList(J)I
.end method

.method private static native clearAllKeys(J)Z
.end method

.method private static native clearApplicationPredictionContext(J)V
.end method

.method private static native clearKey(J)Z
.end method

.method private static native create_context(Ljava/lang/String;)J
.end method

.method private static native destroy_context(J)V
.end method

.method private static native dlm_add(J[CI)Z
.end method

.method private static native dlm_backup(J)Z
.end method

.method private static native dlm_count(J)I
.end method

.method private static native dlm_delete(J[CI)Z
.end method

.method private static native dlm_enable(JZ)V
.end method

.method private static native dlm_export(JLjava/lang/String;)J
.end method

.method private static native dlm_find(J[CI)Z
.end method

.method private static native dlm_getNext(J[C[II)Z
.end method

.method private static native dlm_implicit_scanBuf(J[CIIZZ[CI)Z
.end method

.method private static native dlm_reset(J)V
.end method

.method private static native dlm_scanBuf(J[CIIZZ)Z
.end method

.method private static native dlm_swap_language(JII)Z
.end method

.method private static native explicitLearningAddAllRecentWords(J)V
.end method

.method private static native explicitLearningAddLastWord(J)V
.end method

.method private static native explicitLearningAddRecentWord(JI)V
.end method

.method private static native finish(J)V
.end method

.method private static native getContextList(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native getDefaultWordIndex(J)I
.end method

.method private static native getExactType(J[CI)I
.end method

.method private static native getExplicitLearning(J[Z)V
.end method

.method private static native getInlineText(J[CI)I
.end method

.method private static native getKeyCount(J)I
.end method

.method private static native getShiftGestureMargin(J)I
.end method

.method private static native getShiftState(J)I
.end method

.method private static native get_terminal_punct(J[CI)I
.end method

.method private static native implicit_addCustomWords(J[CI)Z
.end method

.method private static native initialize(J)I
.end method

.method private static native isInlineKnown(J)Z
.end method

.method private static native isLDBSupportALM(J)Z
.end method

.method private static native isLowerSymbol(JC)Z
.end method

.method private static native isUpperSymbol(JC)Z
.end method

.method private static native is_known_word(J[CI)Z
.end method

.method private static native learnNewWords(J[CI)Z
.end method

.method private static native noteWordChanged(J[CII[C)Z
.end method

.method private static native refresh_dbconfig(Ljava/lang/String;)V
.end method

.method private static native registerExplicitLearningApprovalCallback(JLcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V
.end method

.method private static native removeSpaceBeforeWord(JI)Z
.end method

.method private static native setApplicationPredictionContext(J[B[B[B)V
.end method

.method private static native setAttribute(JII)Z
.end method

.method private static native setExplicitLearning(JZZ)V
.end method

.method private static native setLDBEmoji(JZ)V
.end method

.method private static native setLanguage(JII)I
.end method

.method private static native setShiftGestureMargin(JI)V
.end method

.method private static native setShiftState(JI)V
.end method

.method private static native setVietInputMode(JI)Z
.end method

.method private static native start(J)Z
.end method

.method private static native toLowerSymbol(JC)C
.end method

.method private static native toUpperSymbol(JC)C
.end method

.method private static native unRegisterExplicitLearningApprovalCallback(J)V
.end method


# virtual methods
.method public addCustomSymbolSet([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 3
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addCustomSymbolSet(J[CII)Z

    move-result v0

    return v0
.end method

.method public addCustomWords(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "wordQuality"    # I

    .prologue
    .line 215
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addCustomWords(J[CI)Z

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 3
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit(J[CII)Z

    move-result v0

    return v0
.end method

.method public buildSelectionList()I
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->buildSelectionList(J)I

    move-result v0

    return v0
.end method

.method public clearAllKeys()Z
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys(J)Z

    move-result v0

    return v0
.end method

.method public clearApplicationPredictionContext()V
    .locals 2

    .prologue
    .line 557
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearApplicationPredictionContext(J)V

    .line 558
    return-void
.end method

.method public clearKey()Z
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKey(J)Z

    move-result v0

    return v0
.end method

.method protected create_native_context(Ljava/lang/String;)J
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->create_context(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public delayWordReorder(II)V
    .locals 2
    .param p1, "userUsage"    # I
    .param p2, "scanUsage"    # I

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->alpha_delayWordReorder(JII)V

    .line 358
    return-void
.end method

.method protected destroy_native_context(J)V
    .locals 1
    .param p1, "inputContext"    # J

    .prologue
    .line 48
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->unRegisterExplicitLearningApprovalCallback(J)V

    .line 49
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->destroy_context(J)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->textChecker:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

    .line 51
    return-void
.end method

.method public dlmAdd(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_add(J[CI)Z

    move-result v0

    return v0
.end method

.method public dlmCount()I
    .locals 2

    .prologue
    .line 397
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_count(J)I

    move-result v0

    return v0
.end method

.method public dlmDelete(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_delete(J[CI)Z

    move-result v0

    return v0
.end method

.method public dlmEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 427
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_enable(JZ)V

    .line 428
    return-void
.end method

.method public dlmExport(Ljava/lang/String;)J
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_export(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dlmFind(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_find(J[CI)Z

    move-result v0

    return v0
.end method

.method public dlmGetNext(Ljava/lang/StringBuilder;)Z
    .locals 6
    .param p1, "word"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v0, 0x0

    .line 380
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordLenResults:[I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    aput v2, v1, v0

    .line 381
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v0, v1, v2, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 386
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 387
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordLenResults:[I

    const/16 v5, 0x40

    invoke-static {v2, v3, v1, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_getNext(J[C[II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordLenResults:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 392
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public dlmImplicitScanBuf(Ljava/lang/String;IZZLjava/lang/String;)Z
    .locals 9
    .param p1, "words"    # Ljava/lang/String;
    .param p2, "wordQuality"    # I
    .param p3, "sentenceBased"    # Z
    .param p4, "rescanning"    # Z
    .param p5, "prediction"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    :goto_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v8

    :goto_1
    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v8}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_implicit_scanBuf(J[CIIZZ[CI)Z

    move-result v0

    return v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public dlmReset()V
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_reset(J)V

    .line 404
    return-void
.end method

.method public dlmScanBuf(Ljava/lang/String;IZZ)Z
    .locals 7
    .param p1, "words"    # Ljava/lang/String;
    .param p2, "wordQuality"    # I
    .param p3, "sentenceBased"    # Z
    .param p4, "rescanning"    # Z

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_scanBuf(J[CIIZZ)Z

    move-result v0

    return v0
.end method

.method public dlmSwapLanguage(II)Z
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 575
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_swap_language(JII)Z

    move-result v0

    return v0
.end method

.method public explicitLearningAddAllRecentWords()V
    .locals 2

    .prologue
    .line 526
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitLearningAddAllRecentWords(J)V

    .line 527
    return-void
.end method

.method public explicitLearningAddLastWord()V
    .locals 2

    .prologue
    .line 521
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitLearningAddLastWord(J)V

    .line 522
    return-void
.end method

.method public explicitLearningAddRecentWord(I)V
    .locals 2
    .param p1, "syncId"    # I

    .prologue
    .line 531
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitLearningAddRecentWord(JI)V

    .line 532
    return-void
.end method

.method protected exportDlmAsEvents()Z
    .locals 2

    .prologue
    .line 456
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_backup(J)Z

    move-result v0

    return v0
.end method

.method public finishSession()V
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->finish(J)V

    .line 83
    return-void
.end method

.method public getAlphaInputTextCheckerInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->textChecker:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

    invoke-direct {v0, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->textChecker:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->textChecker:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

    return-object v0
.end method

.method public getContextList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getContextList(JLjava/util/List;)V

    .line 338
    return-void
.end method

.method public getDefaultWordIndex()I
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getDefaultWordIndex(J)I

    move-result v0

    return v0
.end method

.method public getExactType(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "exactBuffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 229
    if-nez p1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 236
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    const/16 v4, 0x40

    invoke-static {v2, v3, v1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getExactType(J[CI)I

    move-result v0

    .local v0, "len":I
    if-lez v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v1, v5, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getExplicitLearning()[Z
    .locals 4

    .prologue
    .line 514
    const/4 v1, 0x2

    new-array v0, v1, [Z

    .line 515
    .local v0, "actions":[Z
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v2, v3, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getExplicitLearning(J[Z)V

    .line 516
    return-object v0
.end method

.method public getInputCoreCategory()I
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method public getKeyCount()I
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getKeyCount(J)I

    move-result v0

    return v0
.end method

.method protected getKeyboardDatabaseCallback(II)[C
    .locals 1
    .param p1, "kbdId"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 586
    invoke-super {p0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getKeyboardDatabaseCallback(II)[C

    move-result-object v0

    return-object v0
.end method

.method public getShiftGestureMargin()I
    .locals 2

    .prologue
    .line 437
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getShiftGestureMargin(J)I

    move-result v0

    return v0
.end method

.method public getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getShiftState(J)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->valueOf(I)Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    return-object v0
.end method

.method public getTerminalPunct()Ljava/lang/String;
    .locals 6

    .prologue
    .line 247
    const-string v1, ""

    .line 250
    .local v1, "terminalPunct":Ljava/lang/String;
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    const/16 v5, 0x10

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->get_terminal_punct(J[CI)I

    move-result v0

    .local v0, "len":I
    if-lez v0, :cond_0

    .line 251
    new-instance v1, Ljava/lang/String;

    .end local v1    # "terminalPunct":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    .line 256
    .restart local v1    # "terminalPunct":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 3
    .param p1, "inputContext"    # J

    .prologue
    .line 40
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->initialize(J)I

    move-result v1

    invoke-static {v1}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    .line 41
    .local v0, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    invoke-static {p1, p2, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(JLcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V

    .line 42
    return-object v0
.end method

.method public isInlineKnown()Z
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isInlineKnown(J)Z

    move-result v0

    return v0
.end method

.method public isKnownWord(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->is_known_word(J[CI)Z

    move-result v0

    return v0
.end method

.method public isLanguageSupportALM()Z
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isLDBSupportALM(J)Z

    move-result v0

    return v0
.end method

.method public isSymbolLowerCase(C)Z
    .locals 2
    .param p1, "symbol"    # C

    .prologue
    .line 292
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isLowerSymbol(JC)Z

    move-result v0

    return v0
.end method

.method public isSymbolUpperCase(C)Z
    .locals 2
    .param p1, "symbol"    # C

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isUpperSymbol(JC)Z

    move-result v0

    return v0
.end method

.method public learnNewWords(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "cursorPosition"    # I

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->learnNewWords(J[CI)Z

    move-result v0

    return v0
.end method

.method public noteWordWordChanged(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 6
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "startOfNewWord"    # I
    .param p3, "newWordLength"    # I
    .param p4, "oldWord"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->noteWordChanged(J[CII[C)Z

    move-result v0

    return v0
.end method

.method protected onDlmEvent([BIZ)V
    .locals 0
    .param p1, "event"    # [B
    .param p2, "len"    # I
    .param p3, "highPriority"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 581
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->onDlmEvent([BIZ)V

    .line 582
    return-void
.end method

.method public recaptureWord([CI[I)Z
    .locals 2
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "totalWordFoundHistory"    # [I

    .prologue
    .line 469
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->recaptureWord([CI[I)Z

    move-result v0

    .line 470
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    invoke-interface {v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;->recapture([C)V

    .line 473
    :cond_0
    return v0
.end method

.method public reconstructWord([CI)Z
    .locals 1
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I

    .prologue
    .line 488
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->reconstructWord([CIZ)Z

    move-result v0

    return v0
.end method

.method public reconstructWord([CIZ)Z
    .locals 2
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shouldRecapture"    # Z

    .prologue
    .line 477
    invoke-super {p0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->reconstructWord([CI)Z

    move-result v0

    .line 478
    .local v0, "ret":Z
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    invoke-interface {v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;->recapture([C)V

    .line 481
    :cond_0
    return v0
.end method

.method public registerDlmEventCallback()V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public registerExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitApprovalCb:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    .line 537
    return-void
.end method

.method public removeSpaceBeforeWord(I)Z
    .locals 2
    .param p1, "wordIndex"    # I

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->removeSpaceBeforeWord(JI)Z

    move-result v0

    return v0
.end method

.method public requestExplicitLearningApproval(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oov"    # Ljava/lang/String;
    .param p2, "syncId"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitApprovalCb:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitApprovalCb:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;->onRequestExplicitLearningApproval(Ljava/lang/String;I)Z

    move-result v0

    .line 504
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetUserDatabases()V
    .locals 0

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmReset()V

    .line 409
    return-void
.end method

.method public setApplicationPredictionContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context1"    # Ljava/lang/String;
    .param p2, "context2"    # Ljava/lang/String;
    .param p3, "context3"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 549
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    if-nez p1, :cond_0

    move-object v2, v0

    :goto_0
    if-nez p2, :cond_1

    move-object v1, v0

    :goto_1
    if-nez p3, :cond_2

    :goto_2
    invoke-static {v4, v5, v2, v1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setApplicationPredictionContext(J[B[B[B)V

    .line 553
    return-void

    .line 549
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2
.end method

.method public setAttribute(II)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(JII)Z

    move-result v0

    return v0
.end method

.method public setAttribute(IZ)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .prologue
    .line 122
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(JII)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExplicitLearning(ZZ)V
    .locals 2
    .param p1, "enableUserAction"    # Z
    .param p2, "enableScanAction"    # Z

    .prologue
    .line 509
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(JZZ)V

    .line 510
    return-void
.end method

.method public setLDBEmoji(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 446
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setLDBEmoji(JZ)V

    .line 447
    return-void
.end method

.method public setLanguage(II)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 2
    .param p1, "languageID"    # I
    .param p2, "secondLanguageID"    # I

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setLanguage(JII)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public setShiftGestureMargin(I)V
    .locals 2
    .param p1, "topOfMargin"    # I

    .prologue
    .line 442
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftGestureMargin(JI)V

    .line 443
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .locals 3
    .param p1, "shift"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(JI)V

    .line 328
    return-void
.end method

.method public setVietInputMode(I)Z
    .locals 2
    .param p1, "vietMode"    # I

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setVietInputMode(JI)Z

    move-result v0

    return v0
.end method

.method public setWordRecaptureCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    .line 462
    return-void
.end method

.method public startSession()V
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->start(J)Z

    .line 70
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(JLcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V

    .line 71
    return-void
.end method

.method public toLowerSymbol(C)C
    .locals 2
    .param p1, "symbol"    # C

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->toLowerSymbol(JC)C

    move-result v0

    return v0
.end method

.method public toUpperSymbol(C)C
    .locals 2
    .param p1, "symbol"    # C

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->toUpperSymbol(JC)C

    move-result v0

    return v0
.end method

.method public unRegisterExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    .prologue
    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitApprovalCb:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    .line 543
    return-void
.end method

.method protected unregisterDlmEventCallback()V
    .locals 0

    .prologue
    .line 568
    return-void
.end method
