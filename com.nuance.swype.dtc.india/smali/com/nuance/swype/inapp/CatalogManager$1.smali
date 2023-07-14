.class final Lcom/nuance/swype/inapp/CatalogManager$1;
.super Ljava/lang/Object;
.source "CatalogManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/inapp/CatalogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/inapp/CatalogManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/CatalogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/CatalogManager;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final catalogItemInstalledUpdates(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "acCatalogItems":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;>;"
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Catalog catalogItemInstalledUpdates changed"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public final catalogItemListChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 188
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Catalog item changed"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isGoogleTrialBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$200(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$200(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    new-instance v1, Lcom/nuance/swype/inapp/CatalogManager$1$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/inapp/CatalogManager$1$1;-><init>(Lcom/nuance/swype/inapp/CatalogManager$1;)V

    invoke-static {v0, v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$202(Lcom/nuance/swype/inapp/CatalogManager;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 312
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$200(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/os/AsyncTask;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->mSerialExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final catalogSKUListChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 327
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Catalog SKU list changed"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 330
    if-eqz p1, :cond_0

    .line 331
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Changed SKUs: "

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$1000(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$1000(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    new-instance v1, Lcom/nuance/swype/inapp/CatalogManager$1$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/inapp/CatalogManager$1$2;-><init>(Lcom/nuance/swype/inapp/CatalogManager$1;)V

    invoke-static {v0, v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$1002(Lcom/nuance/swype/inapp/CatalogManager;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 364
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v0}, Lcom/nuance/swype/inapp/CatalogManager;->access$1000(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/os/AsyncTask;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->mSerialExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 365
    return-void
.end method

.method public final skuListAvailable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/nuance/swype/inapp/CatalogManager;->logSkus$7dc49990()V

    .line 381
    return-void
.end method

.method public final skuListUnavailable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/nuance/swype/inapp/CatalogManager;->logSkus$7dc49990()V

    .line 387
    return-void
.end method
