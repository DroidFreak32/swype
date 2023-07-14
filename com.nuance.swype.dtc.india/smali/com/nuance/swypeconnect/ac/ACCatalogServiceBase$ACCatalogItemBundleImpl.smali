.class Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;
.super Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemBundle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ACCatalogItemBundleImpl"
.end annotation


# instance fields
.field private final itemBundle:Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;


# direct methods
.method constructor <init>(Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;-><init>(Lcom/nuance/connect/api/CatalogService$CatalogItem;)V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;->itemBundle:Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;

    return-void
.end method


# virtual methods
.method public getBundledBaseCatalogItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;->itemBundle:Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;->getBundledBaseCatalogItemList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBundledCatalogItemList()Ljava/util/List;
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

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;->getBundledBaseCatalogItemList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

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

    goto :goto_0

    :pswitch_0
    new-instance v3, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;

    invoke-direct {v3, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemImpl;-><init>(Lcom/nuance/connect/api/CatalogService$CatalogItem;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    new-instance v3, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;

    invoke-direct {v3, v0}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;-><init>(Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBundledCatalogItemSKUList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;->itemBundle:Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;->getBundledCatalogItemSKUList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBundledCatalogItemTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase$ACCatalogItemBundleImpl;->itemBundle:Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;

    invoke-interface {v0}, Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;->getBundledCatalogItemTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
