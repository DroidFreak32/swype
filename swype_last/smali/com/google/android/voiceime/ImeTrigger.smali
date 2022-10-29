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
    .registers 2
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
    .registers 2
    .param p0, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 73
    const-string/jumbo v0, "input_method"

    .line 74
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 7
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

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 94
    .local v1, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 95
    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 96
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string/jumbo v4, "voice"

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 97
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.google.android"

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 104
    .end local v0    # "i":I
    .end local v1    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_3d
    return-object v1

    .line 94
    .restart local v0    # "i":I
    .restart local v1    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 104
    .end local v0    # "i":I
    .end local v1    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_41
    const/4 v1, 0x0

    goto :goto_3d
.end method


# virtual methods
.method public final hasRecognitionResultToCommit()Z
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .registers 1

    .prologue
    .line 139
    return-void
.end method

.method public final onStartInputView()V
    .registers 1

    .prologue
    .line 129
    return-void
.end method

.method public final startVoiceRecognition(Ljava/lang/String;)V
    .registers 10
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 53
    iget-object v0, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Lcom/google/android/voiceime/ImeTrigger;->getInputMethodManager(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 55
    .local v2, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v6

    .line 57
    .local v6, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v6, :cond_e

    .line 71
    :goto_d
    return-void

    .line 60
    :cond_e
    iget-object v0, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 61
    .local v3, "token":Landroid/os/IBinder;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 1082
    .local v4, "imiId":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object v0

    .line 1083
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1084
    if-eqz v0, :cond_49

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_49

    .line 1085
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    move-object v5, v0

    .line 64
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_3b
    new-instance v0, Lcom/google/android/voiceime/ImeTrigger$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voiceime/ImeTrigger$1;-><init>(Lcom/google/android/voiceime/ImeTrigger;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v7, [Ljava/lang/Void;

    .line 70
    invoke-virtual {v0, v1, v7}, Lcom/google/android/voiceime/ImeTrigger$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d

    .line 1087
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_49
    const/4 v5, 0x0

    goto :goto_3b
.end method
