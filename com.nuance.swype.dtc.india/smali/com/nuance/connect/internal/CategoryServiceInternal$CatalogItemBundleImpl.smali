.class public Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;
.super Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

# interfaces
.implements Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/CategoryServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatalogItemBundleImpl"
.end annotation


# instance fields
.field final catalogBundleItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field final catalogBundleTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;"
        }
    .end annotation
.end field

.field final catalogBundledCategoryIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final catalogBundledSKUs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v21, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    invoke-direct/range {v1 .. v21}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledCategoryIds:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledSKUs:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundleItems:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundleTypes:Ljava/util/List;

    if-eqz p20, :cond_0

    invoke-virtual/range {p20 .. p20}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, ","

    move-object/from16 v0, p20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledCategoryIds:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p21, :cond_1

    invoke-virtual/range {p21 .. p21}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, ","

    move-object/from16 v0, p21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledSKUs:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->subscribable:Z

    return-void
.end method


# virtual methods
.method public addBundledItem(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;)V
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getBundledCatalogItemSKUList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundleItems:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundleTypes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundleTypes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAllAvailableSKUs(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundleItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getAllAvailableSKUs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getSKU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method public getAllChildrenSKUs()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundleItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v1

    sget-object v4, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    if-ne v1, v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getAllChildrenSKUs()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getBundledBaseCatalogItemList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundleItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getBundledCatalogItemCategoryIdList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledCategoryIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledSKUs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundleTypes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isDifferent(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isDifferent(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledCategoryIds:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    iget-object v0, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledCategoryIds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    iget-object v0, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledCategoryIds:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledCategoryIds:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledSKUs:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    iget-object v0, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledSKUs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;

    iget-object v0, p1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledSKUs:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundledSKUs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public resetBundledItems()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->catalogBundleItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public resetPurchased()V
    .locals 2

    invoke-super {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->resetPurchased()V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getBundledBaseCatalogItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItem;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->resetPurchased()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPurchased()V
    .locals 2

    invoke-super {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPurchased()V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemBundleImpl;->getBundledBaseCatalogItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/CatalogService$CatalogItem;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setPurchased()V

    goto :goto_0

    :cond_1
    return-void
.end method
