.class public Lcom/nuance/swype/input/korean/KoreanIMEHandler;
.super Lcom/nuance/swype/input/IMEHandler;
.source "KoreanIMEHandler.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-string/jumbo v0, "KoreanIMEHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .registers 2
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nuance/swype/input/IMEHandler;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method private destroyAllInputs(Z)V
    .registers 4
    .param p1, "destroyCore"    # Z

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->finishAllInputView()V

    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->resetInputView(Z)V

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const-string/jumbo v1, "NO_VIEW"

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private finishAllInputView()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->callAllInputViewToFinish()V

    .line 115
    return-void
.end method


# virtual methods
.method public checkCompatability()Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 7

    .prologue
    .line 277
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Korean checkCompatability()"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 278
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_NONE:Lcom/nuance/input/swypecorelib/XT9Status;

    .line 279
    .local v1, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 280
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 281
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreKoreanInputSession()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .line 282
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->startSession()V

    .line 283
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v1

    .line 287
    :goto_41
    return-object v1

    .line 285
    :cond_42
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    goto :goto_41
.end method

.method public cyclingKeyboardInput()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->isEditNumorSymMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 196
    :cond_6
    :goto_6
    return-void

    .line 181
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 182
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 183
    .local v0, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v1

    .line 184
    .local v1, "currentLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    .line 185
    .local v2, "nextLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    iget v3, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->symbols_keyboard_id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_53

    .line 186
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    .line 190
    :cond_2b
    :goto_2b
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$Layout;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 191
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 193
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getKeyboardManager()Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardManager;->evictAll()V

    .line 194
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->switchInputViewAsync()V

    goto :goto_6

    .line 187
    :cond_53
    iget v3, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->bilingual_keyboard_id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_2b

    .line 188
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    goto :goto_2b
.end method

.method public handleNewWordsDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .registers 7
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isBigramDlm()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 246
    :cond_8
    :goto_8
    return-void

    .line 219
    :cond_9
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Korean handleNewWordsDelayScanning()"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 221
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 223
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->initializeCoreNeeded:Z

    if-eqz v0, :cond_2c

    .line 224
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->initializeCore()V

    .line 225
    iput-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->initializeCoreNeeded:Z

    .line 228
    :cond_2c
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_8

    .line 229
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->getMaxItemToScan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->scan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;I)V

    .line 232
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    .line 233
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Korean handleNewWordsDelayScanning() - schedule for next batch"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p1, v2, v3}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    goto :goto_8

    .line 236
    :cond_51
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Korean handleNewWordsDelayScanning() - done"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_8

    .line 241
    :cond_5e
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Korean handleNewWordsDelayScanning() -- ime in use"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 243
    iput-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->initializeCoreNeeded:Z

    .line 244
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p1, v2, v3}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    goto :goto_8
.end method

.method public handleXT9LanguageCyclingKey()V
    .registers 1

    .prologue
    .line 294
    return-void
.end method

.method public initializeCore()V
    .registers 6

    .prologue
    .line 264
    sget-object v1, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Korean initializeCore()"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 267
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 268
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreKoreanInputSession()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .line 269
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->startSession()V

    .line 273
    :goto_35
    return-void

    .line 271
    :cond_36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    goto :goto_35
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 300
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .registers 2

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_11

    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 74
    :cond_11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->destroyAllInputs(Z)V

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 55
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->removeAllPendingMsgs()V

    .line 56
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->destroyAllInputs(Z)V

    .line 58
    :try_start_9
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_12} :catch_18

    .line 65
    :goto_12
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 66
    return-void

    .line 59
    :catch_18
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public onFinishCandidatesView(Z)V
    .registers 2
    .param p1, "finishingInput"    # Z

    .prologue
    .line 312
    return-void
.end method

.method public onFinishInput()V
    .registers 4

    .prologue
    .line 82
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    .line 83
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 104
    :cond_14
    :goto_14
    return-void

    .line 88
    :cond_15
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 91
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_14

    .line 93
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    goto :goto_14
.end method

.method public onFinishInputView(Z)V
    .registers 2
    .param p1, "finishingInput"    # Z

    .prologue
    .line 318
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 324
    return-void
.end method

.method public scan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;I)V
    .registers 11
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .param p2, "maxItemToScan"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 249
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Korean scan() itemsToScan = "

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "itemScanned":I
    :goto_16
    if-ge v0, p2, :cond_28

    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->remove()Ljava/lang/String;

    move-result-object v1

    .local v1, "words":Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 256
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget-boolean v3, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isHighQualityWord:Z

    invoke-virtual {v2, v1, v3, v6, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlmScanBuf(Ljava/lang/String;ZZZ)Z

    goto :goto_16

    .line 259
    .end local v1    # "words":Ljava/lang/String;
    :cond_28
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Korean scan() itemScanned = "

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public showInputModeMenu()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 172
    :cond_a
    :goto_a
    return-void

    .line 123
    :cond_b
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_a

    .line 127
    :cond_1b
    new-instance v2, Lcom/nuance/swype/input/chinese/InputModeListAdapter;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    .line 128
    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-direct {v2, v4, v5}, Lcom/nuance/swype/input/chinese/InputModeListAdapter;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 129
    .local v2, "modeAdapter":Lcom/nuance/swype/input/chinese/InputModeListAdapter;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 131
    new-instance v4, Lcom/nuance/swype/input/korean/KoreanIMEHandler$1;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler$1;-><init>(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 141
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    new-instance v4, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;

    invoke-direct {v4, p0, v2}, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;-><init>(Lcom/nuance/swype/input/korean/KoreanIMEHandler;Lcom/nuance/swype/input/chinese/InputModeListAdapter;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->input_method:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 163
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 164
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 165
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 166
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v4

    .line 167
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 168
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 169
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 171
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_a
.end method

.method public toggleFullScreenHwr()V
    .registers 4

    .prologue
    .line 200
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 201
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-nez v1, :cond_9

    .line 211
    :cond_8
    :goto_8
    return-void

    .line 203
    :cond_9
    instance-of v2, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-eqz v2, :cond_8

    move-object v0, v1

    .line 204
    check-cast v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .line 205
    .local v0, "hwrInputView":Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptInlineAndClearCandidates()V

    .line 206
    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->toggleHandWritingFrame()V

    .line 208
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->updateInputViewShown()V

    .line 209
    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_8
.end method
