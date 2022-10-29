.class Lcom/nuance/connect/store/DatabaseDataStore$StoreDatabaseSchema;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/store/DatabaseDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoreDatabaseSchema"
.end annotation


# instance fields
.field private final parentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/store/DatabaseDataStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nuance/connect/store/DatabaseDataStore;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore$StoreDatabaseSchema;->parentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public doNotEncrypt()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "DATA_STORE"

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

    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore$StoreDatabaseSchema;->parentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/store/DatabaseDataStore;

    if-eqz v0, :cond_16

    # getter for: Lcom/nuance/connect/store/DatabaseDataStore;->entriesTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    invoke-static {}, Lcom/nuance/connect/store/DatabaseDataStore;->access$000()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_16
    return-object v1
.end method

.method public onMigration()V
    .registers 1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
