.class public interface abstract Lcom/nuance/connect/api/CatalogService$CatalogItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/CatalogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CatalogItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/CatalogService$CatalogItem$Purchasable;,
        Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;
    }
.end annotation


# virtual methods
.method public abstract getCanonicalName()Ljava/lang/String;
.end method

.method public abstract getCategoryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategoryWeight()Ljava/util/Map;
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
.end method

.method public abstract getDateAdded()Ljava/util/Calendar;
.end method

.method public abstract getDateAvailableEnd()Ljava/util/Calendar;
.end method

.method public abstract getDateAvailableStart()Ljava/util/Calendar;
.end method

.method public abstract getDateFulfillEnd()Ljava/util/Calendar;
.end method

.method public abstract getDescriptionLong()Ljava/lang/String;
.end method

.method public abstract getDescriptionShort()Ljava/lang/String;
.end method

.method public abstract getPreviewURLList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrice()Ljava/lang/String;
.end method

.method public abstract getSKU()Ljava/lang/String;
.end method

.method public abstract getThumbnailURL()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;
.end method

.method public abstract getUpdatedDate()Ljava/util/Calendar;
.end method

.method public abstract getWeight(Ljava/lang/String;)I
.end method

.method public abstract isDownloadable()Z
.end method

.method public abstract isFree()Z
.end method

.method public abstract isInstalled()Z
.end method

.method public abstract isPurchasable()Z
.end method

.method public abstract isPurchased()Z
.end method

.method public abstract isUpdateAvailable()Z
.end method
