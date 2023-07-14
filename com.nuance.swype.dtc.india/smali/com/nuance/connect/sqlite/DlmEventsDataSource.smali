.class public final Lcom/nuance/connect/sqlite/DlmEventsDataSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsDatabaseSchema;
    }
.end annotation


# static fields
.field private static final APPNAME_TABLE:Ljava/lang/String; = "dlm_ab"

.field private static final DB_NAME:Ljava/lang/String; = "dlmevents"

.field private static final DB_VERSION:I = 0x1

.field private static final EVENTS_TABLE:Ljava/lang/String; = "dlm_aa"

.field private static final FIELD_APPID:Ljava/lang/String; = "c"

.field private static final FIELD_APPNAME:Ljava/lang/String; = "e"

.field private static final FIELD_CATEGORY:Ljava/lang/String; = "a"

.field private static final FIELD_EVENT:Ljava/lang/String; = "d"

.field private static final FIELD_INPUTTYPE:Ljava/lang/String; = "f"

.field private static final FIELD_LOCALE:Ljava/lang/String; = "k"

.field private static final FIELD_LOCALEID:Ljava/lang/String; = "j"

.field private static final FIELD_LOCATION:Ljava/lang/String; = "h"

.field private static final FIELD_LOCATIONID:Ljava/lang/String; = "g"

.field private static final FIELD_TIMESTAMP:Ljava/lang/String; = "b"

.field private static final LOCALE_TABLE:Ljava/lang/String; = "dlm_ae"

.field private static final LOCATION_TABLE:Ljava/lang/String; = "dlm_ad"

.field private static final NEWWORDS_TABLE:Ljava/lang/String; = "dlm_ac"

.field private static final ROW_ID:Ljava/lang/String; = "rowid"

.field private static final appNamesTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

.field private static final eventsTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

.field private static final localeTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

.field private static final locationTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

.field private static final newWordsTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

.field private static schemaInstance:Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsDatabaseSchema;


# instance fields
.field private final appNamesTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private final context:Landroid/content/Context;

.field private final database:Lcom/nuance/connect/sqlite/MasterDatabase;

.field private final eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private final handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

.field private final localeTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private final locationTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource$1;

    invoke-direct {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    new-instance v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource$2;

    invoke-direct {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource$2;-><init>()V

    sput-object v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    new-instance v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource$3;

    invoke-direct {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource$3;-><init>()V

    sput-object v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->appNamesTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    new-instance v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource$4;

    invoke-direct {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource$4;-><init>()V

    sput-object v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->locationTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    new-instance v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource$5;

    invoke-direct {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource$5;-><init>()V

    sput-object v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->localeTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/connect/sqlite/MasterDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    invoke-static {p1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsDatabaseSchema;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsDatabaseSchema;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->connectDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    sget-object v1, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    sget-object v1, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    sget-object v1, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->appNamesTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->appNamesTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    sget-object v1, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->locationTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->locationTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    sget-object v1, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->localeTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->localeTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    new-instance v0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    invoke-direct {v0, p0}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;-><init>(Lcom/nuance/connect/sqlite/DlmEventsDataSource;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->start()V

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsDatabaseSchema;
    .locals 1

    sget-object v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->schemaInstance:Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsDatabaseSchema;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsDatabaseSchema;)Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsDatabaseSchema;
    .locals 0

    sput-object p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->schemaInstance:Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsDatabaseSchema;

    return-object p0
.end method

.method static synthetic access$100()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    .locals 1

    sget-object v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-object v0
.end method

.method static synthetic access$200()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    .locals 1

    sget-object v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-object v0
.end method

.method static synthetic access$300()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    .locals 1

    sget-object v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->appNamesTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-object v0
.end method

.method static synthetic access$400()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    .locals 1

    sget-object v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->locationTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-object v0
.end method

.method static synthetic access$500()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    .locals 1

    sget-object v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->localeTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-object v0
.end method

.method private clearUnusedLUEntries(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "? NOT IN (SELECT ? FROM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "clearUnusedLUEntries("

    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ") failed message: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "clearUnusedLUEntries("

    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ") failed message: "

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v0
.end method

.method private getLUIndex(Ljava/lang/String;Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;Ljava/lang/String;Ljava/lang/String;)J
    .locals 14

    const-wide/16 v12, -0x1

    const/4 v11, 0x0

    const/4 v2, 0x2

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v4, v2

    const/4 v2, 0x1

    aput-object p4, v4, v2

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v10}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    int-to-long v2, v2

    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-wide v2

    :cond_1
    :try_start_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v11

    :goto_2
    if-eqz v3, :cond_2

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v2

    move-object v6, v2

    move-wide v10, v12

    :goto_3
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error in ["

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "] getIndex("

    const-string/jumbo v7, "): "

    invoke-virtual {v6}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v6, p1

    invoke-interface/range {v2 .. v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide v2, v10

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v6, v2

    move-wide v10, v12

    :goto_4
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error in ["

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "] getIndex("

    const-string/jumbo v7, "): "

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v6, p1

    invoke-interface/range {v2 .. v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide v2, v10

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v6, v4

    move-wide v10, v2

    goto :goto_4

    :catch_3
    move-exception v4

    move-object v6, v4

    move-wide v10, v2

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v3, v4

    goto :goto_2
.end method

.method private getLastRowIdForTable(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;)J
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "rowid"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "rowid DESC"

    const-string/jumbo v8, "1"

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-wide v0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLastRowId failed; message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    const-wide/16 v0, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLastRowId failed; message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method final _clearEvents(IJ)V
    .locals 16

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "d"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "b"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "c"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "a"

    aput-object v3, v4, v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "a"

    invoke-interface {v2, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v10}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v2

    int-to-long v14, v2

    if-eqz v11, :cond_0

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rowid <= "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v10}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    int-to-long v2, v2

    if-eqz v11, :cond_1

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "clearEvents removed: "

    sub-long v2, v14, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    :goto_0
    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->appNamesTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "c"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->localeTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "k"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->locationTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "h"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception v2

    move-object v3, v11

    :goto_1
    if-eqz v3, :cond_2

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v2

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "clearEvents failed rowid="

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string/jumbo v6, " message: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    goto :goto_0

    :catchall_1
    move-exception v2

    if-eqz v11, :cond_3

    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_1
    move-exception v2

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "clearEvents failed rowid="

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string/jumbo v6, " message: "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    goto :goto_0

    :catchall_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v2

    :catchall_3
    move-exception v2

    move-object v3, v11

    goto :goto_1
.end method

.method final _insertEvent(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->isFull()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    const-wide/16 v6, -0x1

    const-wide/16 v4, -0x1

    const-wide/16 v8, -0x1

    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->appNamesTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v8, "c"

    const-string/jumbo v9, "e"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v3, v8, v9}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->locationTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v6, "g"

    const-string/jumbo v7, "h"

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v3, v6, v7}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    :cond_2
    if-eqz p7, :cond_3

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->localeTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v4, "j"

    const-string/jumbo v5, "k"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "a"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v10, "d"

    invoke-virtual {v3, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "b"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v10, "c"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v8, "g"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "j"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "f"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "insertEvent failed to insert event: "

    invoke-interface {v3, v4, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    :goto_2
    invoke-interface {v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "insertEvent failed to insert event: ("

    const-string/jumbo v5, ") SQL message"

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, p1, v5, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    goto :goto_2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v2
.end method

.method final _insertHighPriorityEvent(Ljava/lang/String;IJ)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->isFull()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "a"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "b"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "insertHighPriorityEvents failed to insert event: "

    invoke-interface {v2, v3, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "insertHighPriorityEvent failed to insert event: ("

    const-string/jumbo v4, ") SQL message"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, p1, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v0
.end method

.method public final clearEvents(IJ)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->process(IIILjava/lang/Object;)V

    return-void
.end method

.method public final clearHighPriorityEvents(IJ)V
    .locals 12

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "a"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "d"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "b"

    aput-object v1, v2, v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    if-eqz v9, :cond_0

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rowid <= "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    :goto_0
    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_6
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "clearHighPriorityEvents failed cat="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " rowid="

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, " message: "

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v9, :cond_3

    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    move-exception v0

    move-object v6, v0

    :try_start_8
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "clearHighPriorityEvents failed cat="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " rowid="

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, " message: "

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    goto :goto_0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v0
.end method

.method public final getEventCategories()[I
    .locals 12

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "SELECT DISTINCT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v2, "a"

    invoke-interface {v1, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-gtz v0, :cond_2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    move-object v0, v9

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v10

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    const-string/jumbo v3, "a"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_2
    if-eqz v9, :cond_3

    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_3
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getEventCategories failed: "

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_4
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getEventCategories failed: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_1

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v9

    move-object v9, v2

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v9, v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_2
.end method

.method public final getEvents(IJ)Lorg/json/JSONArray;
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " LEFT OUTER JOIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->appNamesTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " ON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v6, "c"

    invoke-interface {v5, v6}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->appNamesTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->appNamesTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v6, "c"

    invoke-interface {v5, v6}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " LEFT OUTER JOIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->locationTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " ON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v6, "g"

    invoke-interface {v5, v6}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->locationTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->locationTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v6, "g"

    invoke-interface {v5, v6}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " LEFT OUTER JOIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->localeTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " ON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v6, "j"

    invoke-interface {v5, v6}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->localeTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->localeTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v6, "j"

    invoke-interface {v5, v6}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Lcom/nuance/connect/sqlite/MasterDatabase;

    const-string/jumbo v6, "a"

    invoke-virtual {v5, v6}, Lcom/nuance/connect/sqlite/MasterDatabase;->getActualColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " = ? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v5}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ".rowid <= ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/connect/sqlite/MasterDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v1, v5}, Lcom/nuance/connect/sqlite/MasterDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Lcom/nuance/connect/sqlite/MasterDatabase$Codec;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-gtz v1, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "1"

    const-string/jumbo v5, "b"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "89"

    const-string/jumbo v5, "d"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "91"

    const-string/jumbo v5, "e"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "98"

    const-string/jumbo v5, "k"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "99"

    const-string/jumbo v5, "f"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "90"

    const-string/jumbo v5, "h"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getEvents failed: "

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_3

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getEvents failed: "

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getEvents failed: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final getHighPriorityEvents(I)Lorg/json/JSONArray;
    .locals 11

    const/4 v10, 0x0

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "d"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "a"

    aput-object v1, v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v1, "a"

    invoke-interface {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-gtz v0, :cond_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    move-object v0, v9

    :goto_0
    return-object v0

    :cond_1
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const-string/jumbo v2, "d"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "getHighPriorityEvents failed: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "getHighPriorityEvents failed: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public final getLastHighPriorityRowId()J
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLastRowIdForTable(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastRowId()J
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLastRowIdForTable(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final insertEvent(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11

    new-instance v1, Lcom/nuance/connect/sqlite/DlmEvent;

    const/4 v10, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/nuance/connect/sqlite/DlmEvent;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->addEvent(Lcom/nuance/connect/sqlite/DlmEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final insertHighPriorityEvent(Ljava/lang/String;IJ)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    new-instance v1, Lcom/nuance/connect/sqlite/DlmEvent;

    const/4 v9, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v1 .. v10}, Lcom/nuance/connect/sqlite/DlmEvent;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->addEvent(Lcom/nuance/connect/sqlite/DlmEvent;)V

    return v10
.end method

.method public final isFull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "DlmEventsDataStore.reset()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->eventsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->deleteAll()Z

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->newWordsTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->deleteAll()Z

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->appNamesTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->deleteAll()Z

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->locationTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->deleteAll()Z

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->localeTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->deleteAll()Z

    return-void
.end method
