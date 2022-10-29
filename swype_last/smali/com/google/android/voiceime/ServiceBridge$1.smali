.class final Lcom/google/android/voiceime/ServiceBridge$1;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Lcom/google/android/voiceime/ServiceHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voiceime/ServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/ServiceBridge;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/voiceime/ServiceBridge;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$1;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    iput-object p2, p0, Lcom/google/android/voiceime/ServiceBridge$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;)V
    .registers 4
    .param p1, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge$1;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    .line 1028
    iget-object v0, v0, Lcom/google/android/voiceime/ServiceBridge;->mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    .line 61
    invoke-interface {v0, p1}, Lcom/google/android/voiceime/IntentApiTrigger$Callback;->onRecognitionResult(Ljava/lang/String;)V

    .line 63
    :try_start_7
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/voiceime/ServiceBridge$1;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    .line 2028
    iget-object v1, v1, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge$1;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    .line 3028
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    .line 69
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method
