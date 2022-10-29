.class public Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
.super Lcom/nuance/input/swypecorelib/XT9CoreInput;
.source "XT9CoreKoreanInput.java"


# static fields
.field public static final MAX_CONTEXT_BUFFER_BEFORE_CURSOR:I = 0x10


# instance fields
.field private final alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

.field private final mScratchLen:[I

.field private final mWordBuffer:[C


# direct methods
.method constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;)V
    .registers 4
    .param p1, "alphaCoreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .param p2, "sessionDataCollector"    # Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;-><init>(Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;)V

    .line 30
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mScratchLen:[I

    .line 36
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 37
    return-void
.end method

.method private static native clearSyllable(J)Z
.end method

.method private static native create_context(Ljava/lang/String;)J
.end method

.method private static native destroy_context(J)V
.end method

.method private static native enableConsonantInput(JZ)Z
.end method

.method private static native finish(J)V
.end method

.method private static native initialize(J)I
.end method

.method private static native start(J)Z
.end method


# virtual methods
.method public addCustomSymbolSet([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .registers 5
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addCustomSymbolSet([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    return v0
.end method

.method public addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .registers 5
    .param p1, "charBuffer"    # [C
    .param p2, "len"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    return v0
.end method

.method public buildSelectionList([I)I
    .registers 3
    .param p1, "defaultWordIndex"    # [I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->buildSelectionList([I)I

    move-result v0

    return v0
.end method

.method public clearAllKeys()Z
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    move-result v0

    return v0
.end method

.method public clearCharacter()Z
    .registers 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 110
    const/4 v0, 0x0

    .line 113
    :goto_7
    return v0

    :cond_8
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearSyllable(J)Z

    move-result v0

    goto :goto_7
.end method

.method public clearKey()Z
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKey()Z

    move-result v0

    return v0
.end method

.method protected create_native_context(Ljava/lang/String;)J
    .registers 4
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->create_context(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected destroy_native_context(J)V
    .registers 4
    .param p1, "inputContext"    # J

    .prologue
    .line 51
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->destroy_context(J)V

    .line 52
    return-void
.end method

.method public dlmAdd(Ljava/lang/String;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmAdd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dlmDelete(Ljava/lang/String;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmDelete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dlmFind(Ljava/lang/String;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmFind(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dlmGetNext(Ljava/lang/StringBuilder;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/StringBuilder;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmGetNext(Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0
.end method

.method public dlmReset()V
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmReset()V

    .line 326
    return-void
.end method

.method public dlmScanBuf(Ljava/lang/String;ZZZ)Z
    .registers 6
    .param p1, "words"    # Ljava/lang/String;
    .param p2, "ishighQuality"    # Z
    .param p3, "sentence"    # Z
    .param p4, "rescanning"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmScanBuf(Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0
.end method

.method public enableConsonantInput(Z)Z
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->enableConsonantInput(JZ)Z

    move-result v0

    return v0
.end method

.method protected exportDlmAsEvents()Z
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->exportDlmAsEvents()Z

    move-result v0

    return v0
.end method

.method public finishSession()V
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->finish(J)V

    .line 68
    return-void
.end method

.method public getExactType(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "exactBuffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 163
    return-void
.end method

.method public getInlineHangul(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "inline"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->buildSelectionList([I)I

    move-result v0

    if-lez v0, :cond_1e

    .line 168
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mScratchLen:[I

    invoke-virtual {p0, v2, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getWord(I[C[I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 170
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mWordBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->mScratchLen:[I

    aget v1, v1, v2

    invoke-virtual {p1, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 173
    :cond_1e
    return-void
.end method

.method public getInputCoreCategory()I
    .registers 2

    .prologue
    .line 278
    const/4 v0, 0x4

    return v0
.end method

.method public getKeyCount()I
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    return-object v0
.end method

.method public getWord(I[C[I)Z
    .registers 5
    .param p1, "wordIndex"    # I
    .param p2, "word"    # [C
    .param p3, "wordLen"    # [I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getWord(I[C[I)Z

    move-result v0

    return v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;[II)Ljava/util/List;
    .registers 5
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
    .line 210
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getWords(Landroid/text/SpannableStringBuilder;[II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasActiveInput()Z
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasActiveInput()Z

    move-result v0

    return v0
.end method

.method protected initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 4
    .param p1, "inputContext"    # J

    .prologue
    .line 46
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->initialize(J)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageHaveEmojiPrediction()Z
    .registers 2

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public noteWordDone(Ljava/lang/String;)Z
    .registers 4
    .param p1, "hanguls"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->noteWordDone(Ljava/lang/String;I)Z

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
    .line 359
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->onDlmEvent([BIZ)V

    .line 360
    return-void
.end method

.method public persistUserDatabase()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->persistUserDatabase()V

    .line 75
    return-void
.end method

.method public processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z
    .registers 8
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "key"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p4, "eventTime"    # J

    .prologue
    .line 364
    if-nez p1, :cond_7

    .line 365
    invoke-super {p0, p2, p3, p4, p5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->processKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    .line 367
    :goto_6
    return v0

    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    goto :goto_6
.end method

.method public resetUserDatabases()V
    .registers 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlmReset()V

    .line 333
    return-void
.end method

.method public setAttribute(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(II)V

    .line 267
    return-void
.end method

.method public setAttribute(IZ)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(IZ)V

    .line 272
    return-void
.end method

.method public setExactInList(I)V
    .registers 3
    .param p1, "location"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExactInList(I)V

    .line 154
    return-void
.end method

.method public setExplicitLearning(ZZ)V
    .registers 4
    .param p1, "enableUserAction"    # Z
    .param p2, "enableScanAction"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(ZZ)V

    .line 230
    return-void
.end method

.method public setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/input/swypecorelib/InputContextRequest;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 240
    return-void
.end method

.method public setMultiTapInputMode(Z)V
    .registers 3
    .param p1, "isMultiTap"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setMultiTapInputMode(Z)V

    .line 218
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .registers 3
    .param p1, "shift"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 257
    return-void
.end method

.method public setTouchRequestCallback(Lcom/nuance/input/swypecorelib/TouchRequestCallback;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/input/swypecorelib/TouchRequestCallback;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setTouchRequestCallback(Lcom/nuance/input/swypecorelib/TouchRequestCallback;)V

    .line 235
    return-void
.end method

.method public setWordQuarantineLevel(III)V
    .registers 5
    .param p1, "userImplicitAction"    # I
    .param p2, "userExplicitAction"    # I
    .param p3, "scanUsageAction"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->alphaCoreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setWordQuarantineLevel(III)V

    .line 226
    return-void
.end method

.method public startSession()V
    .registers 3

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->start(J)Z

    .line 60
    return-void
.end method
