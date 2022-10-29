.class public Lcom/nuance/swype/util/storage/ThemeItemSeed;
.super Ljava/lang/Object;
.source "ThemeItemSeed.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field public bundleDesc:Ljava/lang/String;

.field private bundleSku:Ljava/lang/String;

.field public categoryKey:Ljava/lang/String;

.field public installingPercentage:I

.field isExisted:Z

.field public isFree:Z

.field public isInstalled:Z

.field public isInstalling:Z

.field public isPurchasable:Z

.field public isPurchased:Z

.field public previewUrl:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public sku:Ljava/lang/String;

.field public skuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private source:I

.field public themeCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public themeCategoryLabel:Ljava/lang/String;

.field public themeName:Ljava/lang/String;

.field public thumbnailUrl:Ljava/lang/String;

.field public type:I

.field public final weight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->$assertionsDisabled:Z

    .line 13
    const-string/jumbo v0, "ThemeItemSeed"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void

    .line 12
    :cond_15
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Ljava/util/List;Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;Ljava/lang/String;)V
    .registers 16
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "bundle"    # Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;
    .param p4, "item"    # Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;
    .param p5, "categoryKeyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            ">;",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "bundleItems":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;>;"
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v5, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->installingPercentage:I

    .line 44
    invoke-interface {p4, p1}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getWeight(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->weight:I

    .line 46
    sget-object v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getSKU()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, ".getWeight("

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    const-string/jumbo v3, "): "

    aput-object v3, v2, v8

    iget v3, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->weight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 48
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getPreviewURLList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1190
    iput-object v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->previewUrl:Ljava/lang/String;

    .line 49
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    .line 1198
    iput-object v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    .line 50
    if-eqz p2, :cond_83

    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->isPurchased()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 51
    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->isPurchased()Z

    move-result v1

    .line 1202
    iput-boolean v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 52
    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getSKU()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->bundleSku:Ljava/lang/String;

    .line 56
    :goto_58
    if-eqz p2, :cond_60

    .line 57
    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getSKU()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->bundleSku:Ljava/lang/String;

    .line 59
    :cond_60
    if-eqz p3, :cond_8a

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->skuList:Ljava/util/List;

    .line 61
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;

    .line 62
    .local v0, "bundleItem":Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;
    iget-object v2, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->skuList:Ljava/util/List;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getSKU()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 54
    .end local v0    # "bundleItem":Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;
    :cond_83
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->isPurchased()Z

    move-result v1

    .line 2202
    iput-boolean v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    goto :goto_58

    .line 3174
    :cond_8a
    iput-object p1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategoryLabel:Ljava/lang/String;

    .line 67
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 4150
    iput-object v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeName:Ljava/lang/String;

    .line 68
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getSKU()Ljava/lang/String;

    move-result-object v1

    .line 4166
    iput-object v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 69
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getThumbnailURL()Ljava/lang/String;

    move-result-object v1

    .line 4182
    iput-object v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->thumbnailUrl:Ljava/lang/String;

    .line 70
    sget-object v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->ordinal()I

    move-result v1

    .line 5104
    iput v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->source:I

    .line 71
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v1

    .line 5128
    iput v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->type:I

    .line 72
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    if-ne v1, v2, :cond_193

    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getDescriptionLong()Ljava/lang/String;

    move-result-object v1

    .line 5158
    :goto_bc
    iput-object v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->bundleDesc:Ljava/lang/String;

    .line 73
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->isFree()Z

    move-result v1

    .line 5210
    iput-boolean v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 74
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->isInstalled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 75
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->isPurchasable()Z

    move-result v1

    .line 5246
    iput-boolean v1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchasable:Z

    .line 76
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getCategoryList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setThemeCategories(Ljava/util/List;)V

    .line 6108
    iput-object p5, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 79
    sget-object v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "catalog ThemeItemSeed bundle list: "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->skuList:Ljava/util/List;

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 80
    sget-object v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "catalog ThemeItemSeed bundle sku: "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->bundleSku:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 82
    sget-object v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v9, [Ljava/lang/Object;

    const-string/jumbo v3, "catalog ThemeItemSeed sku:"

    aput-object v3, v2, v5

    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getSKU()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, " categories:"

    aput-object v3, v2, v7

    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getCategoryList()Ljava/util/List;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 83
    sget-object v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "catalog ThemeItemSeed sku:"

    aput-object v3, v2, v5

    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getSKU()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, " category label:"

    aput-object v3, v2, v7

    aput-object p1, v2, v8

    const-string/jumbo v3, " themeName:"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 84
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, " purchased:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 85
    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->isPurchased()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, " price:"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getPrice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, " type:"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v4

    aput-object v4, v2, v3

    .line 83
    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 86
    sget-object v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v9, [Ljava/lang/Object;

    const-string/jumbo v3, "catalog isFree:"

    aput-object v3, v2, v5

    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->isFree()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, " purchasable:"

    aput-object v3, v2, v7

    invoke-interface {p4}, Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;->isPurchasable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 87
    return-void

    .line 72
    :cond_193
    const-string/jumbo v1, " "

    goto/16 :goto_bc
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 289
    :cond_17
    :goto_17
    return v1

    :cond_18
    move-object v0, p1

    .line 266
    check-cast v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 6124
    .local v0, "obj":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    iget v2, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->source:I

    .line 7124
    iget v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->source:I

    .line 267
    if-ne v2, v3, :cond_17

    .line 7132
    iget v2, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->type:I

    .line 8132
    iget v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->type:I

    .line 268
    if-ne v2, v3, :cond_17

    .line 8162
    iget-object v2, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 9162
    iget-object v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 10120
    iget-object v2, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 11120
    iget-object v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 11206
    iget-boolean v2, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 12206
    iget-boolean v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 271
    if-ne v2, v3, :cond_17

    .line 12250
    iget-boolean v2, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchasable:Z

    .line 13250
    iget-boolean v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchasable:Z

    .line 272
    if-ne v2, v3, :cond_17

    .line 14225
    iget-boolean v2, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 15225
    iget-boolean v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 273
    if-ne v2, v3, :cond_17

    .line 16146
    iget-object v2, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeName:Ljava/lang/String;

    .line 17146
    iget-object v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeName:Ljava/lang/String;

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 17178
    iget-object v2, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->thumbnailUrl:Ljava/lang/String;

    .line 18178
    iget-object v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->thumbnailUrl:Ljava/lang/String;

    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 18186
    iget-object v2, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->previewUrl:Ljava/lang/String;

    .line 19186
    iget-object v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->previewUrl:Ljava/lang/String;

    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 277
    const/4 v1, 0x1

    goto :goto_17
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 293
    sget-boolean v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 294
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public final setInstalled(Z)V
    .registers 3
    .param p1, "install"    # Z

    .prologue
    .line 218
    if-eqz p1, :cond_5

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalling:Z

    .line 221
    :cond_5
    iput-boolean p1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 222
    return-void
.end method

.method public final setInstalling(Z)V
    .registers 3
    .param p1, "installing"    # Z

    .prologue
    .line 229
    if-eqz p1, :cond_5

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 232
    :cond_5
    iput-boolean p1, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalling:Z

    .line 233
    return-void
.end method

.method public final setThemeCategories(Ljava/util/List;)V
    .registers 3
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
    .line 140
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategories:Ljava/util/List;

    .line 143
    :cond_f
    return-void
.end method
