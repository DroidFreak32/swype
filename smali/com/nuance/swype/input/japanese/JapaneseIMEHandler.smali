.class public Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;
.super Lcom/nuance/swype/input/IMEHandler;
.source "JapaneseIMEHandler.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private japaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "JapaneseIMEHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/nuance/swype/input/IMEHandler;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    .line 44
    return-void
.end method

.method private showAlertDialog(Landroid/view/View;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 6
    .param p1, "layoutView"    # Landroid/view/View;
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 139
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 143
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 144
    .local v1, "ctx":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 146
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 150
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 152
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 154
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 156
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 158
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 159
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 163
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 164
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    return-object v4
.end method

.method private showAlertMessageDialog(I)V
    .locals 7
    .param p1, "resId"    # I

    .prologue
    const/4 v6, 0x0

    .line 107
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 109
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iput-object v6, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 112
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 113
    .local v1, "ctx":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 115
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 120
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 122
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 123
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 125
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 126
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 129
    iget-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iput-object v6, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public checkCompatability()Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 4

    .prologue
    .line 198
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Japanese checkCompatability()"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 199
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_NONE:Lcom/nuance/input/swypecorelib/XT9Status;

    .line 200
    .local v1, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 201
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreJapaneseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->japaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    .line 203
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->japaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startSession()V

    .line 204
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->japaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    .line 206
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->japaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    goto :goto_0
.end method

.method public cyclingKeyboardInput()V
    .locals 6

    .prologue
    .line 169
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 170
    .local v0, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v1

    .line 171
    .local v1, "currentLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    .line 172
    .local v2, "nextLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    iget v3, v2, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->symbols_keyboard_id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v2

    .line 175
    :cond_0
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$Layout;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 178
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->switchInputViewAsync()V

    .line 180
    :cond_1
    return-void
.end method

.method public destroyAllInputs(Z)V
    .locals 2
    .param p1, "destroyCore"    # Z

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->finishAllInputView()V

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardInputInflater;->callAllInputViewToDestroy(Z)V

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->resetInputView(Z)V

    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const-string v1, "NO_VIEW"

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public finishAllInputView()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardInputInflater;->callAllInputViewToFinish()V

    .line 103
    return-void
.end method

.method public handleXT9LanguageCyclingKey()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 61
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->destroyAllInputs(Z)V

    .line 63
    sget-object v0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->removeAllPendingMsgs()V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->destroyAllInputs(Z)V

    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 53
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 0
    .param p1, "finishingInput"    # Z

    .prologue
    .line 233
    return-void
.end method

.method public onFinishInput()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardInputInflater;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 78
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    goto :goto_0
.end method

.method public onFinishInputView(Z)V
    .locals 0
    .param p1, "finishingInput"    # Z

    .prologue
    .line 239
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 245
    return-void
.end method

.method public toggleFullScreenHwr()V
    .locals 3

    .prologue
    .line 184
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 185
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    instance-of v2, v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 189
    check-cast v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .line 191
    .local v0, "hwrInputView":Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->updateInputViewShown()V

    .line 192
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showHandWritingView(Z)V

    goto :goto_0
.end method
