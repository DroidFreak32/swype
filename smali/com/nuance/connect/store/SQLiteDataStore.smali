.class public Lcom/nuance/connect/store/SQLiteDataStore;
.super Lcom/nuance/connect/sqlite/SQLDataSource;

# interfaces
.implements Lcom/nuance/connect/store/PersistentDataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;
    }
.end annotation


# static fields
.field private static final DB_VERSION:I = 0x1

.field private static final RESOURCES_STRINGS_KEY:Ljava/lang/String; = "bb"

.field private static final RESOURCES_STRINGS_TABLE:Ljava/lang/String; = "aa"

.field private static final RESOURCES_STRINGS_VALUE:Ljava/lang/String; = "cc"

.field private static log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private context:Landroid/content/Context;

.field private dbPath:Ljava/lang/String;

.field private final obfuscatedFileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile opener:Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/store/SQLiteDataStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->obfuscatedFileNames:Ljava/util/Map;

    iput-object p1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->dbPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/store/SQLiteDataStore;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/store/SQLiteDataStore;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->md5([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private read(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v10, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->openSafe()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "read() Database [SQLiteDataStore] not open; key="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v8

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bb = ?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-le v0, v10, :cond_4

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    move-object v0, v8

    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v10, :cond_2

    sget-object v1, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read() Unexpected error in SQLiteDataStore; count="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "; key="

    invoke-interface {v1, v3, v4, v9}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    if-eqz v2, :cond_0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "read() Error in [SQLiteDataStore] key("

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v9, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v8, :cond_3

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_4
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "read() Error in [SQLiteDataStore] key("

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v9, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v8

    move-object v8, v2

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v8, v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    :cond_4
    move-object v0, v8

    goto :goto_1
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->openSafe()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "save() Database [SQLiteDataStore] not open; key="

    const-string v2, " value="

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return v6

    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "bb"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cc"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "save failed to insert key: "

    const-string v3, "; value: "

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v6, v0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    move-object v4, v0

    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "save failed to insert key: ("

    const-string v3, ") value ("

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, ") SQL message"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v6

    goto :goto_2
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clear()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->openSafe()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "clear() Database [SQLiteDataStore] not open"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "aa"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "clear("

    const-string v4, "aa"

    const-string v5, ") failed message: "

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "clear("

    const-string v4, "aa"

    const-string v5, ") failed message: "

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->openSafe()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "delete() Database [SQLiteDataStore] not open; key="

    invoke-interface {v1, v2, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bb = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "delete("

    const-string v4, "aa"

    const-string v5, ") failed message: "

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "delete("

    const-string v4, "aa"

    const-string v5, ") failed message: "

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public endTransaction()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->openSafe()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "exists() Database [SQLiteDataStore] not open; key="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return v8

    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bb = \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    move v8, v0

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_4
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "exists() Error in [SQLiteDataStore] key("

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v10, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_5
    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "exists() Error in [SQLiteDataStore] key("

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v10, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->opener:Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;

    iget-object v1, p0, Lcom/nuance/connect/store/SQLiteDataStore;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->dbPath:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->opener:Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->opener:Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;

    invoke-virtual {v0}, Lcom/nuance/connect/store/SQLiteDataStore$SQLiteDataStoreOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/store/SQLiteDataStore;->database:Landroid/database/sqlite/SQLiteDatabase;

    :cond_2
    return-void
.end method

.method public readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveLong(Ljava/lang/String;J)Z
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/io/Serializable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to save invalid object. The object you are saving does not implement Serializable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lcom/nuance/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/store/SQLiteDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/store/SQLiteDataStore;->openSafe()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "saveString() Database [SQLiteDataStore] not open; key="

    invoke-interface {v0, v2, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/nuance/connect/store/SQLiteDataStore;->delete(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/nuance/connect/util/EncryptUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_2

    new-instance v3, Lcom/nuance/connect/store/SQLiteDataStore$1;

    invoke-direct {v3, p0, p1, v2}, Lcom/nuance/connect/store/SQLiteDataStore$1;-><init>(Lcom/nuance/connect/store/SQLiteDataStore;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/store/SQLiteDataStore;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/util/HandlerThread;->process(Ljava/lang/Runnable;)V

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/nuance/connect/store/SQLiteDataStore;->save(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/nuance/connect/store/SQLiteDataStore;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "saveString() Database [SQLiteDataStore] Exception; key="

    const-string v4, " exception="

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, p1, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1
.end method
