.class public Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;
.super Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/CategoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChineseAddonCategory"
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
    .registers 4

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;-><init>()V

    invoke-super {p0}, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;->getTableProperties()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;->tableProperties:Ljava/util/Map;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "16"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "13"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "98"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "18"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "116"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "124"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;->tableProperties:Ljava/util/Map;

    const-string/jumbo v1, "125"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/sqlite/CategoryDatabase$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "category_chaddon"

    return-object v0
.end method

.method public getTableProperties()Ljava/util/Map;
    .registers 2
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

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;->tableProperties:Ljava/util/Map;

    return-object v0
.end method
