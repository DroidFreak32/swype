.class final Lcom/nuance/connect/sqlite/ReportingDataSource$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPrimaryKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTableName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "report_ab"

    return-object v0
.end method

.method public final getTableProperties()Ljava/util/Map;
    .locals 3
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "a"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->TEXT:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "b"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->TEXT:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "c"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->TEXT:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "g"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->TEXT:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "j"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->INTEGER:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
