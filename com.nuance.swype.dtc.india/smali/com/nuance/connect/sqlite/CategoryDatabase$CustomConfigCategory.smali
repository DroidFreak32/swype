.class public Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;
.super Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/CategoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomConfigCategory"
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
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;-><init>()V

    invoke-super {p0}, Lcom/nuance/connect/sqlite/CategoryDatabase$CommonCategory;->getTableProperties()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;->tableProperties:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/sqlite/CategoryDatabase$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "category_cconf"

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

    iget-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;->tableProperties:Ljava/util/Map;

    return-object v0
.end method
