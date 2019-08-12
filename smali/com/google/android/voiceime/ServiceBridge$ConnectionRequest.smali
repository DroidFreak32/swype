.class final Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
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
    name = "ConnectionRequest"
.end annotation


# instance fields
.field private final mLanguageCode:Ljava/lang/String;

.field private mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mLanguageCode:Ljava/lang/String;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;Lcom/google/android/voiceime/ServiceHelper$Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
    .param p1, "x1"    # Lcom/google/android/voiceime/ServiceHelper$Callback;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 102
    check-cast p2, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;->getService()Lcom/google/android/voiceime/ServiceHelper;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mLanguageCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/voiceime/ServiceHelper;->startRecognition$5af64e10(Lcom/google/android/voiceime/ServiceHelper$Callback;)V

    .line 105
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 110
    return-void
.end method
