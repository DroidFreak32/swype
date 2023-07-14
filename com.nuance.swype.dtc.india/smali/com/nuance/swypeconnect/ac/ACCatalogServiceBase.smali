.class public Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;
.super Lcom/nuance/swypeconnect/ac/ACService;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACCatalogService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$2;,
        Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;,
        Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;,
        Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;,
        Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;
    }
.end annotation


# instance fields
.field private final CatalogCallbackAdapter:Lcom/nuance/connect/api/CatalogService$CatalogCallback;

.field private catalogService:Lcom/nuance/connect/api/CatalogService;

.field private final customer:Lcom/nuance/connect/util/Logger$Log;

.field private final listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private manager:Lcom/nuance/swypeconnect/ac/ACManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$1;-><init>(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->CatalogCallbackAdapter:Lcom/nuance/connect/api/CatalogService$CatalogCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;)Lcom/nuance/connect/api/CatalogService;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    return-object v0
.end method


# virtual methods
.method public cancelDownloadCatalogItem(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v2, 0x7a

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x87

    const-string/jumbo v2, "Catalog Service is not enabled"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string/jumbo v1, "SKU cannot be null"

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->getSKUList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string/jumbo v1, "SKU not available for download"

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/CatalogService;->cancelDownloadCatalogItem(Ljava/lang/String;)V

    return-void
.end method

.method protected convertACTypeToType(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public disableCatalog()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->disableCatalog()V

    return-void
.end method

.method public downloadCatalogItem(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    const/16 v2, 0x7a

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x87

    const-string/jumbo v2, "Catalog Service is not enabled"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string/jumbo v1, "SKU cannot be null"

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->getSKUList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const-string/jumbo v1, "SKU not available for download"

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "downloadCatalogItem sku="

    const-string/jumbo v2, " callback="

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->customer:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "downloadCatalogItem requested for sku: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;

    invoke-direct {v1, p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$CatalogDownloadCallbackAdapter;-><init>(Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/nuance/connect/api/CatalogService;->downloadCatalogItem(Ljava/lang/String;Lcom/nuance/connect/api/CatalogService$CatalogItemDownloadCallback;)V

    return-void
.end method

.method public enableCatalog()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->enableCatalog()V

    return-void
.end method

.method public getCatalogItemByCategory(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/CatalogService;->getCatalogItemByCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItem;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$2;->$SwitchMap$com$nuance$connect$api$CatalogService$CatalogItem$Type:[I

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v3, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;

    invoke-direct {v3, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;-><init>(Lcom/nuance/connect/api/CatalogService$CatalogItem;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    new-instance v3, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;

    invoke-direct {v3, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;-><init>(Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;-><init>()V

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;->setCategory(Ljava/lang/String;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCatalogItemCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->getCatalogItemCategories()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getCatalogItemCategoriesByType(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->convertACTypeToType(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/CatalogService;->getCatalogItemCategoriesByType(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getCatalogItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->getCatalogItems()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItem;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$2;->$SwitchMap$com$nuance$connect$api$CatalogService$CatalogItem$Type:[I

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v3, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;

    invoke-direct {v3, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;-><init>(Lcom/nuance/connect/api/CatalogService$CatalogItem;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    new-instance v3, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;

    invoke-direct {v3, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;-><init>(Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCatalogItemsByType(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->convertACTypeToType(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/CatalogService;->getCatalogItemsByType(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItem;

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$2;->$SwitchMap$com$nuance$connect$api$CatalogService$CatalogItem$Type:[I

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v3, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;

    invoke-direct {v3, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;-><init>(Lcom/nuance/connect/api/CatalogService$CatalogItem;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    new-instance v3, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;

    invoke-direct {v3, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;-><init>(Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemComparator;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/CatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "CATALOG_SERVICE"

    return-object v0
.end method

.method public getSKUList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->getSKUList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getSKUListForPurchase()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->getSKUListForPurchase()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getSKUListForPurchaseByType(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->convertACTypeToType(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/CatalogService;->getSKUListForPurchaseByType(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public init(Lcom/nuance/connect/api/CatalogService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ACCatalogServiceBase init()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->CatalogCallbackAdapter:Lcom/nuance/connect/api/CatalogService$CatalogCallback;

    invoke-interface {p1, v0}, Lcom/nuance/connect/api/CatalogService;->registerCatalogCallback(Lcom/nuance/connect/api/CatalogService$CatalogCallback;)V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-void
.end method

.method public installedCatalogItem(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x87

    const-string/jumbo v2, "Catalog Service is not enabled"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "SKU cannot be null"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/CatalogService;->installedCatalogItem(Ljava/lang/String;)V

    return-void
.end method

.method public isCatalogListAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->isCatalogListAvailable()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->isCatalogEnabled()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method requireInitialization()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected requiresDocument(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetCatalogItemPrice()V
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->resetCatalogItemPrice()V

    :cond_0
    return-void
.end method

.method public resetPurchasedSKU()V
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService;->resetPurchasedSKU()V

    :cond_0
    return-void
.end method

.method public setCatalogItemPrice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v1, v0}, Lcom/nuance/connect/api/CatalogService;->setCatalogItemPrices(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setCatalogItemPrices(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/CatalogService;->setCatalogItemPrices(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setPurchasedSKU(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/CatalogService;->setPurchasedSKU(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPurchasedSKUList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/CatalogService;->setPurchasedSKUList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->unregisterCallbacks()V

    return-void
.end method

.method public skuAvailable(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/CatalogService;->skuListAvailable(Ljava/util/List;)V

    return-void
.end method

.method public skuListAvailable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/CatalogService;->skuListAvailable(Ljava/util/List;)V

    return-void
.end method

.method start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isShutdown:Z

    return-void
.end method

.method public uninstallCatalogItem(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x87

    const-string/jumbo v2, "Catalog Service is not enabled"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "SKU cannot be null"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->catalogService:Lcom/nuance/connect/api/CatalogService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/CatalogService;->uninstallCatalogItem(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->listCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
