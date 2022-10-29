.class public interface abstract Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemBundle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/CatalogService$CatalogItemBundle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACCatalogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACCatalogItemBundle"
.end annotation


# virtual methods
.method public abstract getBundledCatalogItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBundledCatalogItemSKUList()Ljava/util/List;
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

.method public abstract getBundledCatalogItemTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;",
            ">;"
        }
    .end annotation
.end method
