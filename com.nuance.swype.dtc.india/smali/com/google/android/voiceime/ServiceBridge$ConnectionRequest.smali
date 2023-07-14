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
    accessFlags = 0x2
    name = "ConnectionRequest"
.end annotation


# instance fields
.field private final mLanguageCode:Ljava/lang/String;

.field private mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

.field final synthetic this$0:Lcom/google/android/voiceime/ServiceBridge;


# direct methods
.method private constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;)V
    .locals 0
    .param p2, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mLanguageCode:Ljava/lang/String;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;B)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/voiceime/ServiceBridge;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;-><init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;Lcom/google/android/voiceime/ServiceHelper$Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
    .param p1, "x1"    # Lcom/google/android/voiceime/ServiceHelper$Callback;

    .prologue
    .line 85
    .line 2096
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    .line 85
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 101
    check-cast p2, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;

    .line 1077
    .end local p2    # "service":Landroid/os/IBinder;
    iget-object v0, p2, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;->this$0:Lcom/google/android/voiceime/ServiceHelper;

    .line 103
    iget-object v1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    .line 2058
    sget-object v2, Lcom/google/android/voiceime/ServiceHelper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "#startRecognition"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2059
    iput-object v1, v0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    .line 2060
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/voiceime/ActivityHelper;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2061
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2062
    invoke-virtual {v0, v1}, Lcom/google/android/voiceime/ServiceHelper;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 109
    return-void
.end method
