.class public Lcom/google/android/voiceime/ServiceHelper;
.super Landroid/app/Service;
.source "ServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;,
        Lcom/google/android/voiceime/ServiceHelper$Callback;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "ServiceHelper"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/google/android/voiceime/ServiceHelper;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;

    invoke-direct {v0, p0}, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;-><init>(Lcom/google/android/voiceime/ServiceHelper;)V

    iput-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mBinder:Landroid/os/IBinder;

    .line 75
    return-void
.end method


# virtual methods
.method public final notifyResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    iget-object v0, v1, Lcom/google/android/voiceime/ServiceHelper$Callback;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    iget-object v0, v0, Lcom/google/android/voiceime/ServiceBridge;->mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    iget-object v2, v0, Lcom/google/android/voiceime/IntentApiTrigger$Callback;->this$0:Lcom/google/android/voiceime/IntentApiTrigger;

    iput-object p1, v2, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    iget-object v0, v2, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Lcom/google/android/voiceime/IntentApiTrigger;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    :try_start_0
    iget-object v0, v1, Lcom/google/android/voiceime/ServiceHelper$Callback;->val$context:Landroid/content/Context;

    iget-object v2, v1, Lcom/google/android/voiceime/ServiceHelper$Callback;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    iget-object v2, v2, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, v1, Lcom/google/android/voiceime/ServiceHelper$Callback;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    sget-object v0, Lcom/google/android/voiceime/ServiceHelper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "#onCreate"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 54
    sget-object v0, Lcom/google/android/voiceime/ServiceHelper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "#onDestroy"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public final startRecognition$5af64e10(Lcom/google/android/voiceime/ServiceHelper$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/android/voiceime/ServiceHelper$Callback;

    .prologue
    .line 58
    sget-object v1, Lcom/google/android/voiceime/ServiceHelper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "#startRecognition"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/voiceime/ActivityHelper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/voiceime/ServiceHelper;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
