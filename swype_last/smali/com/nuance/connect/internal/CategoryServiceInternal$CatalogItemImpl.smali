.class public Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/CatalogService$CatalogItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/CategoryServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatalogItemImpl"
.end annotation


# static fields
.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field added:Ljava/util/Calendar;

.field availableEnd:Ljava/util/Calendar;

.field availableStart:Ljava/util/Calendar;

.field catalogItemUUID:Ljava/lang/String;

.field final categoryWeightList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field descriptionLong:Ljava/lang/String;

.field descriptionShort:Ljava/lang/String;

.field fulfillDate:Ljava/util/Calendar;

.field installed:Z

.field itemType:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

.field locale:Ljava/lang/String;

.field name:Ljava/lang/String;

.field previewURLList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field price:Ljava/lang/String;

.field purchaseFlag:I

.field purchased:Z

.field regionsExcluded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field regionsIncluded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field revertStatus:Ljava/lang/String;

.field sku:Ljava/lang/String;

.field status:Ljava/lang/String;

.field subscribable:Z

.field thumbnailURL:Ljava/lang/String;

.field title:Ljava/lang/String;

.field updatedDate:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .registers 42
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
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->categoryWeightList:Ljava/util/Map;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->subscribable:Z

    sget-object v21, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->KEYBOARD:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

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

    invoke-virtual/range {v1 .. v21}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;)V
    .registers 22
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
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->categoryWeightList:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->subscribable:Z

    invoke-virtual/range {p0 .. p20}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->inCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;)Z
    .registers 2

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableNow()Z

    move-result v0

    return v0
.end method

.method private availableNow()Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableStart()Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableStart()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_19

    move v0, v1

    :cond_19
    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableEnd()Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_2c

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableEnd()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2c

    move v0, v1

    :cond_2c
    return v0
.end method

.method private inCategory(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->categoryWeightList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFulfillable()Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateFulfillEnd()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateFulfillEnd()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_18

    const/4 v0, 0x0

    :cond_18
    return v0
.end method


# virtual methods
.method download()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->revertStatus:Ljava/lang/String;

    const-string/jumbo v0, "STATUS_DOWNLOADING"

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->status:Ljava/lang/String;

    return-void
.end method

.method public getAllAvailableSKUs(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->catalogItemUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->categoryWeightList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

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

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->categoryWeightList:Ljava/util/Map;

    return-object v0
.end method

.method public getDateAdded()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->added:Ljava/util/Calendar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->added:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getDateAvailableEnd()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableEnd:Ljava/util/Calendar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableEnd:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getDateAvailableStart()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableStart:Ljava/util/Calendar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableStart:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getDateFulfillEnd()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->fulfillDate:Ljava/util/Calendar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->fulfillDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getDescriptionLong()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->descriptionLong:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionShort()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->descriptionShort:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->previewURLList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionsExcluded()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->regionsExcluded:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRegionsIncluded()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->regionsIncluded:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSKU()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->thumbnailURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->itemType:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->updatedDate:Ljava/util/Calendar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->updatedDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getWeight(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->categoryWeightList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->categoryWeightList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3
.end method

.method public hasUpdate()Z
    .registers 3

    const-string/jumbo v0, "STATUS_INSTALLED_WITH_UPDATE"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAllowedInCountry(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isLocationRestricted()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getRegionsIncluded()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getRegionsIncluded()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getRegionsIncluded()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    :cond_21
    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getRegionsExcluded()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getRegionsExcluded()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getRegionsExcluded()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method isAvailable(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFulfillable()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchasable()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFree()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableNow()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_18
    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_24
    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isAllowedInCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method isDifferent(Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item sku isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_23
    return v0

    :cond_24
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_5c

    :cond_40
    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item categoryList isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCategoryList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_23

    :cond_5c
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7e

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item title isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_23

    :cond_7e
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDescriptionShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDescriptionShort()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a0

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item short description isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDescriptionShort()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDescriptionShort()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_23

    :cond_a0
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDescriptionLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDescriptionLong()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c3

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item long description isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDescriptionLong()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDescriptionLong()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_c3
    iget v2, p1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchaseFlag:I

    iget v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchaseFlag:I

    if-eq v2, v3, :cond_e6

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item isPurchasable isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchasable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchasable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_e6
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFree()Z

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFree()Z

    move-result v3

    if-eq v2, v3, :cond_10d

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item isFree isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFree()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFree()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_10d
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_130

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item price isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getPrice()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_130
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v3

    if-eq v2, v3, :cond_157

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item isPurchased isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_157
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isInstalled()Z

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isInstalled()Z

    move-result v3

    if-eq v2, v3, :cond_17e

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item isInstalled isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isInstalled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isInstalled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_17e
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isUpdateAvailable()Z

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isUpdateAvailable()Z

    move-result v3

    if-eq v2, v3, :cond_1a5

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item isUpdateAvailable isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isUpdateAvailable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isUpdateAvailable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_1a5
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getThumbnailURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getThumbnailURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c8

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item getThumbnailURL isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getThumbnailURL()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getThumbnailURL()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_1c8
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getPreviewURLList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getPreviewURLList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getPreviewURLList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getPreviewURLList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1f9

    :cond_1e4
    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item getPreviewURLList() isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getPreviewURLList()Ljava/util/List;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getPreviewURLList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_1f9
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAdded()Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_205

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAdded()Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_219

    :cond_205
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAdded()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_22e

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAdded()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAdded()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22e

    :cond_219
    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item getDateAdded() isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAdded()Ljava/util/Calendar;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAdded()Ljava/util/Calendar;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_22e
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableStart()Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_23a

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableStart()Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_24e

    :cond_23a
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableStart()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_263

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableStart()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableStart()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_263

    :cond_24e
    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item getDateAvailableStart() isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableStart()Ljava/util/Calendar;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableStart()Ljava/util/Calendar;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_263
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableEnd()Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_26f

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableEnd()Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_283

    :cond_26f
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableEnd()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_298

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableEnd()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableEnd()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_298

    :cond_283
    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item getDateAvailableEnd() isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableEnd()Ljava/util/Calendar;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getDateAvailableEnd()Ljava/util/Calendar;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_298
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getUpdatedDate()Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_2a4

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getUpdatedDate()Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_2b8

    :cond_2a4
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getUpdatedDate()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_2cd

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getUpdatedDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getUpdatedDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2cd

    :cond_2b8
    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item getUpdatedDate() isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getUpdatedDate()Ljava/util/Calendar;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getUpdatedDate()Ljava/util/Calendar;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_2cd
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f0

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item getStatus isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_2f0
    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_313

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item getCanonicalName() isDifferent this: "

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_313
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->regionsExcluded:Ljava/util/Set;

    iget-object v3, p1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->regionsExcluded:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_338

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item regionsExcluded isDifferent this: "

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->regionsExcluded:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " other: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getRegionsExcluded()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_338
    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->regionsIncluded:Ljava/util/Set;

    iget-object v3, p1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->regionsIncluded:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35b

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Item regionsIncluded isDifferent this: "

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->regionsIncluded:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " other: "

    iget-object v5, p1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->regionsIncluded:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_23

    :cond_35b
    move v0, v1

    goto/16 :goto_23
.end method

.method public isDownloadable()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_e
    :goto_e
    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isDownloadable sku:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getSKU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " downloadable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return v0

    :cond_33
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFulfillable()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_45
    move v0, v1

    goto :goto_e

    :cond_47
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableNow()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFree()Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public isFree()Z
    .registers 3

    sget-object v0, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->FREE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    iget v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchaseFlag:I

    invoke-virtual {v0, v1}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->equals(I)Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .registers 3

    const-string/jumbo v0, "STATUS_INSTALLED"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "STATUS_INSTALLED_WITH_UPDATE"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->installed:Z

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isLocationRestricted()Z
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getRegionsExcluded()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getRegionsExcluded()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getRegionsIncluded()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->getRegionsIncluded()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isPendingPrice()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->PURCHASABLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    iget v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchaseFlag:I

    invoke-virtual {v2, v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->equals(I)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableNow()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->price:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->price:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_1f
    move v0, v1

    goto :goto_c
.end method

.method public isPurchasable()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    sget-object v2, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->FREE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    iget v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchaseFlag:I

    invoke-virtual {v2, v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->equals(I)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->UNPURCHASABLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    iget v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchaseFlag:I

    invoke-virtual {v2, v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->equals(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFulfillable()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableNow()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->price:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public isPurchaseLookupAble()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isPurchased()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    sget-object v2, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->FREE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    iget v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchaseFlag:I

    invoke-virtual {v2, v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->equals(I)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->UNPURCHASABLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    iget v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchaseFlag:I

    invoke-virtual {v2, v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->equals(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->isFulfillable()Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public isPurchased()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchased:Z

    return v0
.end method

.method public isSubscribable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->subscribable:Z

    return v0
.end method

.method public isSubscribed()Z
    .registers 3

    const-string/jumbo v0, "STATUS_AVAILABLE"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isUpdateAvailable()Z
    .registers 3

    const-string/jumbo v0, "STATUS_INSTALLED_WITH_UPDATE"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public priceUpdateAllowed()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->FREE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    iget v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchaseFlag:I

    invoke-virtual {v2, v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->equals(I)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    sget-object v2, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->UNPURCHASABLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;

    iget v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchaseFlag:I

    invoke-virtual {v2, v3}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;->equals(I)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableNow()Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_c
.end method

.method public resetInstalled()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->installed:Z

    return-void
.end method

.method public resetPrice()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->price:Ljava/lang/String;

    return-void
.end method

.method public resetPurchased()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchased:Z

    return-void
.end method

.method revert()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->revertStatus:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->revertStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->status:Ljava/lang/String;

    :goto_8
    return-void

    :cond_9
    const-string/jumbo v0, "STATUS_AVAILABLE"

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->status:Ljava/lang/String;

    goto :goto_8
.end method

.method public setInstalled()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->installed:Z

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->price:Ljava/lang/String;

    return-void
.end method

.method public setPurchased()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchased:Z

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_e

    const-string/jumbo v0, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->revertStatus:Ljava/lang/String;

    :cond_e
    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->status:Ljava/lang/String;

    return-void
.end method

.method setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;)V
    .registers 28
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
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->catalogItemUUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->sku:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->title:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->descriptionShort:Ljava/lang/String;

    iput-object p7, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->descriptionLong:Ljava/lang/String;

    iput p8, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->purchaseFlag:I

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->thumbnailURL:Ljava/lang/String;

    if-eqz p10, :cond_64

    :goto_14
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->previewURLList:Ljava/util/List;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->added:Ljava/util/Calendar;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableStart:Ljava/util/Calendar;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->availableEnd:Ljava/util/Calendar;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->updatedDate:Ljava/util/Calendar;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->fulfillDate:Ljava/util/Calendar;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->locale:Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p17

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    iget-object v3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->categoryWeightList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p10

    goto :goto_14

    :cond_69
    sget-object v3, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Translation not found for label "

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v5, " for sku "

    iget-object v6, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->sku:Ljava/lang/String;

    invoke-interface {v3, v4, v1, v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_38

    :cond_7b
    new-instance v1, Ljava/util/HashSet;

    move-object/from16 v0, p18

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->regionsIncluded:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    move-object/from16 v0, p19

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->regionsExcluded:Ljava/util/Set;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->previewURLList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->itemType:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    return-void
.end method

.method wasInstalled()Z
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->revertStatus:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "STATUS_INSTALLED"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->revertStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "STATUS_INSTALLED_WITH_UPDATE"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CatalogItemImpl;->revertStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
