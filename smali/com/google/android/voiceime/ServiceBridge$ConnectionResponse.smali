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
    accessFlags = 0x0
    name = "ConnectionResponse"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRecognitionResult:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mRecognitionResult:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mContext:Landroid/content/Context;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 0
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 133
    check-cast p2, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;->getService()Lcom/google/android/voiceime/ServiceHelper;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mRecognitionResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/voiceime/ServiceHelper;->notifyResult(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 137
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 129
    return-void
.end method
