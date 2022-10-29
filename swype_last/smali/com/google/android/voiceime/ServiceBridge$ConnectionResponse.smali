.class final Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voiceime/ServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionResponse"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRecognitionResult:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/voiceime/ServiceBridge;


# direct methods
.method private constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p3, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mRecognitionResult:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Ljava/lang/String;B)V
    .registers 5
    .param p1, "x0"    # Lcom/google/android/voiceime/ServiceBridge;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;-><init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 132
    check-cast p2, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;

    .line 1077
    .end local p2    # "service":Landroid/os/IBinder;
    iget-object v0, p2, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;->this$0:Lcom/google/android/voiceime/ServiceHelper;

    .line 134
    iget-object v1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mRecognitionResult:Ljava/lang/String;

    .line 2066
    iget-object v2, v0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    if-eqz v2, :cond_f

    .line 2067
    iget-object v0, v0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    invoke-interface {v0, v1}, Lcom/google/android/voiceime/ServiceHelper$Callback;->onResult(Ljava/lang/String;)V

    .line 135
    :cond_f
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 136
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 128
    return-void
.end method
