.class public Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;
.super Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/CategoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatalogCategory"
.end annotation


# instance fields
.field private final tableProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;-><init>()V

    invoke-super {p0}, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;->getTableProperties()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "16"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "98"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "17"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "18"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "132"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "127"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "129"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "113"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "26"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "27"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "135"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "130"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "131"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "133"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "128"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "136"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "137"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "PROP_TYPE"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "PROP_BUNDLED_THEMES_SKUS"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "PROP_BUNDLED_THEMES_CDB"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/sqlite/CategoryDatabase$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "category_cat"

    return-object v0
.end method

.method public getTableProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;->tableProperties:Ljava/util/Map;

    return-object v0
.end method
