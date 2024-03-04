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
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 43
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;-><init>()V

    .line 36
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    .line 37
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordSubBuffer:[C

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    .line 45
    return-void
.end method

.method private static native breakContext(J)V
.end method

.method private buildSelectionList()I
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->buildSelectionList(J)I

    move-result v0

    return v0
.end method

.method private static native buildSelectionList(J)I
.end method

.method private static native clearAllKeys(J)Z
.end method

.method private static native clearKey(J)Z
.end method

.method private static native clearKeyByIndex(JII)Z
.end method

.method private static native confirmRangeConvWord(JI)Z
.end method

.method private static native create_context(Ljava/lang/String;)J
.end method

.method private static native destroy_context(J)V
.end method

.method private static native finish(J)V
.end method

.method private static native getDefaultWordIndex(J)I
.end method

.method private static native getExactType(J[CI)I
.end method

.method private static native getInlineDivInfo(JI[I[I)I
.end method

.method private static native getInlineText(J[CI)I
.end method

.method private static native getKeyCount(J)I
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

.method private static native initialize(J)I
.end method

.method private static native kanatoromaji(J[CI[CI[II)I
.end method

.method private recycleWordPool()V
    .locals 5

    .prologue
    .line 360
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 361
    .local v2, "wordPoolSize":I
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 363
    .local v1, "wordListSize":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 364
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 365
    .local v0, "collect":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 366
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v2, v2, 0x1

    .line 369
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 370
    goto :goto_0

    .line 371
    .end local v0    # "collect":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 372
    return-void
.end method

.method private static native setAttribute(JII)Z
.end method

.method private static native setKeyboardType(JI)V
.end method

.method private static native setLanguage(JI)I
.end method

.method private static native setRomajiOnlyFlag(JI)V
.end method

.method private static native start(J)Z
.end method

.method private static native startRangeConversion(JI[CI)Z
.end method


# virtual methods
.method public breakContext()V
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->breakContext(J)V

    .line 291
    return-void
.end method

.method public clearAllKeys()Z
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys(J)Z

    move-result v0

    return v0
.end method

.method public clearKey()Z
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKey(J)Z

    move-result v0

    return v0
.end method

.method public clearKeyByIndex(II)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKeyByIndex(JII)Z

    move-result v0

    return v0
.end method

.method public confirmRangeConvWord(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->confirmRangeConvWord(JI)Z

    move-result v0

    return v0
.end method

.method protected create_native_context(Ljava/lang/String;)J
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->create_context(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected destroy_native_context(J)V
    .locals 1
    .param p1, "inputContext"    # J

    .prologue
    .line 59
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->destroy_context(J)V

    .line 60
    return-void
.end method

.method protected exportDlmAsEvents()Z
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public finishSession()V
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->finish(J)V

    .line 77
    return-void
.end method

.method public getExactType(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "exactBuffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 309
    if-nez p1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 316
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    const/16 v4, 0x100

    invoke-static {v2, v3, v1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getExactType(J[CI)I

    move-result v0

    .local v0, "len":I
    if-lez v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-virtual {p1, v1, v5, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getInlineDivInfo(I[I[I)I
    .locals 2
    .param p1, "maxSize"    # I
    .param p2, "romajiInDivInfo"    # [I
    .param p3, "kanaOutDivInfo"    # [I

    .prologue
    const/4 v0, 0x0

    .line 545
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 546
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 548
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineDivInfo(JI[I[I)I

    move-result v0

    return v0
.end method

.method public getInlineText(Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .param p1, "inlineBuffer"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 329
    if-nez p1, :cond_1

    .line 343
    :cond_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 336
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    const/16 v5, 0x40

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineText(J[CI)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_0

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 340
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    aget-char v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getInputCoreCategory()I
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x3

    return v0
.end method

.method public getKeyCount()I
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount(J)I

    move-result v0

    return v0
.end method

.method protected getKeyboardDatabaseCallback(II)[C
    .locals 1
    .param p1, "kbdId"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 585
    invoke-super {p0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getKeyboardDatabaseCallback(II)[C

    move-result-object v0

    return-object v0
.end method

.method public getPredictionWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;
    .locals 11
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

    .line 234
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->recycleWordPool()V

    .line 236
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getPredictionWordCount(J)I

    move-result v8

    .line 238
    .local v8, "wordCount":I
    const/4 v2, 0x0

    .local v2, "wordIndex":I
    :goto_0
    if-ge v2, v8, :cond_3

    const/16 v0, 0x20

    if-ge v2, v0, :cond_3

    .line 240
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordSubBuffer:[C

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/16 v6, 0x40

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getPredictionWord(JI[C[C[II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 246
    .local v9, "wordPoolSize":I
    if-lez v9, :cond_2

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    add-int/lit8 v1, v9, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v7, v0

    .line 250
    .local v7, "word":Landroid/text/SpannableStringBuilder;
    :goto_1
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 251
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 253
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    aget v0, v0, v10

    if-lez v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    aget v1, v1, v10

    invoke-virtual {v7, v0, v10, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 262
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 265
    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 238
    .end local v7    # "word":Landroid/text/SpannableStringBuilder;
    .end local v9    # "wordPoolSize":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    .restart local v9    # "wordPoolSize":I
    :cond_2
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_1

    .line 272
    .end local v9    # "wordPoolSize":I
    :cond_3
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    return-object v0
.end method

.method public getRangeConvCandidateList(Landroid/text/SpannableStringBuilder;I)Ljava/util/List;
    .locals 9
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

    .line 489
    const/4 v6, 0x1

    new-array v4, v6, [I

    .line 491
    .local v4, "wordLen":[I
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->recycleWordPool()V

    .line 493
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvCandidateWordCount()I

    move-result v2

    .line 495
    .local v2, "wordCount":I
    const/4 v0, 0x0

    .line 498
    .local v0, "listIndex":I
    const/4 v3, 0x0

    .local v3, "wordIndex":I
    :goto_0
    if-ge v3, v2, :cond_3

    const/16 v6, 0x20

    if-ge v0, v6, :cond_3

    .line 500
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-virtual {p0, v3, v6, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvCandidateWord(I[C[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 502
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 505
    .local v5, "wordPoolSize":I
    if-lez v5, :cond_2

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/SpannableStringBuilder;

    move-object v1, v6

    .line 509
    .local v1, "word":Landroid/text/SpannableStringBuilder;
    :goto_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 510
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 512
    aget v6, v4, v8

    if-lez v6, :cond_3

    .line 514
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    aget v7, v4, v8

    invoke-virtual {v1, v6, v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 520
    if-ne p2, v3, :cond_0

    .line 522
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 523
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 526
    :cond_0
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v6, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    .line 498
    .end local v1    # "word":Landroid/text/SpannableStringBuilder;
    .end local v5    # "wordPoolSize":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 505
    .restart local v5    # "wordPoolSize":I
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_1

    .line 531
    .end local v5    # "wordPoolSize":I
    :cond_3
    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    return-object v6
.end method

.method public getRangeConvCandidateWord(I[C[I)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "word"    # [C
    .param p3, "wordLen"    # [I

    .prologue
    .line 444
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvCandidateWord(JI[C[I)Z

    move-result v0

    return v0
.end method

.method public getRangeConvCandidateWordCount()I
    .locals 2

    .prologue
    .line 453
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvCandidateWordCount(J)I

    move-result v0

    return v0
.end method

.method public getRangeConvertedPhrase(I[I[C[I)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "readingDivInfo"    # [I
    .param p3, "phrase"    # [C
    .param p4, "outPhraseInfo"    # [I

    .prologue
    .line 427
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvertedPhrase(JI[I[C[I)I

    move-result v0

    return v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/util/List;
    .locals 11
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
    .line 162
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->recycleWordPool()V

    .line 164
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setRomajiOnlyFlag(JI)V

    .line 168
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->buildSelectionList()I

    move-result v9

    .local v9, "wordCount":I
    if-lez v9, :cond_5

    .line 170
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getDefaultWordIndex(J)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 172
    const/4 v2, 0x0

    .local v2, "wordIndex":I
    :goto_0
    if-ge v2, v9, :cond_5

    const/16 v0, 0x20

    if-ge v2, v0, :cond_5

    .line 174
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordSubBuffer:[C

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/16 v6, 0x40

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getWord(JI[C[C[II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 181
    .local v10, "wordPoolSize":I
    if-lez v10, :cond_2

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordPool:Ljava/util/List;

    add-int/lit8 v1, v10, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v8, v0

    .line 185
    .local v8, "word":Landroid/text/SpannableStringBuilder;
    :goto_1
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 186
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 190
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v8, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 199
    :goto_2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_4

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 205
    .local v7, "asWord":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordSubBuffer:[C

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v7, v0, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 208
    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 215
    .end local v7    # "asWord":Ljava/lang/StringBuilder;
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v8    # "word":Landroid/text/SpannableStringBuilder;
    .end local v10    # "wordPoolSize":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 181
    .restart local v10    # "wordPoolSize":I
    :cond_2
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_1

    .line 193
    .restart local v8    # "word":Landroid/text/SpannableStringBuilder;
    :cond_3
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordBuffer:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordLenResutls:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v8, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 210
    :cond_4
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 211
    invoke-virtual {p1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 220
    .end local v2    # "wordIndex":I
    .end local v8    # "word":Landroid/text/SpannableStringBuilder;
    .end local v10    # "wordPoolSize":I
    :cond_5
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->mWordList:Ljava/util/List;

    return-object v0
.end method

.method protected initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 1
    .param p1, "inputContext"    # J

    .prologue
    .line 54
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->initialize(J)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public isInlineKnown()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public kanatoRomaji([CI[C[I)I
    .locals 8
    .param p1, "kana"    # [C
    .param p2, "len"    # I
    .param p3, "romaji"    # [C
    .param p4, "plen"    # [I

    .prologue
    .line 388
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
    .line 580
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->onDlmEvent([BIZ)V

    .line 581
    return-void
.end method

.method protected registerDlmEventCallback()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method public setAttribute(II)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(JII)Z

    move-result v0

    return v0
.end method

.method public setContext([C)V
    .locals 0
    .param p1, "wordContext"    # [C

    .prologue
    .line 300
    return-void
.end method

.method public setKeyboardType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 472
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setKeyboardType(JI)V

    .line 473
    return-void
.end method

.method public setLanguage(I)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 2
    .param p1, "languageID"    # I

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setLanguage(JI)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public startRangeConversion(I[CI)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "wordToConv"    # [C
    .param p3, "wordLen"    # I

    .prologue
    .line 404
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startRangeConversion(JI[CI)Z

    move-result v0

    return v0
.end method

.method public startSession()V
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->start(J)Z

    .line 69
    return-void
.end method

.method protected unregisterDlmEventCallback()V
    .locals 0

    .prologue
    .line 575
    return-void
.end method
