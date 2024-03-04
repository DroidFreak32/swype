.class Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

.field final synthetic val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->access$100(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadComplete(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public downloadFailed(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->access$100(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadFailed(I)V

    :cond_0
    return-void
.end method

.method public downloadPercentage(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadPercentage(I)V

    :cond_0
    return-void
.end method

.method public downloadStarted()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadStarted()V

    :cond_0
    return-void
.end method

.method public downloadStopped(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->access$100(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadStopped(I)V

    :cond_0
    return-void
.end method
