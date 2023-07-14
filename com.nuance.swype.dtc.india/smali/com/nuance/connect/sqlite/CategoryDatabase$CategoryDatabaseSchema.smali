.class Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/CategoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryDatabaseSchema"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;
    .locals 2

    const-class v1, Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/nuance/connect/sqlite/CategoryDatabase;->access$600()Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;

    invoke-direct {v0, p0}, Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->access$602(Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;)Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;

    :cond_0
    invoke-static {}, Lcom/nuance/connect/sqlite/CategoryDatabase;->access$600()Lcom/nuance/connect/sqlite/CategoryDatabase$CategoryDatabaseSchema;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public doNotEncrypt()Ljava/util/Set;
    .locals 2
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

    const-string/jumbo v1, "ccc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "CategoryDb"

    return-object v0
.end method

.method public getTableSchemas()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/nuance/connect/sqlite/CategoryDatabase;->access$700()Lcom/nuance/connect/sqlite/CategoryDatabase$CatalogCategory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nuance/connect/sqlite/CategoryDatabase;->access$800()Lcom/nuance/connect/sqlite/CategoryDatabase$ChineseAddonCategory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nuance/connect/sqlite/CategoryDatabase;->access$900()Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageCategory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nuance/connect/sqlite/CategoryDatabase;->access$1000()Lcom/nuance/connect/sqlite/CategoryDatabase$LivingLanguageWithVariantCategory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nuance/connect/sqlite/CategoryDatabase;->access$1100()Lcom/nuance/connect/sqlite/CategoryDatabase$PlatformUpdateCategory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nuance/connect/sqlite/CategoryDatabase;->access$1200()Lcom/nuance/connect/sqlite/CategoryDatabase$CustomConfigCategory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onMigration()V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
