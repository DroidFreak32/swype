.class public Lcom/nuance/swype/input/korean/KoreanIMEHandler;
.super Lcom/nuance/swype/input/IMEHandler;
.source "KoreanIMEHandler.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "KoreanIMEHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 0
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
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method


# virtual methods
.method public checkCompatability()Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 4

    .prologue
    .line 337
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Korean checkCompatability()"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 338
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_NONE:Lcom/nuance/input/swypecorelib/XT9Status;

    .line 339
    .local v1, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 340
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreKoreanInputSession()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .line 342
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->startSession()V

    .line 343
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v1

    .line 347
    :goto_0
    return-object v1

    .line 345
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    goto :goto_0
.end method

.method public cyclingKeyboardInput()V
    .locals 6

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->isEditNumorSymMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 240
    .local v0, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v1

    .line 241
    .local v1, "currentLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    .line 242
    .local v2, "nextLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    iget v3, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->symbols_keyboard_id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 243
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    .line 247
    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$Layout;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 250
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->switchInputViewAsync()V

    goto :goto_0

    .line 244
    :cond_3
    iget v3, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->bilingual_keyboard_id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 245
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    goto :goto_1
.end method

.method public destroyAllInputs(Z)V
    .locals 2
    .param p1, "destroyCore"    # Z

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->finishAllInputView()V

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->resetInputView(Z)V

    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const-string v1, "NO_VIEW"

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public finishAllInputView()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->callAllInputViewToFinish()V

    .line 109
    return-void
.end method

.method public handleNewWordsDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 4
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 271
    iget v0, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->wordHandler:I

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isBigramDlm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Korean handleNewWordsDelayScanning()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-nez v0, :cond_4

    .line 281
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->initializeCoreNeeded:Z

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->initializeCore()V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->initializeCoreNeeded:Z

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->getMaxItemToScan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->scan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;I)V

    .line 292
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 293
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Korean handleNewWordsDelayScanning() - schedule for next batch"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p1, v2, v3}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    goto :goto_0

    .line 296
    :cond_3
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Korean handleNewWordsDelayScanning() - done"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 301
    :cond_4
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Korean handleNewWordsDelayScanning() -- ime in use"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->initializeCoreNeeded:Z

    .line 304
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p1, v2, v3}, Lcom/nuance/swype/input/IME;->sendDelayNewWordsScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;J)V

    goto :goto_0
.end method

.method public handleXT9LanguageCyclingKey()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public initializeCore()V
    .locals 3

    .prologue
    .line 324
    sget-object v1, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Korean initializeCore()"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 326
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 327
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreKoreanInputSession()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .line 329
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->startSession()V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->destroyAllInputs(Z)V

    .line 70
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->removeAllPendingMsgs()V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->destroyAllInputs(Z)V

    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 60
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 0
    .param p1, "finishingInput"    # Z

    .prologue
    .line 372
    return-void
.end method

.method public onFinishInput()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 85
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    goto :goto_0
.end method

.method public onFinishInputView(Z)V
    .locals 0
    .param p1, "finishingInput"    # Z

    .prologue
    .line 378
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 384
    return-void
.end method

.method public scan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;I)V
    .locals 6
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .param p2, "maxItemToScan"    # I

    .prologue
    .line 309
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Korean scan() itemsToScan = "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "itemScanned":I
    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->remove()Ljava/lang/String;

    move-result-object v1

    .local v1, "words":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 315
    add-int/lit8 v0, v0, 0x1

    .line 316
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget v3, p1, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->wordQuality:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlmScanBuf(Ljava/lang/String;IZZ)Z

    goto :goto_0

    .line 319
    .end local v1    # "words":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Korean scan() itemScanned = "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method public showAlertDialog(Landroid/view/View;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 6
    .param p1, "layoutView"    # Landroid/view/View;
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 147
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 152
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 153
    .local v1, "ctx":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 155
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 159
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 161
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 163
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 165
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 167
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 168
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 169
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 172
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 173
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    return-object v4
.end method

.method public showAlertMessageDialog(I)V
    .locals 7
    .param p1, "resId"    # I

    .prologue
    const/4 v6, 0x0

    .line 113
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 116
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iput-object v6, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 119
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 120
    .local v1, "ctx":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 122
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 124
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 127
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 130
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 131
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 133
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 134
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 135
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 137
    iget-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v4, :cond_1

    .line 138
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iput-object v6, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showInputModeMenu()V
    .locals 6

    .prologue
    .line 178
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    :cond_2
    new-instance v2, Lcom/nuance/swype/input/chinese/InputModeListAdapter;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-direct {v2, v4, v5}, Lcom/nuance/swype/input/chinese/InputModeListAdapter;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 187
    .local v2, "modeAdapter":Lcom/nuance/swype/input/chinese/InputModeListAdapter;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 189
    new-instance v4, Lcom/nuance/swype/input/korean/KoreanIMEHandler$1;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/korean/KoreanIMEHandler$1;-><init>(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 199
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    new-instance v4, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;

    invoke-direct {v4, p0, v2}, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;-><init>(Lcom/nuance/swype/input/korean/KoreanIMEHandler;Lcom/nuance/swype/input/chinese/InputModeListAdapter;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->input_method:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 221
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 222
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 223
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 224
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 226
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 227
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 228
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 229
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public toggleFullScreenHwr()V
    .locals 3

    .prologue
    .line 256
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 257
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-nez v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    instance-of v2, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 260
    check-cast v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .line 261
    .local v0, "hwrInputView":Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptInlineAndClearCandidates()V

    .line 262
    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->toggleHandWritingFrame()Z

    .line 264
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->updateInputViewShown()V

    .line 265
    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_0
.end method
