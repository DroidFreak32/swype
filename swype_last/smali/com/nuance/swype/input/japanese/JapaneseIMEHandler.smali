.class public Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;
.super Lcom/nuance/swype/input/IMEHandler;
.source "JapaneseIMEHandler.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string/jumbo v0, "JapaneseIMEHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .registers 2
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/input/IMEHandler;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    .line 40
    return-void
.end method


# virtual methods
.method public checkCompatability()Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 8

    .prologue
    .line 139
    sget-object v3, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Japanese checkCompatability()"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 140
    sget-object v2, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_NONE:Lcom/nuance/input/swypecorelib/XT9Status;

    .line 141
    .local v2, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 143
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 144
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreJapaneseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v1

    .line 145
    .local v1, "japaneseInput":Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startSession()V

    .line 146
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v2

    .line 148
    .end local v1    # "japaneseInput":Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    :cond_3b
    return-object v2
.end method

.method public cyclingKeyboardInput()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 111
    .local v0, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v1

    .line 112
    .local v1, "currentLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    .line 113
    .local v2, "nextLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    iget v3, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->symbols_keyboard_id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_24

    .line 114
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    .line 116
    :cond_24
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$Layout;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 117
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 119
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->switchInputViewAsync()V

    .line 121
    :cond_3e
    return-void
.end method

.method public destroyAllInputs(Z)V
    .registers 4
    .param p1, "destroyCore"    # Z

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->finishAllInputView()V

    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardInputInflater;->callAllInputViewToDestroy(Z)V

    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->resetInputView(Z)V

    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const-string/jumbo v1, "NO_VIEW"

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public finishAllInputView()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->callAllInputViewToFinish()V

    .line 105
    return-void
.end method

.method public handleXT9LanguageCyclingKey()V
    .registers 1

    .prologue
    .line 155
    return-void
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 161
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_11

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 63
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->destroyAllInputs(Z)V

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 44
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->removeAllPendingMsgs()V

    .line 45
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->destroyAllInputs(Z)V

    .line 47
    :try_start_9
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_12} :catch_18

    .line 54
    :goto_12
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 55
    return-void

    .line 48
    :catch_18
    move-exception v0

    .line 51
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public onFinishCandidatesView(Z)V
    .registers 2
    .param p1, "finishingInput"    # Z

    .prologue
    .line 173
    return-void
.end method

.method public onFinishInput()V
    .registers 4

    .prologue
    .line 71
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    .line 72
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 93
    :cond_14
    :goto_14
    return-void

    .line 77
    :cond_15
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 80
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_14

    .line 82
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    goto :goto_14
.end method

.method public onFinishInputView(Z)V
    .registers 2
    .param p1, "finishingInput"    # Z

    .prologue
    .line 179
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 185
    return-void
.end method

.method public toggleFullScreenHwr()V
    .registers 4

    .prologue
    .line 125
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 126
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-nez v1, :cond_9

    .line 135
    :cond_8
    :goto_8
    return-void

    .line 129
    :cond_9
    instance-of v2, v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    if-eqz v2, :cond_8

    move-object v0, v1

    .line 130
    check-cast v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .line 132
    .local v0, "hwrInputView":Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->updateInputViewShown()V

    .line 133
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showHandWritingView(Z)V

    goto :goto_8
.end method
