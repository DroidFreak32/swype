.class public abstract Lcom/nuance/swype/input/IMEHandler;
.super Ljava/lang/Object;
.source "IMEHandler.java"


# static fields
.field protected static final ARROW_KEYS_ACCELERATE_AT:I = 0x14

.field protected static final DELETE_ACCELERATE_AT:I = 0x14

.field public static final DLM_TEXT_SCAN_ACTION_DELAY_REORDER:I = 0x0

.field protected static final POS_METHOD:I = 0x1

.field protected static final POS_SETTINGS:I = 0x0

.field protected static final QUICK_PRESS:I = 0x2ee

.field public static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field public initializeCoreNeeded:Z

.field public mIme:Lcom/nuance/swype/input/IME;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/IMEHandler;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/IMEHandler;->initializeCoreNeeded:Z

    return-void
.end method


# virtual methods
.method public checkCompatability()Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 2

    .prologue
    .line 82
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_NONE:Lcom/nuance/input/swypecorelib/XT9Status;

    return-object v0
.end method

.method public abstract cyclingKeyboardInput()V
.end method

.method public getMaxItemToScan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)I
    .registers 3
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public handleNewWordsDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .registers 2
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 70
    return-void
.end method

.method public abstract handleXT9LanguageCyclingKey()V
.end method

.method public handleXT9LanguageCyclingKeyForCJK()V
    .registers 1

    .prologue
    .line 105
    return-void
.end method

.method public initializeCore()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public isEditNumorSymMode()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v3, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-nez v3, :cond_6

    .line 123
    :cond_5
    :goto_5
    return v2

    .line 111
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 112
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v1

    .line 116
    .local v1, "keyboardSwitcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    if-eqz v1, :cond_5

    .line 119
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v3

    if-nez v3, :cond_26

    .line 120
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 121
    :cond_26
    const/4 v2, 0x1

    goto :goto_5
.end method

.method public abstract onCreate()V
.end method

.method public abstract onCreateCandidatesView()Landroid/view/View;
.end method

.method public abstract onCreateInputView()Landroid/view/View;
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onFinishCandidatesView(Z)V
.end method

.method public abstract onFinishInput()V
.end method

.method public abstract onFinishInputView(Z)V
.end method

.method public onInitializeInterface()V
    .registers 1

    .prologue
    .line 66
    return-void
.end method

.method public onKey(Landroid/graphics/Point;I[I)Z
    .registers 11
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I

    .prologue
    const/16 v6, 0x6b

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 199
    iget-object v3, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 201
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-nez v0, :cond_d

    .line 228
    :cond_c
    :goto_c
    return v1

    .line 205
    :cond_d
    sparse-switch p2, :sswitch_data_4c

    .line 224
    iget-object v3, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v3

    if-nez v3, :cond_c

    :goto_1a
    move v1, v2

    .line 228
    goto :goto_c

    .line 207
    :sswitch_1c
    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 209
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 211
    :cond_29
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEHandler;->showInputModeMenu()V

    goto :goto_1a

    .line 214
    :sswitch_2d
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEHandler;->showActionOnKeyboardOption()V

    goto :goto_1a

    .line 217
    :sswitch_31
    const/16 v3, 0xb7b

    invoke-virtual {v0, v3, v1, v2}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    goto :goto_1a

    .line 220
    :sswitch_37
    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v4, 0x5

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1a

    .line 205
    :sswitch_data_4c
    .sparse-switch
        0xb7b -> :sswitch_31
        0x192e -> :sswitch_2d
        0x192f -> :sswitch_1c
        0xaa3b -> :sswitch_37
    .end sparse-switch
.end method

.method public abstract onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 63
    return-void
.end method

.method public scan(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;I)V
    .registers 3
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .param p2, "maxItemToScan"    # I

    .prologue
    .line 75
    return-void
.end method

.method public showActionOnKeyboardOption()V
    .registers 7

    .prologue
    .line 133
    iget-object v4, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 196
    :cond_10
    :goto_10
    return-void

    .line 137
    :cond_11
    new-instance v1, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;

    iget-object v4, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    .line 138
    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    .line 140
    .local v1, "listAdapter":Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;
    iget-object v4, v1, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 146
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 147
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    new-instance v4, Lcom/nuance/swype/input/IMEHandler$1;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/IMEHandler$1;-><init>(Lcom/nuance/swype/input/IMEHandler;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    new-instance v4, Lcom/nuance/swype/input/IMEHandler$2;

    invoke-direct {v4, p0, v1}, Lcom/nuance/swype/input/IMEHandler$2;-><init>(Lcom/nuance/swype/input/IMEHandler;Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    iget-object v4, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->handwriting_trace_toggle:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 187
    iget-object v4, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 188
    iget-object v4, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 189
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 190
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v5, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 192
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 193
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 194
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 195
    iget-object v4, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_10
.end method

.method public showInputModeMenu()V
    .registers 1

    .prologue
    .line 129
    return-void
.end method

.method public switchToHandwritingModeCJK()V
    .registers 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_34

    .line 91
    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->switchToHandwritingModeCJK()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 92
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v0, :cond_34

    .line 93
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v1

    if-nez v1, :cond_25

    .line 94
    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v2, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 97
    :cond_25
    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getKeyboardBackgroundManager()Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 98
    iget-object v1, p0, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->switchInputViewAsync()V

    .line 101
    .end local v0    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_34
    return-void
.end method

.method public abstract toggleFullScreenHwr()V
.end method
