.class public Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
.super Lcom/nuance/input/swypecorelib/XT9CoreInput;
.source "XT9CoreAlphaInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;,
        Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;,
        Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;
    }
.end annotation


# static fields
.field public static final ET9AEXACTINLIST_DEFAULT:I = 0x3

.field public static final ET9AEXACTINLIST_DEFAULT_ALLOW_DLM_CORRECTIONS:I = 0x4

.field public static final ET9AEXACTINLIST_FIRST:I = 0x1

.field public static final ET9AEXACTINLIST_FIRST_ALLOW_MULTITAP_CORRECTIONS:I = 0x5

.field public static final ET9AEXACTINLIST_LAST:I = 0x2

.field public static final ET9AEXACTINLIST_OFF:I = 0x0

.field private static final MAX_TERMINAL_PUNCT:I = 0x10


# instance fields
.field private dlmWipeCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;

.field private explicitApprovalCb:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

.field private final mWordBuffer:[C

.field private final mWordLenResults:[I

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

.field private textChecker:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

.field private wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;


# direct methods
.method protected constructor <init>(Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;)V
    .locals 1
    .param p1, "sessionDataCollector"    # Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;-><init>(Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;)V

    .line 27
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordLenResults:[I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordPool:Ljava/util/List;

    .line 45
    return-void
.end method

.method private static native addCustomSymbolSet(J[CII)Z
.end method

.method private static native addCustomWords(J[CI)Z
.end method

.method private static native addDlmCategoryWord(JI[C)Z
.end method

.method private static native addExplicit(J[CII)Z
.end method

.method private static native buildSelectionList(J[I)I
.end method

.method private static native clearAllKeys(J)Z
.end method

.method private static native clearApplicationPredictionContext(J)V
.end method

.method private static native clearKey(J)Z
.end method

.method private static native clearKeyByIndex(JII)Z
.end method

.method private static native createDlmCategoryInfo(JI[C[C)Z
.end method

.method private static native create_context(Ljava/lang/String;)J
.end method

.method private static native deleteDlmCategory(JI)Z
.end method

.method private static native destroy_context(J)V
.end method

.method private static native dlm_add(J[CI)Z
.end method

.method private static native dlm_addBlackWordForLanguage(J[CII)Z
.end method

.method private static native dlm_addNewWordForLanguage(J[CII)Z
.end method

.method private static native dlm_backup(J)Z
.end method

.method private static native dlm_count(J)I
.end method

.method private static native dlm_delete(J[CI)Z
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

.method private static native getDefaultWordSeparator(J)C
.end method

.method private static native getDlmCategoryCount(J)I
.end method

.method private static native getDlmCategoryInfo(JI[I[C[I[C[I)Z
.end method

.method private static native getExactType(J[CI)I
.end method

.method private static native getExplicitLearning(J[Z)V
.end method

.method private static native getKeyCount(J)I
.end method

.method private static native getShiftGestureMargin(J)I
.end method

.method private static native getShiftState(J)I
.end method

.method private static native getWord(JI[C[II)Z
.end method

.method private static native get_terminal_punct(J[CI)I
.end method

.method private static native hasActiveInput(J)Z
.end method

.method private static native initialize(JLcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)I
.end method

.method private static native isEmojiSupported(J)Z
.end method

.method private static native isInlineKnown(J)Z
.end method

.method private static native isLDBSupportALM(J)Z
.end method

.method private static native isLowerSymbol(JC)Z
.end method

.method private static native isNullLdb(J)Z
.end method

.method private static native isShiftGesture(J)Z
.end method

.method private static native isUpperSymbol(JC)Z
.end method

.method private static native is_known_word(J[CI)Z
.end method

.method private static native learnNewWords(J[CI)Z
.end method

.method private static native noteWordChanged(J[CII[C)Z
.end method

.method private static native persistUserDatabase(J)V
.end method

.method private recycleWordPool()V
    .locals 5

    .prologue
    .line 284
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 285
    .local v2, "wordPoolSize":I
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 287
    .local v1, "wordListSize":I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 288
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 289
    .local v0, "collect":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 290
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v2, v2, 0x1

    .line 293
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 294
    goto :goto_0

    .line 295
    .end local v0    # "collect":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 296
    return-void
.end method

.method private static native registerDLMWipeCallback(JLcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V
.end method

.method private static native registerExplicitLearningApprovalCallback(JLcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V
.end method

.method private static native removeSpaceBeforeWord(JI)Z
.end method

.method private static native setApplicationPredictionContext(J[B[B[B)V
.end method

.method private static native setAttribute(JII)V
.end method

.method private static native setAutoSpace(JZ)V
.end method

.method private static native setBackCorrection(JZ)V
.end method

.method private static native setExactInList(JI)V
.end method

.method private static native setExplicitLearning(JZZ)V
.end method

.method private static native setPunctuationBreaking(JZ)V
.end method

.method private static native setShiftGestureMargin(JI)V
.end method

.method private static native setShiftState(JI)V
.end method

.method private static native setVietInputMode(JI)Z
.end method

.method private static native setWordQuarantineLevel(JIII)V
.end method

.method private static native start(J)Z
.end method

.method private static native toLowerSymbol(JC)C
.end method

.method private static native toUpperSymbol(JC)C
.end method

.method private static native unRegisterDLMWipeCallback(J)V
.end method

.method private static native unRegisterExplicitLearningApprovalCallback(J)V
.end method

.method private static native undoAccept(J[CI[I)Z
.end method


# virtual methods
.method public addCustomSymbol(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 4
    .param p1, "chr"    # C
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    const/4 v3, 0x2

    .line 203
    new-array v0, v3, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x1dbf

    aput-char v2, v0, v1

    invoke-virtual {p0, v0, v3, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addCustomSymbolSet([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    return v0
.end method

.method public addCustomSymbolSet([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 3
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    .line 197
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    .line 196
    invoke-static {v0, v1, p1, p2, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addCustomSymbolSet(J[CII)Z

    move-result v0

    return v0
.end method

.method public addCustomWords(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "wordQuality"    # I

    .prologue
    .line 341
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 342
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 342
    invoke-static {v0, v1, v2, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addCustomWords(J[CI)Z

    move-result v0

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addDlmCategoryWord(ILjava/lang/String;)Z
    .locals 3
    .param p1, "categoryID"    # I
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    .line 689
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addDlmCategoryWord(JI[C)Z

    move-result v0

    return v0
.end method

.method public addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 3
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    .line 184
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    .line 183
    invoke-static {v0, v1, p1, p2, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit(J[CII)Z

    move-result v0

    return v0
.end method

.method public buildSelectionList([I)I
    .locals 2
    .param p1, "defaultWordIndex"    # [I

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->buildSelectionList(J[I)I

    move-result v0

    return v0
.end method

.method public candidateSelected(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V
    .locals 2
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "autoAccepted"    # Z

    .prologue
    .line 660
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v1

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordSelected(IZ)V

    .line 662
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;->onCandidateSelected(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V

    .line 663
    return-void

    .line 660
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllKeys()Z
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys(J)Z

    move-result v0

    return v0
.end method

.method public clearApplicationPredictionContext()V
    .locals 2

    .prologue
    .line 800
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearApplicationPredictionContext(J)V

    .line 801
    return-void
.end method

.method public clearKey()Z
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKey(J)Z

    move-result v0

    return v0
.end method

.method public clearKeyByIndex(II)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKeyByIndex(JII)Z

    move-result v0

    return v0
.end method

.method public createDlmCategoryInfo(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "categoryID"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 681
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->createDlmCategoryInfo(JI[C[C)Z

    move-result v0

    return v0
.end method

.method protected create_native_context(Ljava/lang/String;)J
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->create_context(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteDlmCategory(I)Z
    .locals 2
    .param p1, "categoryID"    # I

    .prologue
    .line 685
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->deleteDlmCategory(JI)Z

    move-result v0

    return v0
.end method

.method protected destroy_native_context(J)V
    .locals 1
    .param p1, "inputContext"    # J

    .prologue
    .line 64
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->unRegisterDLMWipeCallback(J)V

    .line 66
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->unRegisterExplicitLearningApprovalCallback(J)V

    .line 67
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->destroy_context(J)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->textChecker:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

    .line 69
    return-void
.end method

.method public dlmAdd(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 508
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_add(J[CI)Z

    move-result v0

    return v0
.end method

.method public dlmAddBlackWordForLanguage(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "languageId"    # I

    .prologue
    .line 839
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 840
    .local v1, "wordChars":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 841
    .local v0, "length":I
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v2, v3, v1, v0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_addBlackWordForLanguage(J[CII)Z

    move-result v2

    return v2
.end method

.method public dlmAddNewWordForLanguage(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "languageId"    # I

    .prologue
    .line 845
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 846
    .local v1, "wordChars":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 847
    .local v0, "length":I
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v2, v3, v1, v0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_addNewWordForLanguage(J[CII)Z

    move-result v2

    return v2
.end method

.method public dlmCount()I
    .locals 2

    .prologue
    .line 558
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_count(J)I

    move-result v0

    return v0
.end method

.method public dlmDelete(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 518
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_delete(J[CI)Z

    move-result v0

    return v0
.end method

.method public dlmExport(Ljava/lang/String;)J
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 604
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_export(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dlmFind(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 528
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 529
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 528
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_find(J[CI)Z

    move-result v0

    return v0
.end method

.method public dlmGetNext(Ljava/lang/StringBuilder;)Z
    .locals 6
    .param p1, "word"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v0, 0x0

    .line 539
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordLenResults:[I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    aput v2, v1, v0

    .line 540
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v0, v1, v2, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 545
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 546
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordLenResults:[I

    const/16 v5, 0x40

    invoke-static {v2, v3, v1, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_getNext(J[C[II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordLenResults:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 550
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public dlmImplicitScanBuf(Ljava/lang/String;ZZZLjava/lang/String;)Z
    .locals 9
    .param p1, "words"    # Ljava/lang/String;
    .param p2, "isHighQuality"    # Z
    .param p3, "sentenceBased"    # Z
    .param p4, "rescanning"    # Z
    .param p5, "prediction"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 596
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :goto_0
    if-eqz p5, :cond_2

    .line 598
    invoke-virtual {p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    :goto_1
    if-eqz p5, :cond_0

    .line 599
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v8

    :cond_0
    move v5, p3

    move v6, p4

    .line 596
    invoke-static/range {v0 .. v8}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_implicit_scanBuf(J[CIIZZ[CI)Z

    move-result v0

    return v0

    :cond_1
    move v4, v8

    goto :goto_0

    .line 598
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public dlmReset()V
    .locals 2

    .prologue
    .line 566
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_reset(J)V

    .line 567
    return-void
.end method

.method public dlmScanBuf(Ljava/lang/String;ZZZ)Z
    .locals 7
    .param p1, "words"    # Ljava/lang/String;
    .param p2, "isHighQuality"    # Z
    .param p3, "sentenceBased"    # Z
    .param p4, "rescanning"    # Z

    .prologue
    .line 585
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 586
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v5, p3

    move v6, p4

    .line 585
    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_scanBuf(J[CIIZZ)Z

    move-result v0

    return v0

    .line 586
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public dlmSwapLanguage(II)Z
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 808
    iput p2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mLanguageID:I

    .line 810
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_swap_language(JII)Z

    move-result v0

    return v0
.end method

.method public explicitLearningAddAllRecentWords()V
    .locals 2

    .prologue
    .line 768
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitLearningAddAllRecentWords(J)V

    .line 769
    return-void
.end method

.method public explicitLearningAddLastWord()V
    .locals 2

    .prologue
    .line 763
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitLearningAddLastWord(J)V

    .line 764
    return-void
.end method

.method public explicitLearningAddRecentWord(I)V
    .locals 2
    .param p1, "syncId"    # I

    .prologue
    .line 773
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitLearningAddRecentWord(JI)V

    .line 774
    return-void
.end method

.method protected exportDlmAsEvents()Z
    .locals 2

    .prologue
    .line 618
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlm_backup(J)Z

    move-result v0

    return v0
.end method

.method public finishSession()V
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->finish(J)V

    .line 104
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;->onFinishInputSession()V

    .line 105
    return-void
.end method

.method public getAlphaInputTextCheckerInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->textChecker:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

    invoke-direct {v0, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->textChecker:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->textChecker:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInputTextChecker;

    return-object v0
.end method

.method public getDefaultWordSeparator()C
    .locals 2

    .prologue
    .line 714
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getDefaultWordSeparator(J)C

    move-result v0

    return v0
.end method

.method public getDlmCategoryCount()I
    .locals 2

    .prologue
    .line 667
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getDlmCategoryCount(J)I

    move-result v0

    return v0
.end method

.method public getDlmCategoryInfo(I)Lcom/nuance/input/swypecorelib/DlmCategoryInfo;
    .locals 9
    .param p1, "categoryIndex"    # I

    .prologue
    const/4 v8, 0x0

    .line 671
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    sget-object v3, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeID:[I

    sget-object v4, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeName:[C

    sget-object v5, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeNameLen:[I

    sget-object v6, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeInfo:[C

    sget-object v7, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeInfoLen:[I

    move v2, p1

    invoke-static/range {v0 .. v7}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getDlmCategoryInfo(JI[I[C[I[C[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    new-instance v0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;

    sget-object v1, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeID:[I

    aget v1, v1, v8

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeName:[C

    sget-object v4, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeNameLen:[I

    aget v4, v4, v8

    invoke-direct {v2, v3, v8, v4}, Ljava/lang/String;-><init>([CII)V

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeInfo:[C

    sget-object v5, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->nativeInfoLen:[I

    aget v5, v5, v8

    invoke-direct {v3, v4, v8, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 677
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/input/swypecorelib/DlmCategoryInfo;->EMPTY:Lcom/nuance/input/swypecorelib/DlmCategoryInfo;

    goto :goto_0
.end method

.method public getExactType(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "exactBuffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 355
    if-nez p1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 362
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    const/16 v4, 0x40

    invoke-static {v2, v3, v1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getExactType(J[CI)I

    move-result v0

    .local v0, "len":I
    if-lez v0, :cond_0

    .line 363
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v1, v5, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getExplicitLearning()[Z
    .locals 4

    .prologue
    .line 756
    const/4 v1, 0x2

    new-array v0, v1, [Z

    .line 757
    .local v0, "actions":[Z
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v2, v3, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getExplicitLearning(J[Z)V

    .line 758
    return-object v0
.end method

.method public getInputCoreCategory()I
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x1

    return v0
.end method

.method public getKeyCount()I
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getKeyCount(J)I

    move-result v0

    return v0
.end method

.method public getShiftGestureMargin()I
    .locals 2

    .prologue
    .line 815
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getShiftGestureMargin(J)I

    move-result v0

    return v0
.end method

.method public getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .locals 2

    .prologue
    .line 465
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
    .line 372
    const-string/jumbo v1, ""

    .line 375
    .local v1, "terminalPunct":Ljava/lang/String;
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    const/16 v5, 0x10

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->get_terminal_punct(J[CI)I

    move-result v0

    .local v0, "len":I
    if-lez v0, :cond_0

    .line 376
    new-instance v1, Ljava/lang/String;

    .end local v1    # "terminalPunct":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    .line 381
    .restart local v1    # "terminalPunct":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getWord(I[C[I)Z
    .locals 6
    .param p1, "wordIndex"    # I
    .param p2, "word"    # [C
    .param p3, "wordLen"    # [I

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    const/16 v5, 0x40

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getWord(JI[C[II)Z

    move-result v0

    return v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;[II)Ljava/util/List;
    .locals 8
    .param p1, "defaultWord"    # Landroid/text/SpannableStringBuilder;
    .param p2, "defaultWordIndex"    # [I
    .param p3, "maxWords"    # I
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
    const/4 v7, 0x0

    .line 244
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->recycleWordPool()V

    .line 247
    const/4 v5, 0x1

    new-array v3, v5, [I

    .line 249
    .local v3, "wordLen":[I
    invoke-virtual {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->buildSelectionList([I)I

    move-result v1

    .local v1, "wordCount":I
    if-lez v1, :cond_4

    .line 250
    const/4 v2, 0x0

    .local v2, "wordIndex":I
    :goto_0
    if-ge v2, v1, :cond_4

    const/16 v5, 0xa

    if-ge v2, v5, :cond_4

    .line 251
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    invoke-virtual {p0, v2, v5, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getWord(I[C[I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 253
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordPool:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 255
    .local v4, "wordPoolSize":I
    if-lez v4, :cond_3

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordPool:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    .line 256
    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/SpannableStringBuilder;

    move-object v0, v5

    .line 259
    .local v0, "word":Landroid/text/SpannableStringBuilder;
    :goto_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 260
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 262
    aget v5, v3, v7

    if-lez v5, :cond_0

    .line 263
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordBuffer:[C

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v0, v5, v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 266
    :cond_0
    aget v5, p2, v7

    if-ne v5, v2, :cond_1

    .line 267
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 268
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 271
    :cond_1
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordList:Ljava/util/List;

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v5, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 250
    .end local v0    # "word":Landroid/text/SpannableStringBuilder;
    .end local v4    # "wordPoolSize":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .restart local v4    # "wordPoolSize":I
    :cond_3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_1

    .line 276
    .end local v2    # "wordIndex":I
    .end local v4    # "wordPoolSize":I
    :cond_4
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->mWordList:Ljava/util/List;

    return-object v5
.end method

.method public hasActiveInput()Z
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasActiveInput(J)Z

    move-result v0

    return v0
.end method

.method protected initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 3
    .param p1, "inputContext"    # J

    .prologue
    .line 54
    invoke-static {p1, p2, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->initialize(JLcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)I

    move-result v1

    invoke-static {v1}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    .line 55
    .local v0, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    invoke-static {p1, p2, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(JLcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V

    .line 57
    invoke-static {p1, p2, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerDLMWipeCallback(JLcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V

    .line 58
    return-object v0
.end method

.method public isInlineKnown()Z
    .locals 2

    .prologue
    .line 388
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isInlineKnown(J)Z

    move-result v0

    return v0
.end method

.method public isKnownWord(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->is_known_word(J[CI)Z

    move-result v0

    return v0
.end method

.method public isLanguageHaveEmojiPrediction()Z
    .locals 2

    .prologue
    .line 852
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isEmojiSupported(J)Z

    move-result v0

    return v0
.end method

.method public isLanguageSupportALM()Z
    .locals 2

    .prologue
    .line 449
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isLDBSupportALM(J)Z

    move-result v0

    return v0
.end method

.method public isNullLdb()Z
    .locals 2

    .prologue
    .line 835
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isNullLdb(J)Z

    move-result v0

    return v0
.end method

.method public isShiftGesture()Z
    .locals 2

    .prologue
    .line 824
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isShiftGesture(J)Z

    move-result v0

    return v0
.end method

.method public isSymbolLowerCase(C)Z
    .locals 2
    .param p1, "symbol"    # C

    .prologue
    .line 422
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isLowerSymbol(JC)Z

    move-result v0

    return v0
.end method

.method public isSymbolUpperCase(C)Z
    .locals 2
    .param p1, "symbol"    # C

    .prologue
    .line 411
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isUpperSymbol(JC)Z

    move-result v0

    return v0
.end method

.method public noteWordDone(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "cursorPosition"    # I

    .prologue
    .line 302
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
    .line 322
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 323
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v3, p2

    move v4, p3

    .line 322
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
    .line 830
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->onDlmEvent([BIZ)V

    .line 831
    return-void
.end method

.method public persistUserDatabase()V
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->persistUserDatabase(J)V

    .line 112
    return-void
.end method

.method public recaptureWord([CZ)Lcom/nuance/input/swypecorelib/RecaptureInfo;
    .locals 2
    .param p1, "charBuffer"    # [C
    .param p2, "isSelection"    # Z

    .prologue
    .line 631
    invoke-super {p0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->recaptureWord([CZ)Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v0

    .line 632
    .local v0, "recaptureInfo":Lcom/nuance/input/swypecorelib/RecaptureInfo;
    iget v1, v0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->totalWord:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    invoke-interface {v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;->recapture([C)V

    .line 636
    :cond_0
    sget-object v1, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    if-eq v0, v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;->onRecapture([C)V

    .line 640
    :cond_1
    return-object v0
.end method

.method public reconstructWord([C)Z
    .locals 1
    .param p1, "charBuffer"    # [C

    .prologue
    .line 697
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->reconstructWord([CZ)Z

    move-result v0

    return v0
.end method

.method public reconstructWord([CZ)Z
    .locals 2
    .param p1, "charBuffer"    # [C
    .param p2, "shouldRecapture"    # Z

    .prologue
    .line 701
    invoke-super {p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->reconstructWord([C)Z

    move-result v0

    .line 702
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    invoke-interface {v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;->recapture([C)V

    .line 706
    :cond_0
    if-eqz v0, :cond_1

    .line 707
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;->onRecaptureEdit([C)V

    .line 710
    :cond_1
    return v0
.end method

.method public registerExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitApprovalCb:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    .line 779
    return-void
.end method

.method public registerLoggingDLMWipeEventCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmWipeCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;

    .line 790
    return-void
.end method

.method public removeSpaceBeforeWord(I)Z
    .locals 2
    .param p1, "wordIndex"    # I

    .prologue
    .line 400
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
    .line 726
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitApprovalCb:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitApprovalCb:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;->onRequestExplicitLearningApproval(Ljava/lang/String;I)Z

    move-result v0

    .line 731
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLoggingDLMWipeEvent(Ljava/lang/String;III)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "requestType"    # I
    .param p3, "reasonCode"    # I
    .param p4, "langaugeId"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmWipeCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmWipeCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;->onRequestLoggingDLMWipeEvent(Ljava/lang/String;III)Z

    move-result v0

    .line 746
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetUserDatabases()V
    .locals 0

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmReset()V

    .line 574
    return-void
.end method

.method public setAttribute(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(JII)V

    .line 172
    return-void
.end method

.method public setAttribute(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .prologue
    .line 159
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(JII)V

    .line 161
    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    invoke-virtual {v0, p2}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;->onAutoCorrectionEnabled(Z)V

    .line 164
    :cond_0
    return-void

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoSpace(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 867
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAutoSpace(JZ)V

    .line 868
    return-void
.end method

.method public setBackCorrection(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setBackCorrection(JZ)V

    .line 95
    return-void
.end method

.method public setExactInList(I)V
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExactInList(JI)V

    .line 499
    return-void
.end method

.method public setExplicitLearning(ZZ)V
    .locals 2
    .param p1, "enableUserAction"    # Z
    .param p2, "enableScanAction"    # Z

    .prologue
    .line 751
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(JZZ)V

    .line 752
    return-void
.end method

.method public setPunctuationBreaking(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 608
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setPunctuationBreaking(JZ)V

    .line 609
    return-void
.end method

.method public setShiftGestureMargin(I)V
    .locals 2
    .param p1, "topOfMargin"    # I

    .prologue
    .line 820
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftGestureMargin(JI)V

    .line 821
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .locals 3
    .param p1, "shift"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 457
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(JI)V

    .line 458
    return-void
.end method

.method public setVietInputMode(Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Z
    .locals 3
    .param p1, "inputMode"    # Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .prologue
    .line 590
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->value()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setVietInputMode(JI)Z

    move-result v0

    return v0
.end method

.method public setWordQuarantineLevel(III)V
    .locals 2
    .param p1, "userImplicitAction"    # I
    .param p2, "userExplicitAction"    # I
    .param p3, "scanUsage"    # I

    .prologue
    .line 490
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setWordQuarantineLevel(JIII)V

    .line 491
    return-void
.end method

.method public setWordRecaptureCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordRecaptureCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;

    .line 624
    return-void
.end method

.method public startSession()V
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->start(J)Z

    .line 88
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(JLcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V

    .line 90
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;->onStartInputSession()V

    .line 91
    return-void
.end method

.method public toLowerSymbol(C)C
    .locals 2
    .param p1, "symbol"    # C

    .prologue
    .line 445
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->toLowerSymbol(JC)C

    move-result v0

    return v0
.end method

.method public toUpperSymbol(C)C
    .locals 2
    .param p1, "symbol"    # C

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->toUpperSymbol(JC)C

    move-result v0

    return v0
.end method

.method public unRegisterExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    .prologue
    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitApprovalCb:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;

    .line 785
    return-void
.end method

.method public unRegisterLoggingDLMWipeCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;

    .prologue
    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmWipeCallback:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$DLMWipeEventCallback;

    .line 796
    return-void
.end method

.method public undoAccept([CI)Lcom/nuance/input/swypecorelib/RecaptureInfo;
    .locals 4
    .param p1, "word"    # [C
    .param p2, "cursorPosition"    # I

    .prologue
    .line 648
    invoke-static {}, Lcom/nuance/input/swypecorelib/RecaptureInfo;->allocateRecaptureInfoFieldInfoArray()[I

    move-result-object v0

    .line 649
    .local v0, "undoAcceptInfo":[I
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->inputContext:J

    invoke-static {v2, v3, p1, p2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->undoAccept(J[CI[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->sessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;->onRecapture([C)V

    .line 653
    new-instance v1, Lcom/nuance/input/swypecorelib/RecaptureInfo;

    invoke-direct {v1, v0, p1}, Lcom/nuance/input/swypecorelib/RecaptureInfo;-><init>([I[C)V

    .line 656
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    goto :goto_0
.end method
