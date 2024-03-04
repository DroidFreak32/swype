.class final Lcom/google/android/voiceime/ImeTrigger;
.super Ljava/lang/Object;
.source "ImeTrigger.java"

# interfaces
.implements Lcom/google/android/voiceime/Trigger;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 46
    return-void
.end method

.method static getInputMethodManager(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 73
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6
    .param p0, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 94
    .local v2, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 95
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 96
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string v4, "voice"

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    .end local v0    # "i":I
    .end local v2    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    return-object v2

    .line 94
    .restart local v0    # "i":I
    .restart local v2    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    .end local v2    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final hasRecognitionResultToCommit()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public final onStartInputView()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public final startVoiceRecognition(Ljava/lang/String;)V
    .locals 8
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 53
    iget-object v5, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v5}, Lcom/google/android/voiceime/ImeTrigger;->getInputMethodManager(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 55
    .local v2, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 57
    .local v1, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v5, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v4, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 61
    .local v4, "token":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "imiId":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    move-object v3, v5

    .line 64
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    new-instance v5, Lcom/google/android/voiceime/ImeTrigger$1;

    invoke-direct {v5, v2, v4, v0, v3}, Lcom/google/android/voiceime/ImeTrigger$1;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/voiceime/ImeTrigger$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 62
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
