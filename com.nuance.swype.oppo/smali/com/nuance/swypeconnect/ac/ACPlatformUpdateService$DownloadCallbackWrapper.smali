.class Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadCallbackWrapper"
.end annotation


# instance fields
.field private wrapped:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;


# direct methods
.method private constructor <init>(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;->wrapped:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;-><init>(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;->wrapped:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadComplete(Ljava/io/File;)V

    return-void
.end method

.method public downloadFailed(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;->wrapped:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadFailed(I)V

    return-void
.end method

.method public downloadPercentage(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;->wrapped:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadPercentage(I)V

    return-void
.end method

.method public downloadStarted()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;->wrapped:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadStarted()V

    return-void
.end method

.method public downloadStopped(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$DownloadCallbackWrapper;->wrapped:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadStopped(I)V

    return-void
.end method
