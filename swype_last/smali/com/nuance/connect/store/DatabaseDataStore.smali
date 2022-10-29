.class public Lcom/nuance/connect/store/DatabaseDataStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/store/PersistentDataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/store/DatabaseDataStore$StoreDatabaseSchema;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "DATA_STORE"

.field private static final ENTRY_TABLE:Ljava/lang/String; = "ENTRY_TABLE"

.field private static final ENTRY_TABLE_KEY:Ljava/lang/String; = "ENTRY_TABLE_KEY"

.field private static final ENTRY_TABLE_VALUE:Ljava/lang/String; = "ENTRY_TABLE_VALUE"

.field private static final entriesTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final context:Landroid/content/Context;

.field private final entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private final handlerThread:Lcom/nuance/connect/util/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/store/DatabaseDataStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/store/DatabaseDataStore$1;

    invoke-direct {v0}, Lcom/nuance/connect/store/DatabaseDataStore$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/store/DatabaseDataStore;->entriesTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/store/DatabaseDataStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/nuance/connect/sqlite/MasterDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/store/DatabaseDataStore$StoreDatabaseSchema;

    invoke-direct {v1, p0}, Lcom/nuance/connect/store/DatabaseDataStore$StoreDatabaseSchema;-><init>(Lcom/nuance/connect/store/DatabaseDataStore;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->connectDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;)V

    sget-object v1, Lcom/nuance/connect/store/DatabaseDataStore;->entriesTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    new-instance v0, Lcom/nuance/connect/store/DatabaseDataStore$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/store/DatabaseDataStore$2;-><init>(Lcom/nuance/connect/store/DatabaseDataStore;)V

    iput-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/util/HandlerThread;->start()V

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    .registers 1

    sget-object v0, Lcom/nuance/connect/store/DatabaseDataStore;->entriesTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/store/DatabaseDataStore;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/store/DatabaseDataStore;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private read(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x0

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v0

    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v1, "ENTRY_TABLE_KEY"

    invoke-interface {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "ENTRY_TABLE_VALUE"

    aput-object v6, v2, v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_74

    move-result-object v2

    :try_start_37
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c8

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_c8

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_c0

    move-result-object v9

    move-object v0, v9

    :goto_4c
    :try_start_4c
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v10, :cond_6e

    sget-object v1, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "read() Unexpected error in DatabaseDataStore; count="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "; key="

    invoke-interface {v1, v3, v4, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_4c .. :try_end_6e} :catchall_c3

    :cond_6e
    if-eqz v2, :cond_73

    :try_start_70
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_73
    .catch Landroid/database/SQLException; {:try_start_70 .. :try_end_73} :catch_be
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_bc

    :cond_73
    :goto_73
    return-object v0

    :catchall_74
    move-exception v0

    move-object v1, v9

    :goto_76
    if-eqz v1, :cond_7b

    :try_start_78
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7b
    throw v0
    :try_end_7c
    .catch Landroid/database/SQLException; {:try_start_78 .. :try_end_7c} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7c} :catch_9c

    :catch_7c
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    :goto_7f
    sget-object v2, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "read() Error in [SQLiteDataStore] key("

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, p1, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_73

    :catch_9c
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    :goto_9f
    sget-object v2, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "read() Error in [SQLiteDataStore] key("

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, p1, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_73

    :catch_bc
    move-exception v1

    goto :goto_9f

    :catch_be
    move-exception v1

    goto :goto_7f

    :catchall_c0
    move-exception v0

    move-object v1, v2

    goto :goto_76

    :catchall_c3
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_76

    :cond_c8
    move-object v0, v9

    goto :goto_4c
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "ENTRY_TABLE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ENTRY_TABLE_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {v1, v2, v0, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->insertWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_37

    sget-object v0, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "save failed to insert key: "

    const-string/jumbo v2, "; value: "

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_3e

    move v0, v6

    :goto_31
    :try_start_31
    iget-object v1, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V
    :try_end_36
    .catch Landroid/database/SQLException; {:try_start_31 .. :try_end_36} :catch_45

    :goto_36
    return v0

    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3e

    const/4 v0, 0x1

    goto :goto_31

    :catchall_3e
    move-exception v0

    :try_start_3f
    iget-object v1, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v0
    :try_end_45
    .catch Landroid/database/SQLException; {:try_start_3f .. :try_end_45} :catch_45

    :catch_45
    move-exception v0

    move-object v2, v0

    sget-object v0, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "save failed to insert key: ("

    const-string/jumbo v3, ") value ("

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ") SQL message"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v6

    goto :goto_36
.end method


# virtual methods
.method public clear()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v4, "ENTRY_TABLE_KEY"

    invoke-interface {v3, v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v3, v2, v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_33} :catch_39
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_33} :catch_53
    .catchall {:try_start_2 .. :try_end_33} :catchall_6d

    iget-object v1, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    :goto_38
    return v0

    :catch_39
    move-exception v0

    :try_start_3a
    sget-object v2, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "delete("

    const-string/jumbo v4, "ENTRY_TABLE_KEY"

    const-string/jumbo v5, ") failed message: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_6d

    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    move v0, v1

    goto :goto_38

    :catch_53
    move-exception v0

    :try_start_54
    sget-object v2, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "delete("

    const-string/jumbo v4, "ENTRY_TABLE_KEY"

    const-string/jumbo v5, ") failed message: "

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_66
    .catchall {:try_start_54 .. :try_end_66} :catchall_6d

    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    move v0, v1

    goto :goto_38

    :catchall_6d
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v0
.end method

.method public exists(Ljava/lang/String;)Z
    .registers 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v1, "ENTRY_TABLE_KEY"

    invoke-interface {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_43

    move-result-object v1

    :try_start_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_8f

    move-result v0

    if-lez v0, :cond_41

    move v0, v9

    :goto_3b
    if-eqz v1, :cond_40

    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_40
    .catch Landroid/database/SQLException; {:try_start_3d .. :try_end_40} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_8b

    :cond_40
    :goto_40
    return v0

    :cond_41
    move v0, v10

    goto :goto_3b

    :catchall_43
    move-exception v0

    move-object v1, v11

    :goto_45
    if-eqz v1, :cond_4a

    :try_start_47
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v0
    :try_end_4b
    .catch Landroid/database/SQLException; {:try_start_47 .. :try_end_4b} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_6b

    :catch_4b
    move-exception v0

    move-object v1, v0

    move v0, v10

    :goto_4e
    sget-object v2, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "exists() Error in [SQLiteDataStore] key("

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, p1, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_40

    :catch_6b
    move-exception v0

    move-object v1, v0

    move v0, v10

    :goto_6e
    sget-object v2, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "exists() Error in [SQLiteDataStore] key("

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, p1, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_40

    :catch_8b
    move-exception v1

    goto :goto_6e

    :catch_8d
    move-exception v1

    goto :goto_4e

    :catchall_8f
    move-exception v0

    goto :goto_45
.end method

.method public isEmpty()Z
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/DatabaseDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-object p2

    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_7
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/DatabaseDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return p2

    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_7
.end method

.method public readInt(Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/DatabaseDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result p2

    :goto_9
    return p2

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public readLong(Ljava/lang/String;J)J
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/DatabaseDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide p2

    :goto_9
    return-wide p2

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/DatabaseDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/DatabaseDataStore;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return-object p2

    :cond_10
    move-object p2, v0

    goto :goto_f
.end method

.method public reset()V
    .registers 3

    sget-object v0, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DatabaseDataStore.reset()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/store/DatabaseDataStore;->entryTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->deleteAll()Z

    return-void
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .registers 4

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/DatabaseDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .registers 4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/DatabaseDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveLong(Ljava/lang/String;J)Z
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/DatabaseDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5

    if-eqz p2, :cond_f

    instance-of v0, p2, Ljava/io/Serializable;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to save invalid object. The object you are saving does not implement Serializable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {p2}, Lcom/nuance/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/DatabaseDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/nuance/connect/store/DatabaseDataStore;->delete(Ljava/lang/String;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2f

    new-instance v1, Lcom/nuance/connect/store/DatabaseDataStore$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/nuance/connect/store/DatabaseDataStore$3;-><init>(Lcom/nuance/connect/store/DatabaseDataStore;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/store/DatabaseDataStore;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v2, v1}, Lcom/nuance/connect/util/HandlerThread;->process(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1d

    goto :goto_6

    :catch_1d
    move-exception v0

    sget-object v1, Lcom/nuance/connect/store/DatabaseDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "saveString() Database [SQLiteDataStore] Exception; key="

    const-string/jumbo v3, " exception="

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_6

    :cond_2f
    :try_start_2f
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/store/DatabaseDataStore;->save(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_1d

    goto :goto_6
.end method
