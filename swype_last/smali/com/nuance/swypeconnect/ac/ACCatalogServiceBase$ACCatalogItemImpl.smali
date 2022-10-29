.class Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ACCatalogItemImpl"
.end annotation


# instance fields
.field private final item:Lcom/nuance/connect/api/CatalogService$CatalogItem;


# direct methods
.method constructor <init>(Lcom/nuance/connect/api/CatalogService$CatalogItem;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    return-void
.end method


# virtual methods
.method public getCanonicalName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getCategoryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryWeight()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getCategoryWeight()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDateAdded()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getDateAdded()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getDateAvailableEnd()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getDateAvailableEnd()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getDateAvailableStart()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getDateAvailableStart()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getDateFulfillEnd()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getDateFulfillEnd()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionLong()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getDescriptionLong()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionShort()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getDescriptionShort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewURLList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getPreviewURLList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSKU()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getSKU()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getThumbnailURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedDate()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getUpdatedDate()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getWeight(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->getWeight(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isDownloadable()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->isDownloadable()Z

    move-result v0

    return v0
.end method

.method public isFree()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->isFree()Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->isInstalled()Z

    move-result v0

    return v0
.end method

.method public isPurchasable()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->isPurchasable()Z

    move-result v0

    return v0
.end method

.method public isPurchased()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->isPurchased()Z

    move-result v0

    return v0
.end method

.method public isUpdateAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;->item:Lcom/nuance/connect/api/CatalogService$CatalogItem;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItem;->isUpdateAvailable()Z

    move-result v0

    return v0
.end method
