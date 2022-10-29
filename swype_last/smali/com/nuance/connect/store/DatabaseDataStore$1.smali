.class final Lcom/nuance/connect/store/DatabaseDataStore$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPrimaryKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ENTRY_TABLE_KEY"

    return-object v0
.end method

.method public final getTableName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ENTRY_TABLE"

    return-object v0
.end method

.method public final getTableProperties()Ljava/util/Map;
    .registers 4
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

    const-string/jumbo v1, "ENTRY_TABLE_KEY"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ENTRY_TABLE_VALUE"

    sget-object v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->STRING:Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
