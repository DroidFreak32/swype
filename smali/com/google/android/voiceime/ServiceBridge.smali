.class final Lcom/google/android/voiceime/ServiceBridge;
.super Ljava/lang/Object;
.source "ServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;,
        Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
    }
.end annotation


# instance fields
.field final mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;

.field mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/voiceime/ServiceBridge;-><init>(Lcom/google/android/voiceime/IntentApiTrigger$Callback;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voiceime/IntentApiTrigger$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge;->mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    .line 45
    return-void
.end method
