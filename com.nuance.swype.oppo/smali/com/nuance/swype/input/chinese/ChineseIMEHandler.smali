.class public Lcom/nuance/swype/input/chinese/ChineseIMEHandler;
.super Lcom/nuance/swype/input/IMEHandler;
.source "ChineseIMEHandler.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "ChineseIMEHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nuance/swype/input/IMEHandler;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method private insertWordToUdb(Ljava/lang/String;)V
    .locals 11
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 333
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "insertWordToUdb word:%s"

    invoke-virtual {v7, v8, p1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v5, "spell":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 337
    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_7

    .line 338
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v6, "tmpSpell":Ljava/lang/StringBuffer;
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 340
    .local v0, "CnChar":I
    const/4 v4, 0x0

    .line 341
    .local v4, "ret":I
    if-nez v2, :cond_5

    .line 342
    const/4 v3, 0x0

    .line 344
    .local v3, "j":I
    :goto_1
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v7, v0, v3, v10, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getCharSpell(IIILjava/lang/StringBuffer;)I

    move-result v4

    if-nez v4, :cond_0

    .line 345
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 346
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to add words, get empty char spell: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 369
    :cond_0
    if-nez v3, :cond_1

    if-eqz v4, :cond_1

    .line 370
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to add words, cannot get char spell: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 337
    .end local v3    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 350
    .restart local v3    # "j":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 352
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "FullName":Ljava/lang/String;
    if-lez v3, :cond_3

    .line 355
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "Add words multiple pronounciation word: "

    const-string v9, "Spell:"

    invoke-virtual {v7, v8, p1, v9, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 357
    :cond_3
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v7, p1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->udbAdd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 361
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "Add words: "

    const-string v9, "Spell:"

    invoke-virtual {v7, v8, p1, v9, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 367
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v6, v10, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 363
    :cond_4
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to add words: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Spell:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_3

    .line 374
    .end local v1    # "FullName":Ljava/lang/String;
    .end local v3    # "j":I
    :cond_5
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v7, v0, v10, v10, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getCharSpell(IIILjava/lang/StringBuffer;)I

    move-result v4

    .line 376
    if-nez v4, :cond_6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 379
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v10, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 382
    :cond_6
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to add words, cannot get char spell: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 388
    .end local v0    # "CnChar":I
    .end local v4    # "ret":I
    .end local v6    # "tmpSpell":Ljava/lang/StringBuffer;
    :cond_7
    return-void
.end method


# virtual methods
.method public checkCompatability()Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 4

    .prologue
    .line 320
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Chinese checkCompatability()"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 321
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_NONE:Lcom/nuance/input/swypecorelib/XT9Status;

    .line 322
    .local v1, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 323
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 325
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 326
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v1

    .line 330
    :goto_0
    return-object v1

    .line 328
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    goto :goto_0
.end method

.method public cyclingKeyboardInput()V
    .locals 6

    .prologue
    const/16 v4, 0x900

    const/16 v5, 0x64

    .line 120
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 122
    .local v0, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v3, "stroke"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v3, "doublepinyin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 129
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    .line 130
    .local v1, "im":Lcom/nuance/swype/input/InputMethods;
    iget v2, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultLayoutId:I

    if-ne v2, v4, :cond_2

    .line 131
    const/16 v2, 0x600

    iget-object v3, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/InputMethods;->setChineseCyclingKeyboardInputMode(ILjava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 138
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 134
    :cond_2
    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, v4, v2, v3}, Lcom/nuance/swype/input/InputMethods;->setChineseCyclingKeyboardInputMode(ILjava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;)V

    goto :goto_1
.end method

.method public destroyAllInputs(Z)V
    .locals 2
    .param p1, "destroyCore"    # Z

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->finishAllInputView()V

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->resetInputView(Z)V

    .line 111
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const-string v1, "NO_VIEW"

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public finishAllInputView()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->callAllInputViewToFinish()V

    .line 116
    return-void
.end method

.method public handleNewWordsDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 4
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 250
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 251
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoImportContacts()Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget v1, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->wordHandler:I

    if-nez v1, :cond_0

    .line 257
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isBigramDlm()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v1

    if-nez v1, :cond_4

    .line 262
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->initializeCoreNeeded:Z

    if-eqz v1, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->initializeCore()V

    .line 265
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->initializeCoreNeeded:Z

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->getMaxItemToScan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->scan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;I)V

    .line 272
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 273
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Chinese handleNewWordsDelayScanning() - schedule for next batch"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 274
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    goto :goto_0

    .line 276
    :cond_3
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Chinese handleNewWordsDelayScanning() - done"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 281
    :cond_4
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Chinese handleNewWordsDelayScanning() -- retry delay"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 282
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    goto :goto_0
.end method

.method public handleXT9LanguageCyclingKey()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public initializeCore()V
    .locals 3

    .prologue
    .line 305
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Chinese initializeCore()"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 307
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 308
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 310
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 311
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 312
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setInputMode(I)Z

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 69
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->destroyAllInputs(Z)V

    .line 71
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->removeAllPendingMsgs()V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->destroyAllInputs(Z)V

    .line 56
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 60
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->stop()V

    .line 61
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 0
    .param p1, "finishingInput"    # Z

    .prologue
    .line 411
    return-void
.end method

.method public onFinishInput()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 92
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    goto :goto_0
.end method

.method public onFinishInputView(Z)V
    .locals 2
    .param p1, "finishingInput"    # Z

    .prologue
    .line 415
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->start(Landroid/content/Context;I)V

    .line 416
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->resume()V

    .line 417
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 423
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/IMEHandler;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 78
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->pause()V

    .line 79
    return-void
.end method

.method public scan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;I)V
    .locals 5
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .param p2, "maxItemToScan"    # I

    .prologue
    .line 287
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Chinese scan() itemsToScan = "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    const/4 v0, 0x0

    .line 293
    .local v0, "itemScanned":I
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->remove()Ljava/lang/String;

    move-result-object v1

    .local v1, "words":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 294
    add-int/lit8 v0, v0, 0x1

    .line 295
    iget v2, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->scanAction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 296
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->insertWordToUdb(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    .end local v1    # "words":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Chinese scan() itemScanned = "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public showInputModeMenu()V
    .locals 6

    .prologue
    .line 144
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    :cond_2
    new-instance v2, Lcom/nuance/swype/input/chinese/InputModeListAdapter;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-direct {v2, v4, v5}, Lcom/nuance/swype/input/chinese/InputModeListAdapter;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 153
    .local v2, "modeAdapter":Lcom/nuance/swype/input/chinese/InputModeListAdapter;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 155
    new-instance v4, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$1;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$1;-><init>(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 165
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    new-instance v4, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;

    invoke-direct {v4, p0, v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;-><init>(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;Lcom/nuance/swype/input/chinese/InputModeListAdapter;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->input_method:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 201
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 202
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 203
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 204
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 206
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 207
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 208
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 209
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public toggleFullScreenHwr()V
    .locals 8

    .prologue
    const/16 v5, 0x64

    .line 214
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    .line 215
    .local v2, "inputView":Lcom/nuance/swype/input/InputView;
    if-nez v2, :cond_0

    .line 245
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 221
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 223
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 225
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 227
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string v3, "handwriting_full_screen"

    iget-object v4, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fullscreen.enabled."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 230
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    const-string v4, "handwriting_half_screen"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 238
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 242
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 232
    :cond_2
    const-string v3, "handwriting_half_screen"

    iget-object v4, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fullscreen.enabled."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 235
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    const-string v4, "handwriting_full_screen"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    goto :goto_1
.end method
