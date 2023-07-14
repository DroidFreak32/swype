.class public Lcom/nuance/swype/input/keyboard/GestureHandler;
.super Ljava/lang/Object;
.source "GestureHandler.java"


# instance fields
.field private final coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

.field private final gestureTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private final ime:Lcom/nuance/swype/input/IME;

.field private final inputView:Lcom/nuance/swype/input/InputView;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/GestureManager;)V
    .locals 5
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "inputView"    # Lcom/nuance/swype/input/InputView;
    .param p3, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p4, "gestureManager"    # Lcom/nuance/swype/input/GestureManager;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->gestureTable:Landroid/util/SparseArray;

    .line 28
    iput-object p1, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->ime:Lcom/nuance/swype/input/IME;

    .line 29
    iput-object p2, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 30
    iput-object p3, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 32
    invoke-virtual {p4}, Lcom/nuance/swype/input/GestureManager;->loadGestures()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {p4}, Lcom/nuance/swype/input/GestureManager;->getGestures()Ljava/util/List;

    move-result-object v1

    .line 34
    .local v1, "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;>;"
    invoke-virtual {p3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->loadGestures(Ljava/util/List;)Z

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;

    .line 37
    .local v0, "gesture":Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->gestureTable:Landroid/util/SparseArray;

    iget-short v4, v0, Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;->returnValue:S

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 40
    .end local v0    # "gesture":Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;
    .end local v1    # "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;>;"
    :cond_0
    return-void
.end method

.method private handleCustomGesture(I)V
    .locals 11
    .param p1, "gestureCode"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 58
    iget-object v9, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 59
    .local v9, "localInputView":Lcom/nuance/swype/input/InputView;
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->ime:Lcom/nuance/swype/input/IME;

    .line 61
    .local v1, "localIME":Lcom/nuance/swype/input/IME;
    sparse-switch p1, :sswitch_data_0

    .line 148
    :cond_0
    :goto_0
    const/16 v2, -0x6e

    if-eq p1, v2, :cond_1

    const/16 v2, -0x6f

    if-eq p1, v2, :cond_1

    .line 153
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->isHandWritingInputView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->showNextWordPrediction()V

    .line 157
    :cond_1
    return-void

    .line 66
    :sswitch_0
    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/IME;->setRecaptureWhenSwitching(Z)V

    .line 67
    new-array v4, v4, [I

    move v3, p1

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 71
    :sswitch_1
    new-array v4, v4, [I

    move v3, p1

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 76
    :sswitch_2
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    const v3, 0x1020022

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Lcom/nuance/swype/input/InputView;->setLastInput(I)V

    goto :goto_0

    .line 83
    :sswitch_3
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->handleGoogleMapGesture()V

    goto :goto_0

    .line 87
    :sswitch_4
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->hideWindow()V

    goto :goto_0

    .line 91
    :sswitch_5
    const-string/jumbo v2, "www."

    invoke-virtual {v9, v2, v6, v7}, Lcom/nuance/swype/input/InputView;->onText(Ljava/lang/CharSequence;J)V

    goto :goto_0

    .line 95
    :sswitch_6
    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/IME;->setUseEditLayer(Z)V

    .line 96
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    const v3, 0x1020020

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->performContextMenuAction(I)Z

    .line 99
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->clearCurrentActiveWord()V

    goto :goto_0

    .line 105
    :sswitch_7
    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/IME;->setUseEditLayer(Z)V

    .line 106
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    const v3, 0x1020021

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->performContextMenuAction(I)Z

    goto/16 :goto_0

    .line 115
    :sswitch_8
    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/IME;->setUseEditLayer(Z)V

    .line 116
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/util/InputConnectionUtils;->selectAll(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)V

    goto/16 :goto_0

    .line 122
    :sswitch_9
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v10, v2

    .line 123
    .local v10, "term":Ljava/lang/String;
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const-string/jumbo v2, "query"

    invoke-virtual {v8, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 128
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v1, v8}, Lcom/nuance/swype/input/IME;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "term":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 135
    :sswitch_a
    invoke-virtual {v9, p1, v4, v3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    goto/16 :goto_0

    .line 139
    :sswitch_b
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getRecaptureHandler()Lcom/nuance/swype/input/RecaptureHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getRecaptureHandler()Lcom/nuance/swype/input/RecaptureHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/nuance/swype/input/RecaptureHandler;->onKey(II)Z

    goto/16 :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        -0x70 -> :sswitch_9
        -0x6f -> :sswitch_1
        -0x6e -> :sswitch_b
        -0x6d -> :sswitch_5
        -0x6c -> :sswitch_4
        -0x6b -> :sswitch_3
        -0x6a -> :sswitch_a
        0xb50 -> :sswitch_8
        0xb51 -> :sswitch_6
        0xb52 -> :sswitch_7
        0xb53 -> :sswitch_2
        0xfed -> :sswitch_0
        0xfee -> :sswitch_0
        0xff5 -> :sswitch_0
        0x192c -> :sswitch_0
    .end sparse-switch
.end method

.method private handlePunctGesture(Lcom/nuance/input/swypecorelib/WordCandidate;)V
    .locals 4
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 161
    .local v0, "localInputView":Lcom/nuance/swype/input/InputView;
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->ime:Lcom/nuance/swype/input/IME;

    .line 163
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->word()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 164
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 165
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->showNextWordPrediction()V

    .line 166
    return-void
.end method


# virtual methods
.method public handle(I)Z
    .locals 2
    .param p1, "gestureCode"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->gestureTable:Landroid/util/SparseArray;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/keyboard/GestureHandler;->handleCustomGesture(I)V

    .line 171
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handle(Lcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 2
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/keyboard/GestureHandler;->isGesture(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/keyboard/GestureHandler;->isCustomGesture(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 181
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/keyboard/GestureHandler;->handleCustomGesture(I)V

    .line 185
    :goto_0
    const/4 v0, 0x1

    .line 188
    :cond_0
    return v0

    .line 183
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/keyboard/GestureHandler;->handlePunctGesture(Lcom/nuance/input/swypecorelib/WordCandidate;)V

    goto :goto_0
.end method

.method public isCustomGesture(Lcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 5
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/keyboard/GestureHandler;->isGesture(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "gestureStr":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 50
    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/GestureHandler;->gestureTable:Landroid/util/SparseArray;

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 54
    .end local v0    # "gestureStr":Ljava/lang/CharSequence;
    :goto_0
    return v1

    .restart local v0    # "gestureStr":Ljava/lang/CharSequence;
    :cond_0
    move v1, v2

    .line 50
    goto :goto_0

    .end local v0    # "gestureStr":Ljava/lang/CharSequence;
    :cond_1
    move v1, v2

    .line 54
    goto :goto_0
.end method

.method public isGesture(Lcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 2
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_GESTURE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
