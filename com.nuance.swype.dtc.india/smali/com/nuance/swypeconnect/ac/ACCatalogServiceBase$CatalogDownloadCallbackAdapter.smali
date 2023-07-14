.class final Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CatalogDownloadCallbackAdapter"
.end annotation


# instance fields
.field private final callback:Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;

.field private notifiedPercentDone:Z

.field private notifiedStart:Z

.field private final sku:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->notifiedStart:Z

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->notifiedPercentDone:Z

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;

    return-void
.end method


# virtual methods
.method public final downloadComplete(Ljava/io/File;)Z
    .locals 6

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isShutdown:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->notifiedStart:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->downloadStarted()V

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->notifiedPercentDone:Z

    if-nez v0, :cond_1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->downloadPercentage(I)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$300(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->DLT:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string/jumbo v3, "Catalog Item download Complete. sku:"

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->sku:Ljava/lang/String;

    const-string/jumbo v5, " Status: "

    if-eqz v1, :cond_3

    const-string/jumbo v0, "Success"

    :goto_0
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$400(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/api/CatalogService;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->sku:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/CatalogService;->installedCatalogItem(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :cond_3
    const-string/jumbo v0, "Failed"

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final downloadFailed(I)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Catalog Item Download failed. sku:"

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->sku:Ljava/lang/String;

    const-string/jumbo v3, " reason: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;->downloadFailed(I)V

    :cond_0
    return-void
.end method

.method public final downloadPercentage(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isShutdown:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->notifiedStart:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->downloadStarted()V

    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->notifiedPercentDone:Z

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;->downloadPercentage(I)V

    :cond_2
    return-void
.end method

.method public final downloadStarted()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Catalog Item Download sku:"

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->sku:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->notifiedStart:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;->downloadStarted()V

    :cond_0
    return-void
.end method

.method public final downloadStopped(I)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->access$200(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Catalog Item Download stopped. sku:"

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->sku:Ljava/lang/String;

    const-string/jumbo v3, " reason: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;->downloadStopped(I)V

    :cond_0
    return-void
.end method
