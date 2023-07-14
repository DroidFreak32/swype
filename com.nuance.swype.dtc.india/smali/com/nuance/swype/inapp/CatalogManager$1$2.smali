.class final Lcom/nuance/swype/inapp/CatalogManager$1$2;
.super Landroid/os/AsyncTask;
.source "CatalogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/inapp/CatalogManager$1;->catalogSKUListChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/inapp/CatalogManager$1;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/CatalogManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nuance/swype/inapp/CatalogManager$1;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager$1$2;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 336
    .line 2339
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1$2;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v0, v0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCatalogItems()Ljava/util/List;

    move-result-object v1

    .line 2341
    const-string/jumbo v0, "New items received in catalogSKUListChanged(): "

    invoke-static {v0, v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$1100$233151b0(Ljava/lang/String;Ljava/util/List;)V

    .line 2344
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Listing categories in catalogSKUListChanged()"

    aput-object v3, v2, v6

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2345
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1$2;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v0, v0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCatalogItemCategories()Ljava/util/List;

    move-result-object v0

    .line 2346
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2347
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "catalog service category:"

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 336
    :cond_0
    return-object v1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 336
    check-cast p1, Ljava/util/List;

    .line 1355
    if-eqz p1, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1$2;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v0, v0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v0, p1}, Lcom/nuance/swype/inapp/CatalogManager;->access$600(Lcom/nuance/swype/inapp/CatalogManager;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$1$2;->this$1:Lcom/nuance/swype/inapp/CatalogManager$1;

    iget-object v0, v0, Lcom/nuance/swype/inapp/CatalogManager$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->triggerShowingThemesWithoutPrices()V

    .line 336
    :cond_0
    return-void
.end method
