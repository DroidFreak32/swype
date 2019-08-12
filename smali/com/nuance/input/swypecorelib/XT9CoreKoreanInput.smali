.class public Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
.super Lcom/nuance/input/swypecorelib/XT9CoreInput;
.source "XT9CoreKoreanInput.java"


# static fields
.field public static final KOREAN_ET9AEXACTINLIST_DEFAULT:I = 0x3

.field public static final KOREAN_ET9AEXACTINLIST_FIRST:I = 0x1


# instance fields
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


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;-><init>()V

    .line 34
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordPool:Ljava/util/List;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordLenResutls:[I

    .line 42
    return-void
.end method

.method private static native addCustomSymbolSet(J[CII)Z
.end method

.method private static native addExplicit(J[CII)Z
.end method

.method private static native buildSelectionList(J)I
.end method

.method private static native clearAllKeys(J)Z
.end method

.method private static native clearKey(J)Z
.end method

.method private static native clearKeyForNoFHD(J)Z
.end method

.method private static native clearSyllable(J)Z
.end method

.method private static native create_context(Ljava/lang/String;)J
.end method

.method private static native decondeHangul(J[CI[C[II)Z
.end method

.method private static native delayWordReorder(JII)V
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

.method private static native dlm_reset(J)V
.end method

.method private static native dlm_scanBuf(J[CIIZZ)Z
.end method

.method private static native enableConsonantInput(JZ)Z
.end method

.method private static native finish(J)V
.end method

.method private static native getExactType(J[CI)I
.end method

.method private static native getInlineHangul(J[CI)I
.end method

.method private static native getKeyCount(J)I
.end method

.method private static native getWord(JI[C[II)Z
.end method

.method private static native initTrace(JIII)V
.end method

.method private static native initialize(J)I
.end method

.method private static native multiTapTimeout(J)Z
.end method

.method private static native noteWordDone(J[CI)Z
.end method

.method private recycleWordPool()V
    .locals 5

    .prologue
    .line 364
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 365
    .local v2, "wordPoolSize":I
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 367
    .local v1, "wordListSize":I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 368
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 369
    .local v0, "collect":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 370
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v2, v2, 0x1

    .line 373
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 374
    goto :goto_0

    .line 375
    .end local v0    # "collect":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 376
    return-void
.end method

.method private static native setExactInList(JI)V
.end method

.method private static native setKoreanInputMode(JZ)Z
.end method

.method private static native setLanguage(JII)I
.end method

.method private static native start(J)Z
.end method


# virtual methods
.method public addCustomSymbolSet([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 3
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->addCustomSymbolSet(J[CII)Z

    move-result v0

    return v0
.end method

.method public addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 3
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->addExplicit(J[CII)Z

    move-result v0

    return v0
.end method

.method public buildSelectionList()I
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->buildSelectionList(J)I

    move-result v0

    return v0
.end method

.method public clearAllKeys()Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearAllKeys(J)Z

    move-result v0

    goto :goto_0
.end method

.method public clearCharacter()Z
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearSyllable(J)Z

    move-result v0

    goto :goto_0
.end method

.method public clearKey()Z
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearKey(J)Z

    move-result v0

    goto :goto_0
.end method

.method public clearKeyForNoFHD()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearKeyForNoFHD(J)Z

    move-result v0

    goto :goto_0
.end method

.method protected create_native_context(Ljava/lang/String;)J
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->create_context(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public decodeHangul(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "hanguls"    # Ljava/lang/String;
    .param p2, "jamos"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 327
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordLenResutls:[I

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    aput v1, v0, v7

    .line 328
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    invoke-virtual {p2, v7, v0, v1, v7}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 333
    :cond_0
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 334
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 335
    .local v2, "hangulChars":[C
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    array-length v3, v2

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordLenResutls:[I

    const/16 v6, 0x40

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->decondeHangul(J[CI[C[II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordLenResutls:[I

    aget v1, v1, v7

    invoke-virtual {p2, v0, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 341
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method public delayWordReorder(II)V
    .locals 2
    .param p1, "userUsage"    # I
    .param p2, "scanUsage"    # I

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->delayWordReorder(JII)V

    .line 315
    return-void
.end method

.method protected destroy_native_context(J)V
    .locals 1
    .param p1, "inputContext"    # J

    .prologue
    .line 61
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->destroy_context(J)V

    .line 62
    return-void
.end method

.method public dlmAdd(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlm_add(J[CI)Z

    move-result v0

    return v0
.end method

.method public dlmCount()I
    .locals 2

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlm_count(J)I

    move-result v0

    return v0
.end method

.method public dlmDelete(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlm_delete(J[CI)Z

    move-result v0

    return v0
.end method

.method public dlmEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlm_enable(JZ)V

    .line 481
    return-void
.end method

.method public dlmExport(Ljava/lang/String;)J
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 490
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlm_export(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dlmFind(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlm_find(J[CI)Z

    move-result v0

    return v0
.end method

.method public dlmGetNext(Ljava/lang/StringBuilder;)Z
    .locals 6
    .param p1, "word"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordLenResutls:[I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    aput v2, v1, v0

    .line 424
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    invoke-virtual {p1, v0, v1, v2, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 429
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 430
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordLenResutls:[I

    const/16 v5, 0x40

    invoke-static {v2, v3, v1, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlm_getNext(J[C[II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordLenResutls:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 435
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public dlmReset()V
    .locals 2

    .prologue
    .line 451
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlm_reset(J)V

    .line 452
    return-void
.end method

.method public dlmScanBuf(Ljava/lang/String;IZZ)Z
    .locals 7
    .param p1, "words"    # Ljava/lang/String;
    .param p2, "wordQuality"    # I
    .param p3, "sentence"    # Z
    .param p4, "rescanning"    # Z

    .prologue
    .line 470
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlm_scanBuf(J[CIIZZ)Z

    move-result v0

    return v0
.end method

.method public enableConsonantInput(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->enableConsonantInput(JZ)Z

    move-result v0

    return v0
.end method

.method protected exportDlmAsEvents()Z
    .locals 2

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlm_backup(J)Z

    move-result v0

    return v0
.end method

.method public finishSession()V
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->finish(J)V

    .line 82
    return-void
.end method

.method public getExactType(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "exactBuffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 188
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 195
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    const/16 v4, 0x40

    invoke-static {v2, v3, v1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getExactType(J[CI)I

    move-result v0

    .local v0, "len":I
    if-lez v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    invoke-virtual {p1, v1, v5, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getInlineHangul(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "inline"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 203
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 206
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    const/16 v4, 0x40

    invoke-static {v2, v3, v1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getInlineHangul(J[CI)I

    move-result v0

    .local v0, "len":I
    if-lez v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    invoke-virtual {p1, v1, v5, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 209
    :cond_0
    return-void
.end method

.method public getInputCoreCategory()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x4

    return v0
.end method

.method public getKeyCount()I
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount(J)I

    move-result v0

    return v0
.end method

.method protected getKeyboardDatabaseCallback(II)[C
    .locals 1
    .param p1, "kbdId"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 520
    invoke-super {p0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getKeyboardDatabaseCallback(II)[C

    move-result-object v0

    return-object v0
.end method

.method public getWord(I[CLjava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 8
    .param p1, "wordIndex"    # I
    .param p2, "word"    # [C
    .param p3, "wordLen"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 231
    new-array v4, v6, [I

    .line 232
    .local v4, "wordLenResutls":[I
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    const/16 v5, 0x40

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getWord(JI[C[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    aget v0, v4, v7

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v0, v6

    .line 238
    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/util/List;
    .locals 8
    .param p1, "defaultWord"    # Landroid/text/SpannableStringBuilder;
    .param p2, "defaultWordIndex"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "countToGet"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->recycleWordPool()V

    .line 257
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->buildSelectionList()I

    move-result v2

    .local v2, "wordCount":I
    if-lez v2, :cond_4

    .line 258
    const/4 v3, 0x0

    .line 259
    .local v3, "wordIndex":I
    :goto_0
    if-ge v3, v2, :cond_4

    const/16 v5, 0xa

    if-ge v3, v5, :cond_4

    .line 261
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 262
    .local v0, "worLen":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    invoke-virtual {p0, v3, v5, v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getWord(I[CLjava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordPool:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 267
    .local v4, "wordPoolSize":I
    if-lez v4, :cond_3

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordPool:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/SpannableStringBuilder;

    move-object v1, v5

    .line 271
    .local v1, "word":Landroid/text/SpannableStringBuilder;
    :goto_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 272
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 274
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-lez v5, :cond_0

    .line 275
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 279
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 280
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 281
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 284
    :cond_1
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordList:Ljava/util/List;

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v5, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 259
    .end local v1    # "word":Landroid/text/SpannableStringBuilder;
    .end local v4    # "wordPoolSize":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .restart local v4    # "wordPoolSize":I
    :cond_3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_1

    .line 290
    .end local v0    # "worLen":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v3    # "wordIndex":I
    .end local v4    # "wordPoolSize":I
    :cond_4
    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordList:Ljava/util/List;

    return-object v5
.end method

.method protected initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 1
    .param p1, "inputContext"    # J

    .prologue
    .line 56
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->initialize(J)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public multiTapTimeout()Z
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->multiTapTimeout(J)Z

    move-result v0

    return v0
.end method

.method public noteWordDone(Ljava/lang/String;)Z
    .locals 4
    .param p1, "hanguls"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 355
    .local v0, "hangulChars":[C
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    array-length v1, v0

    invoke-static {v2, v3, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->noteWordDone(J[CI)Z

    move-result v1

    return v1
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
    .line 515
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->onDlmEvent([BIZ)V

    .line 516
    return-void
.end method

.method protected registerDlmEventCallback()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public resetUserDatabases()V
    .locals 0

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlmReset()V

    .line 459
    return-void
.end method

.method public setExactInList(I)V
    .locals 2
    .param p1, "eSetting"    # I

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setExactInList(JI)V

    .line 180
    return-void
.end method

.method public setLanguage(II)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 2
    .param p1, "languageID"    # I
    .param p2, "secondLanguageID"    # I

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setLanguage(JII)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public setMultiTapInputMode(Z)Z
    .locals 2
    .param p1, "isMultitap"    # Z

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setKoreanInputMode(JZ)Z

    move-result v0

    return v0
.end method

.method public startSession()V
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->start(J)Z

    .line 70
    return-void
.end method

.method protected unregisterDlmEventCallback()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method
