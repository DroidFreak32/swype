.class public Lcom/nuance/connect/sqlite/MasterDatabase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;,
        Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;,
        Lcom/nuance/connect/sqlite/MasterDatabase$DecryptionCursor;,
        Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTableImpl;,
        Lcom/nuance/connect/sqlite/MasterDatabase$Codec;,
        Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;,
        Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;,
        Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;,
        Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;
    }
.end annotation


# static fields
.field private static defaultCodec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

.field private static final devLog:Lcom/nuance/connect/util/Logger$Log;

.field private static instance:Lcom/nuance/connect/sqlite/MasterDatabase;

.field private static final oemLog:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

.field private final databases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;",
            ">;"
        }
    .end annotation
.end field

.field private final helper:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;

.field private final tables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->tables:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->databases:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;->getInstance(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;
    invoke-static {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;->access$400(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->helper:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;

    new-instance v1, Lcom/nuance/connect/sqlite/MasterDatabase$1;

    invoke-direct {v1, p0, v0}, Lcom/nuance/connect/sqlite/MasterDatabase$1;-><init>(Lcom/nuance/connect/sqlite/MasterDatabase;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/sqlite/MasterDatabase;)Lcom/nuance/connect/sqlite/SQLDataSource;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/connect/util/Logger$Log;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$200()Lcom/nuance/connect/sqlite/MasterDatabase$Codec;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->defaultCodec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/sqlite/MasterDatabase;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getLogicalColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/sqlite/MasterDatabase;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->helper:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;

    return-object v0
.end method

.method static synthetic access$600()Lcom/nuance/connect/sqlite/MasterDatabase;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->instance:Lcom/nuance/connect/sqlite/MasterDatabase;

    return-object v0
.end method

.method private deleteAllTables()V
    .registers 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    invoke-static {v1, v1, v0, v3}, Lcom/nuance/connect/util/Logger;->configure(ZILcom/nuance/connect/util/Logger$OutputMode;Ljava/io/File;)V

    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "deleteAllTables()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/SQLDataSource;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "SELECT * FROM sqlite_master WHERE type=\'table\';"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_21
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_24
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4d

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android_metadata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string/jumbo v3, "sqlite_sequence"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_48

    goto :goto_24

    :catchall_48
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "delete from table: "

    invoke-interface {v1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_68
    iget-object v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/SQLDataSource;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DELETE from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_81
    .catch Landroid/database/SQLException; {:try_start_68 .. :try_end_81} :catch_82

    goto :goto_54

    :catch_82
    move-exception v1

    sget-object v3, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unable to clear: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_54

    :cond_9c
    return-void
.end method

.method public static declared-synchronized from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase;
    .registers 4

    const-class v1, Lcom/nuance/connect/sqlite/MasterDatabase;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->instance:Lcom/nuance/connect/sqlite/MasterDatabase;

    if-nez v0, :cond_19

    new-instance v0, Lcom/nuance/connect/sqlite/MasterDatabase$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/sqlite/MasterDatabase$2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->defaultCodec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    new-instance v0, Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/MasterDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->instance:Lcom/nuance/connect/sqlite/MasterDatabase;

    :cond_19
    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->instance:Lcom/nuance/connect/sqlite/MasterDatabase;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLogicalColumnName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_11

    const-string/jumbo v0, "A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invalid column name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    const-string/jumbo v0, ""

    goto :goto_10
.end method

.method private obfuscateTableName(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public connectDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;)V
    .registers 16

    if-nez p1, :cond_b

    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "connectDatabase null database schema"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/SQLDataSource;->openSafe()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Could not open database"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1c
    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;->getTableSchemas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_250

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->tables:Ljava/util/Map;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Name collision! Database already exists: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_24

    :cond_56
    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/sqlite/MasterDatabase;->obfuscateTableName(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTableImpl;

    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;->doNotEncrypt()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v6, p0, v5, v1, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTableImpl;-><init>(Lcom/nuance/connect/sqlite/MasterDatabase;Ljava/lang/String;Ljava/util/Set;Lcom/nuance/connect/sqlite/MasterDatabase$1;)V

    :try_start_64
    new-instance v1, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;

    iget-object v2, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

    iget-object v3, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

    invoke-virtual {v3}, Lcom/nuance/connect/sqlite/SQLDataSource;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "PRAGMA table_info("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$RefCountingCursor;-><init>(Lcom/nuance/connect/sqlite/SQLDataSource;Landroid/database/Cursor;)V
    :try_end_8d
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_8d} :catch_c2

    move-object v3, v1

    :goto_8e
    if-eqz v3, :cond_ce

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    :goto_94
    if-eqz v1, :cond_1af

    :try_start_96
    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;->getTableProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTableImpl;->getActualColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catchall {:try_start_96 .. :try_end_ba} :catchall_bb

    goto :goto_a7

    :catchall_bb
    move-exception v0

    if-eqz v3, :cond_c1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c1
    throw v0

    :catch_c2
    move-exception v1

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Could not open the database in connectDatabase"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_8e

    :cond_ce
    const/4 v1, 0x0

    goto :goto_94

    :cond_d0
    :try_start_d0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    :cond_d5
    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTableImpl;->getLogicalColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ea

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_ea
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_d5

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_166

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "adding columns: "

    invoke-interface {v1, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_102
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_166

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ALTER table "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ADD COLUMN "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTableImpl;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v11, "alter table sql ["

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-interface {v1, v11, v12, v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14e
    .catchall {:try_start_d0 .. :try_end_14e} :catchall_bb

    :try_start_14e
    iget-object v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/SQLDataSource;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15b
    .catch Ljava/lang/IllegalStateException; {:try_start_14e .. :try_end_15b} :catch_15c
    .catchall {:try_start_14e .. :try_end_15b} :catchall_bb

    goto :goto_102

    :catch_15c
    move-exception v1

    :try_start_15d
    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v10, "Could not create table"

    invoke-interface {v1, v10}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_102

    :cond_166
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_190

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "We don\'t support removing columns for table: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "; columns: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_190
    .catchall {:try_start_15d .. :try_end_190} :catchall_bb

    :cond_190
    :goto_190
    if-eqz v3, :cond_195

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_195
    iget-object v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->tables:Ljava/util/Map;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "databases: "

    iget-object v3, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->databases:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->databases:Ljava/util/Map;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_24

    :cond_1af
    :try_start_1af
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE table if not exists "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;->getTableProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1d1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTableImpl;->getActualColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;

    invoke-virtual {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$ElementType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;->getPrimaryKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20f

    const-string/jumbo v1, " PRIMARY KEY"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21b

    const-string/jumbo v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1d1

    const-string/jumbo v1, ");"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "create table sql ["

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-interface {v1, v2, v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_236
    .catchall {:try_start_1af .. :try_end_236} :catchall_bb

    :try_start_236
    iget-object v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

    invoke-virtual {v1}, Lcom/nuance/connect/sqlite/SQLDataSource;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_243
    .catch Ljava/lang/IllegalStateException; {:try_start_236 .. :try_end_243} :catch_245
    .catchall {:try_start_236 .. :try_end_243} :catchall_bb

    goto/16 :goto_190

    :catch_245
    move-exception v1

    :try_start_246
    sget-object v1, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Could not create table"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_24e
    .catchall {:try_start_246 .. :try_end_24e} :catchall_bb

    goto/16 :goto_190

    :cond_250
    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;->onMigration()V

    goto/16 :goto_a
.end method

.method public getActualColumnName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "A"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->defaultCodec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    invoke-interface {v0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase$Codec;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;
    .registers 5

    if-eqz p1, :cond_1b

    iget-object v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->tables:Ljava/util/Map;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->databases:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;

    invoke-direct {p0, v0, p1}, Lcom/nuance/connect/sqlite/MasterDatabase;->obfuscateTableName(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getTableDatabase(Ljava/lang/String;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->tables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;Lcom/nuance/connect/sqlite/MasterDatabase$Codec;)Landroid/database/Cursor;
    .registers 7

    if-nez p3, :cond_4

    sget-object p3, Lcom/nuance/connect/sqlite/MasterDatabase;->defaultCodec:Lcom/nuance/connect/sqlite/MasterDatabase$Codec;

    :cond_4
    :try_start_4
    new-instance v0, Lcom/nuance/connect/sqlite/MasterDatabase$DecryptionCursor;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

    iget-object v2, p0, Lcom/nuance/connect/sqlite/MasterDatabase;->dataSource:Lcom/nuance/connect/sqlite/SQLDataSource;

    invoke-virtual {v2}, Lcom/nuance/connect/sqlite/SQLDataSource;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/nuance/connect/sqlite/MasterDatabase$DecryptionCursor;-><init>(Lcom/nuance/connect/sqlite/SQLDataSource;Landroid/database/Cursor;Lcom/nuance/connect/sqlite/MasterDatabase$Codec;)V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_15} :catch_16

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "rawQuery could not open database"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_15
.end method
