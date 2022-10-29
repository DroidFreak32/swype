.class final Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LanguageUpdateNotificationRunnable"
.end annotation


# instance fields
.field private final language:Lcom/nuance/swype/input/InputMethods$Language;

.field private notificationPosted:Z

.field private final sdkMgr:Lcom/nuance/swype/connect/SDKDownloadManager;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager;)V
    .registers 3
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "sdkMgr"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 4625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4626
    iput-object p1, p0, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;->language:Lcom/nuance/swype/input/InputMethods$Language;

    .line 4627
    iput-object p2, p0, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;->sdkMgr:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 4628
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/input/IME$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "x1"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p3, "x2"    # Lcom/nuance/swype/input/IME$1;

    .prologue
    .line 4620
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .prologue
    .line 4620
    iget-boolean v0, p0, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;->notificationPosted:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;)Lcom/nuance/swype/input/InputMethods$Language;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;

    .prologue
    .line 4620
    iget-object v0, p0, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;->language:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 4632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;->notificationPosted:Z

    .line 4633
    iget-object v0, p0, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;->sdkMgr:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/input/IME$LanguageUpdateNotificationRunnable;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->postLanguageUpdateNotification(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 4634
    return-void
.end method
