.class Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "SDKUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;-><init>(Lcom/nuance/swype/connect/SDKUpdateManager;Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 7
    .param p1, "isConnected"    # Z

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 280
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "onConnectionChanged("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 281
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-static {v1}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->access$200(Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-static {v1, v5}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->access$202(Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;Z)Z

    .line 283
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    iget-object v1, v1, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-static {v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$300(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 284
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    iget-object v1, v1, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-static {v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$400(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    iget-object v1, v1, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-static {v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$400(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->downloadUpdate(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    iget-object v0, v1, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 290
    .local v0, "c":Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-static {v1}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->access$500(Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;)V

    .line 291
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    iput v5, v1, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    .line 292
    invoke-interface {v0, v6}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadFailed(I)V

    goto :goto_0

    .line 295
    .end local v0    # "c":Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    iget-object v0, v1, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 296
    .restart local v0    # "c":Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    invoke-static {v1}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->access$500(Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;)V

    .line 297
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;->this$0:Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    iput v5, v1, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    .line 298
    invoke-interface {v0, v6}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadFailed(I)V

    goto :goto_0
.end method
