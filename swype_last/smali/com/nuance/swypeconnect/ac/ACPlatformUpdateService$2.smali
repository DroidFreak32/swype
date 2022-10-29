.class Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

.field final synthetic val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->finishDownload()V
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->access$100(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadComplete(Ljava/io/File;)V

    :cond_e
    return-void
.end method

.method public downloadFailed(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->finishDownload()V
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->access$100(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadFailed(I)V

    :cond_e
    return-void
.end method

.method public downloadPercentage(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadPercentage(I)V

    :cond_9
    return-void
.end method

.method public downloadStarted()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadStarted()V

    :cond_9
    return-void
.end method

.method public downloadStopped(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->finishDownload()V
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->access$100(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadStopped(I)V

    :cond_e
    return-void
.end method
