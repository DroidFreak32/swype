.class public final Lcom/nuance/swype/inapp/CatalogManager$3;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "CatalogManager.java"


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
.method public constructor <init>(Lcom/nuance/swype/inapp/CatalogManager;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/CatalogManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager$3;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onConnectionChanged(Z)V
    .registers 15
    .param p1, "isConnected"    # Z

    .prologue
    .line 585
    if-nez p1, :cond_3

    .line 621
    :cond_2
    :goto_2
    return-void

    .line 588
    :cond_3
    sget-object v8, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "onConnectionChanged...isConnected: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 589
    iget-object v8, p0, Lcom/nuance/swype/inapp/CatalogManager$3;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v7

    .line 590
    .local v7, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 1043
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->getCache()Ljava/util/HashMap;

    move-result-object v0

    .line 592
    .local v0, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_37

    iget-object v8, p0, Lcom/nuance/swype/inapp/CatalogManager$3;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->isPurchaseInfoFetched:Z
    invoke-static {v8}, Lcom/nuance/swype/inapp/CatalogManager;->access$700(Lcom/nuance/swype/inapp/CatalogManager;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 593
    :cond_37
    iget-object v8, p0, Lcom/nuance/swype/inapp/CatalogManager$3;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v8}, Lcom/nuance/swype/inapp/CatalogManager;->setUpService()V

    .line 595
    iget-object v8, p0, Lcom/nuance/swype/inapp/CatalogManager$3;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/ThemeManager;->refetchPurchaseInfoFromGoogleStore(Landroid/content/Context;)V

    goto :goto_2

    .line 599
    :cond_46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v3, "reInstallingSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_53
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 601
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 602
    .local v5, "seeds":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;"
    sget-object v9, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "onConnectionChanged...category: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "...seeds: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v5, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 603
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_83
    :goto_83
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_53

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 1235
    .local v4, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    iget-boolean v10, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalling:Z

    .line 604
    if-eqz v10, :cond_83

    .line 2162
    iget-object v10, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 605
    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_83

    .line 3120
    iget-object v10, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 3162
    iget-object v11, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 606
    invoke-virtual {v7, v10, v11}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v6

    .line 608
    .local v6, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    instance-of v10, v6, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v10, :cond_83

    .line 4162
    :try_start_a7
    iget-object v10, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 610
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v10, p0, Lcom/nuance/swype/inapp/CatalogManager$3;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    const/4 v11, 0x0

    check-cast v6, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v6    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v10, v11, v6}, Lcom/nuance/swype/inapp/CatalogManager;->downloadTheme(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V
    :try_end_b4
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_a7 .. :try_end_b4} :catch_b5

    goto :goto_83

    .line 614
    :catch_b5
    move-exception v2

    .line 615
    .local v2, "e":Lcom/nuance/swypeconnect/ac/ACException;
    sget-object v10, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "onConnectionChanged...e: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_83
.end method

.method public final onInitialized()V
    .registers 3

    .prologue
    .line 625
    invoke-super {p0}, Lcom/nuance/swype/connect/ConnectedStatus;->onInitialized()V

    .line 629
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 630
    new-instance v1, Lcom/nuance/swype/inapp/CatalogManager$3$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/inapp/CatalogManager$3$1;-><init>(Lcom/nuance/swype/inapp/CatalogManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    return-void
.end method
