.class Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;


# instance fields
.field started:Z

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

.field final synthetic val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->started:Z

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)Z
    .registers 6

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isShutdown:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->access$400(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->CHINESEDICTIONARIES:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->downloadStarted()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v0

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public downloadFailed(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isShutdown:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadFailed(I)V

    :cond_b
    return-void
.end method

.method public downloadPercentage(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isShutdown:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->downloadStarted()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadPercentage(I)V

    :cond_e
    return-void
.end method

.method public downloadStarted()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isShutdown:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->started:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->started:Z

    :cond_12
    return-void
.end method

.method public downloadStopped(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isShutdown:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;->downloadStopped(I)V

    :cond_b
    return-void
.end method
