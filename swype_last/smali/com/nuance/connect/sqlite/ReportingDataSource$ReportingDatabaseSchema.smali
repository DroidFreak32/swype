.class Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingDatabaseSchema;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/ReportingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportingDatabaseSchema"
.end annotation


# instance fields
.field private final parentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/sqlite/ReportingDataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/ReportingDataSource;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingDatabaseSchema;->parentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public doNotEncrypt()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "rowid"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "reporting"

    return-object v0
.end method

.method public getTableSchemas()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingDatabaseSchema;->parentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-eqz v0, :cond_1d

    # getter for: Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    invoke-static {}, Lcom/nuance/connect/sqlite/ReportingDataSource;->access$000()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    invoke-static {}, Lcom/nuance/connect/sqlite/ReportingDataSource;->access$100()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-object v1
.end method

.method public onMigration()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingDatabaseSchema;->parentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/ReportingDataSource;

    if-eqz v0, :cond_14

    # getter for: Lcom/nuance/connect/sqlite/ReportingDataSource;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->access$200(Lcom/nuance/connect/sqlite/ReportingDataSource;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "reporting"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_14
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
