.class public final Lcom/nuance/connect/sqlite/ReportingDataSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/sqlite/ReportingDataSource$9;,
        Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingDatabaseSchema;,
        Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;,
        Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;
    }
.end annotation


# static fields
.field private static final AGGREGATE_TABLE:Ljava/lang/String; = "report_aa"

.field private static final DATAPOINT_TABLE:Ljava/lang/String; = "report_ab"

.field private static final DB_NAME:Ljava/lang/String; = "reporting"

.field private static final DB_VERSION:I = 0x1

.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final EXTRA_DELIMITER:Ljava/lang/String; = ", "

.field private static final FIELD_AGG_POINT_COUNT:Ljava/lang/String; = "f"

.field private static final FIELD_AGG_POINT_INTERVAL:Ljava/lang/String; = "e"

.field private static final FIELD_AGG_POINT_VALUE:Ljava/lang/String; = "d"

.field private static final FIELD_EXTRA:Ljava/lang/String; = "g"

.field private static final FIELD_ID:Ljava/lang/String; = "a"

.field private static final FIELD_NAME:Ljava/lang/String; = "b"

.field private static final FIELD_START_TIME:Ljava/lang/String; = "h"

.field private static final FIELD_TIMESTAMP:Ljava/lang/String; = "j"

.field private static final FIELD_UPDATED_TIME:Ljava/lang/String; = "i"

.field private static final FIELD_VALUE:Ljava/lang/String; = "c"

.field private static final NAME_LIST:Ljava/lang/String; = "NAME_LIST"

.field private static final ROW_ID:Ljava/lang/String; = "rowid"

.field private static final aggregateTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

.field private static final handler:Lcom/nuance/connect/util/HandlerThread;

.field private static final individualTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private volatile aggregateLimit:I

.field private final aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private final callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final enforceLimits:Z

.field private volatile individualLimit:I

.field private final individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

.field private volatile maxSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$1;

    invoke-direct {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;

    invoke-direct {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource$2;-><init>()V

    sput-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$3;

    invoke-direct {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource$3;-><init>()V

    sput-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->handler:Lcom/nuance/connect/util/HandlerThread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    iput-object p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->init()V

    invoke-static {p1}, Lcom/nuance/connect/sqlite/MasterDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-static {p1}, Lcom/nuance/connect/sqlite/MasterDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->context:Landroid/content/Context;

    iput p2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    iput p3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    iput-wide p4, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->maxSize:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->init()V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/connect/sqlite/MasterDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/connect/sqlite/MasterDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    return-void
.end method

.method private _clearAggregate(J)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v2, "i"

    invoke-interface {v1, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_25
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_36

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Issue clearing data points."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_2b

    :catch_36
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Issue clearing aggregate data points."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_2b
.end method

.method private _clearIndividual(J)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v2, "j"

    invoke-interface {v1, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_25
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Issue clearing individual data points."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_2b
.end method

.method private _createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V
    .registers 27

    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "_createAggregatePoint(\'"

    const-string/jumbo v5, "\', \'"

    const-string/jumbo v7, "\',\'"

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const-string/jumbo v9, "\',\'"

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const-string/jumbo v11, "\',\'"

    const-string/jumbo v13, "\',\'"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string/jumbo v15, "\')"

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_34

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3c

    :cond_34
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Creating Aggregate Point without a key"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_3c
    if-eqz p2, :cond_44

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5b

    :cond_44
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Creating Aggregate Point without a name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_5b
    const/4 v12, 0x0

    :try_start_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    const/4 v2, 0x1

    aput-object p2, v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "a"

    invoke-interface {v2, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " = ? AND "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "b"

    invoke-interface {v2, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " = ?"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_99
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5c .. :try_end_99} :catch_1fa
    .catch Landroid/database/SQLException; {:try_start_5c .. :try_end_99} :catch_278
    .catch Ljava/lang/IllegalStateException; {:try_start_5c .. :try_end_99} :catch_284
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_99} :catch_295

    const/4 v11, 0x0

    const/4 v2, 0x5

    :try_start_9b
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "a"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "d"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "e"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "f"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "g"

    aput-object v3, v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v10}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_cb
    .catchall {:try_start_9b .. :try_end_cb} :catchall_2b0

    move-result-object v3

    :try_start_cc
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_211

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "d"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/connect/util/StringUtils;->safeStringToDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string/jumbo v2, "e"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/connect/util/StringUtils;->safeStringToDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-string/jumbo v2, "f"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/connect/util/StringUtils;->safeStringToInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "g"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    add-double v8, v8, p3

    add-double v10, v10, p5

    add-int/lit8 v5, v2, 0x1

    if-nez v4, :cond_1d3

    const-string/jumbo v2, ""

    :goto_118
    if-eqz p7, :cond_13c

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_13c
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "d"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "e"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "f"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "g"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "i"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, v6}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17a
    .catchall {:try_start_cc .. :try_end_17a} :catchall_1eb

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d6

    const/4 v4, 0x1

    :try_start_17f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_186
    .catchall {:try_start_17f .. :try_end_186} :catchall_2b5

    move v12, v4

    :goto_187
    if-eqz v3, :cond_18c

    :try_start_189
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_18c
    .catch Landroid/database/SQLException; {:try_start_189 .. :try_end_18c} :catch_2aa
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_189 .. :try_end_18c} :catch_1fa
    .catch Ljava/lang/IllegalStateException; {:try_start_189 .. :try_end_18c} :catch_284
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_18c} :catch_295

    :cond_18c
    :goto_18c
    :try_start_18c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V
    :try_end_193
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_18c .. :try_end_193} :catch_1fa
    .catch Landroid/database/SQLException; {:try_start_18c .. :try_end_193} :catch_278
    .catch Ljava/lang/IllegalStateException; {:try_start_18c .. :try_end_193} :catch_284
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_193} :catch_295

    move v3, v12

    :goto_194
    if-eqz v3, :cond_1af

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    if-eqz v2, :cond_1af

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numAggregate()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    if-le v2, v4, :cond_1af

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->limitAggregate(I)V

    :cond_1af
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getCallbacks()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1b7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    invoke-interface/range {v2 .. v12}, Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;->onAggregate(ZLjava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V

    goto :goto_1b7

    :cond_1d3
    move-object v2, v4

    goto/16 :goto_118

    :cond_1d6
    if-nez v2, :cond_1e2

    :try_start_1d8
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error writing aggregate data point, unable to save data change."

    invoke-interface {v2, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_1e0
    :goto_1e0
    const/4 v12, 0x0

    goto :goto_187

    :cond_1e2
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error updating aggregate, we affected more then one row"

    invoke-interface {v2, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_1ea
    .catchall {:try_start_1d8 .. :try_end_1ea} :catchall_1eb

    goto :goto_1e0

    :catchall_1eb
    move-exception v2

    move v4, v12

    :goto_1ed
    if-eqz v3, :cond_1f2

    :try_start_1ef
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1f2
    .catch Landroid/database/SQLException; {:try_start_1ef .. :try_end_1f2} :catch_2a7
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1ef .. :try_end_1f2} :catch_1fa
    .catch Ljava/lang/IllegalStateException; {:try_start_1ef .. :try_end_1f2} :catch_284
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_1f2} :catch_295

    :cond_1f2
    :goto_1f2
    :try_start_1f2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v2
    :try_end_1fa
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1f2 .. :try_end_1fa} :catch_1fa
    .catch Landroid/database/SQLException; {:try_start_1f2 .. :try_end_1fa} :catch_2ad
    .catch Ljava/lang/IllegalStateException; {:try_start_1f2 .. :try_end_1fa} :catch_284
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1fa} :catch_295

    :catch_1fa
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error writing aggregate data point: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->deleteAll()Z

    const/4 v12, 0x0

    move v3, v12

    goto :goto_194

    :cond_211
    :try_start_211
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "a"

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "b"

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "f"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "e"

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "d"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "g"

    move-object/from16 v0, p7

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "h"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "i"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1e0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_275
    .catchall {:try_start_211 .. :try_end_275} :catchall_1eb

    const/4 v12, 0x1

    goto/16 :goto_187

    :catch_278
    move-exception v2

    :goto_279
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error creating aggregate point."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move v3, v12

    goto/16 :goto_194

    :catch_284
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error writing aggregate data point: "

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x0

    move v3, v12

    goto/16 :goto_194

    :catch_295
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error writing aggregate data point: "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x0

    move v3, v12

    goto/16 :goto_194

    :cond_2a6
    return-void

    :catch_2a7
    move-exception v3

    goto/16 :goto_1f2

    :catch_2aa
    move-exception v2

    goto/16 :goto_18c

    :catch_2ad
    move-exception v2

    move v12, v4

    goto :goto_279

    :catchall_2b0
    move-exception v2

    move-object v3, v11

    move v4, v12

    goto/16 :goto_1ed

    :catchall_2b5
    move-exception v2

    goto/16 :goto_1ed
.end method

.method private _createIndividualPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 22

    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "_createIndividualPoint ("

    const-string/jumbo v5, ", "

    const-string/jumbo v7, ","

    const-string/jumbo v9, ","

    const-string/jumbo v11, ","

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string/jumbo v13, ")"

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    invoke-interface/range {v2 .. v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_2b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_33

    :cond_2b
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Creating Individual Point without a key"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_33
    if-eqz p2, :cond_3b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_52

    :cond_3b
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Creating Individual Point without a name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_52
    if-eqz p3, :cond_5a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_71

    :cond_5a
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Creating Individual Point without a value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_71
    :try_start_71
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "a"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "b"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "c"

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "g"

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "j"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_f3

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_b7
    .catchall {:try_start_71 .. :try_end_b7} :catchall_fd

    const/4 v2, 0x1

    :goto_b8
    :try_start_b8
    iget-object v3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V
    :try_end_bd
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b8 .. :try_end_bd} :catch_104
    .catch Landroid/database/SQLException; {:try_start_b8 .. :try_end_bd} :catch_118
    .catch Ljava/lang/IllegalStateException; {:try_start_b8 .. :try_end_bd} :catch_127
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bd} :catch_136

    move v3, v2

    :goto_be
    if-eqz v3, :cond_d1

    iget-boolean v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    if-eqz v2, :cond_d1

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numIndividual()I

    move-result v2

    iget v4, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    if-le v2, v4, :cond_d1

    iget v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    invoke-direct {p0, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->limitIndividual(I)V

    :cond_d1
    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getCallbacks()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_146

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v2 .. v9}, Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;->onIndividual(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_d9

    :cond_f3
    :try_start_f3
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error writing individual data point, unable to save data change."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_fb
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_fd

    const/4 v2, 0x0

    goto :goto_b8

    :catchall_fd
    move-exception v2

    :try_start_fe
    iget-object v3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v2
    :try_end_104
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_fe .. :try_end_104} :catch_104
    .catch Landroid/database/SQLException; {:try_start_fe .. :try_end_104} :catch_118
    .catch Ljava/lang/IllegalStateException; {:try_start_fe .. :try_end_104} :catch_127
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_104} :catch_136

    :catch_104
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error writing individual data point: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->deleteAll()Z

    const/4 v3, 0x0

    goto :goto_be

    :catch_118
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error writing individual data point: "

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_be

    :catch_127
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error writing individual data point: "

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_be

    :catch_136
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error writing individual data point: "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto/16 :goto_be

    :cond_146
    return-void
.end method

.method private _enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V
    .registers 4

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$9;->$SwitchMap$com$nuance$connect$sqlite$ReportingDataSource$DataType:[I

    invoke-virtual {p1}, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    :cond_b
    :goto_b
    return-void

    :pswitch_c
    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numAggregate()I

    move-result v0

    iget v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    if-lt v0, v1, :cond_b

    iget v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->limitAggregate(I)V

    goto :goto_b

    :pswitch_1a
    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numIndividual()I

    move-result v0

    iget v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    if-lt v0, v1, :cond_b

    iget v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->limitIndividual(I)V

    goto :goto_b

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1a
    .end packed-switch
.end method

.method static synthetic access$000()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/sqlite/ReportingDataSource;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_createIndividualPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/connect/sqlite/ReportingDataSource;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_clearAggregate(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/connect/sqlite/ReportingDataSource;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_clearIndividual(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/sqlite/ReportingDataSource;Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    return-void
.end method

.method private enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V
    .registers 4

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$8;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/sqlite/ReportingDataSource$8;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->handler:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/HandlerThread;->process(Ljava/lang/Runnable;)V

    return-void
.end method

.method private generateAggregatePoint(Landroid/content/ContentValues;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 9

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "b"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_11
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_14} :catch_a9

    move-result-object v1

    const/4 v0, 0x1

    :goto_16
    if-nez v0, :cond_29

    :try_start_18
    const-string/jumbo v0, "NAME_LIST"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "63"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_29
    const-string/jumbo v0, "15"

    const-string/jumbo v4, "a"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "23"

    const-string/jumbo v4, "g"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "26"

    const-string/jumbo v4, "h"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "27"

    const-string/jumbo v4, "i"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "37"

    const-string/jumbo v4, "f"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/connect/util/StringUtils;->safeStringToInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "22"

    const-string/jumbo v4, "d"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/connect/util/StringUtils;->safeStringToDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v0, "24"

    const-string/jumbo v4, "e"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/connect/util/StringUtils;->safeStringToDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v0, "16"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "25"

    const-string/jumbo v4, "SUM"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "63"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a8
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_a8} :catch_ad

    :goto_a8
    return-object p2

    :catch_a9
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_16

    :catch_ad
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Error generating point."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_a8
.end method

.method private generateIndividualPoint(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    const-string/jumbo v2, "15"

    const-string/jumbo v3, "a"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "16"

    const-string/jumbo v3, "b"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "22"

    const-string/jumbo v3, "c"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "23"

    const-string/jumbo v3, "g"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "j"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "15"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_60

    const-string/jumbo v2, ""

    const-string/jumbo v3, "15"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    :cond_60
    :goto_60
    return-object v0

    :cond_61
    const-string/jumbo v2, "16"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_60

    const-string/jumbo v2, ""

    const-string/jumbo v3, "16"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    const-string/jumbo v2, "22"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_60

    const-string/jumbo v2, ""

    const-string/jumbo v3, "22"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_90} :catch_95

    move-result v2

    if-nez v2, :cond_60

    :goto_93
    move-object v0, v1

    goto :goto_60

    :catch_95
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error generating individual point."

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_93
.end method

.method private getCallbacks()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_25
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_29
    return-object v2
.end method

.method private init()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/connect/sqlite/MasterDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingDatabaseSchema;

    invoke-direct {v1, p0}, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingDatabaseSchema;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->connectDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;)V

    const-class v1, Lcom/nuance/connect/sqlite/ReportingDataSource;

    monitor-enter v1

    :try_start_11
    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->handler:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/util/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->handler:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/util/HandlerThread;->start()V

    :cond_1e
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private limitAggregate(I)V
    .registers 14

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x1

    :try_start_4
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "i"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "i"

    invoke-interface {v1, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_7f

    move-result-object v1

    :try_start_38
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_c3

    move-result-wide v2

    :goto_4a
    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Landroid/database/SQLException; {:try_start_4c .. :try_end_4f} :catch_c1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4c .. :try_end_4f} :catch_87
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_4f} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_b1

    :cond_4f
    :goto_4f
    cmp-long v0, v2, v10

    if-lez v0, :cond_7e

    :try_start_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v4, "i"

    invoke-interface {v1, v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_53 .. :try_end_7e} :catch_87
    .catch Landroid/database/SQLException; {:try_start_53 .. :try_end_7e} :catch_95
    .catch Ljava/lang/IllegalStateException; {:try_start_53 .. :try_end_7e} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_7e} :catch_b1

    :cond_7e
    :goto_7e
    return-void

    :catchall_7f
    move-exception v0

    move-object v1, v9

    :goto_81
    if-eqz v1, :cond_86

    :try_start_83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_86
    .catch Landroid/database/SQLException; {:try_start_83 .. :try_end_86} :catch_bf
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/lang/IllegalStateException; {:try_start_83 .. :try_end_86} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_b1

    :cond_86
    :goto_86
    :try_start_86
    throw v0
    :try_end_87
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_86 .. :try_end_87} :catch_87
    .catch Landroid/database/SQLException; {:try_start_86 .. :try_end_87} :catch_95
    .catch Ljava/lang/IllegalStateException; {:try_start_86 .. :try_end_87} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_87} :catch_b1

    :catch_87
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error limiting aggregate data points: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7e

    :catch_95
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error limiting aggregate data points: "

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7e

    :catch_a3
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error limiting aggregate data points: "

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7e

    :catch_b1
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error limiting aggregate data points: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7e

    :catch_bf
    move-exception v1

    goto :goto_86

    :catch_c1
    move-exception v0

    goto :goto_4f

    :catchall_c3
    move-exception v0

    goto :goto_81

    :cond_c5
    move-wide v2, v10

    goto :goto_4a
.end method

.method private limitIndividual(I)V
    .registers 14

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x1

    :try_start_4
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "j"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "j"

    invoke-interface {v1, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_7f

    move-result-object v1

    :try_start_38
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_c3

    move-result-wide v2

    :goto_4a
    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catch Landroid/database/SQLException; {:try_start_4c .. :try_end_4f} :catch_c1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4c .. :try_end_4f} :catch_87
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_4f} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_b1

    :cond_4f
    :goto_4f
    cmp-long v0, v2, v10

    if-lez v0, :cond_7e

    :try_start_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v4, "j"

    invoke-interface {v1, v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_53 .. :try_end_7e} :catch_87
    .catch Landroid/database/SQLException; {:try_start_53 .. :try_end_7e} :catch_95
    .catch Ljava/lang/IllegalStateException; {:try_start_53 .. :try_end_7e} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_7e} :catch_b1

    :cond_7e
    :goto_7e
    return-void

    :catchall_7f
    move-exception v0

    move-object v1, v9

    :goto_81
    if-eqz v1, :cond_86

    :try_start_83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_86
    .catch Landroid/database/SQLException; {:try_start_83 .. :try_end_86} :catch_bf
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/lang/IllegalStateException; {:try_start_83 .. :try_end_86} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_b1

    :cond_86
    :goto_86
    :try_start_86
    throw v0
    :try_end_87
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_86 .. :try_end_87} :catch_87
    .catch Landroid/database/SQLException; {:try_start_86 .. :try_end_87} :catch_95
    .catch Ljava/lang/IllegalStateException; {:try_start_86 .. :try_end_87} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_87} :catch_b1

    :catch_87
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error limiting individual data points: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7e

    :catch_95
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error limiting individual data points: "

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7e

    :catch_a3
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error limiting individual data points: "

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7e

    :catch_b1
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Error limiting individual data points: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7e

    :catch_bf
    move-exception v1

    goto :goto_86

    :catch_c1
    move-exception v0

    goto :goto_4f

    :catchall_c3
    move-exception v0

    goto :goto_81

    :cond_c5
    move-wide v2, v10

    goto :goto_4a
.end method

.method private makePlaceholders(I)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, -0x1

    const-string/jumbo v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_19

    const-string/jumbo v3, ", ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private numAggregate()I
    .registers 12

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_24

    move-result-object v1

    :try_start_10
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_48

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_46

    move-result v0

    :goto_1e
    if-eqz v1, :cond_23

    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catch Landroid/database/SQLException; {:try_start_20 .. :try_end_23} :catch_44
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_42

    :cond_23
    :goto_23
    return v0

    :catchall_24
    move-exception v0

    move-object v1, v9

    :goto_26
    if-eqz v1, :cond_2b

    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2b
    throw v0
    :try_end_2c
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_37

    :catch_2c
    move-exception v0

    move v0, v10

    :goto_2e
    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Problem getting data count."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_23

    :catch_37
    move-exception v0

    move v0, v10

    :goto_39
    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Problem getting data count."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_23

    :catch_42
    move-exception v1

    goto :goto_39

    :catch_44
    move-exception v1

    goto :goto_2e

    :catchall_46
    move-exception v0

    goto :goto_26

    :cond_48
    move v0, v10

    goto :goto_1e
.end method

.method private numIndividual()I
    .registers 12

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_24

    move-result-object v1

    :try_start_10
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_48

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_46

    move-result v0

    :goto_1e
    if-eqz v1, :cond_23

    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catch Landroid/database/SQLException; {:try_start_20 .. :try_end_23} :catch_44
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_42

    :cond_23
    :goto_23
    return v0

    :catchall_24
    move-exception v0

    move-object v1, v9

    :goto_26
    if-eqz v1, :cond_2b

    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2b
    throw v0
    :try_end_2c
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_37

    :catch_2c
    move-exception v0

    move v0, v10

    :goto_2e
    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Problem getting individual data count."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_23

    :catch_37
    move-exception v0

    move v0, v10

    :goto_39
    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Problem getting individual data count."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_23

    :catch_42
    move-exception v1

    goto :goto_39

    :catch_44
    move-exception v1

    goto :goto_2e

    :catchall_46
    move-exception v0

    goto :goto_26

    :cond_48
    move v0, v10

    goto :goto_1e
.end method


# virtual methods
.method public final clearAggregate(J)V
    .registers 6

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource$6;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;J)V

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->handler:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/HandlerThread;->process(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearIndividual(J)V
    .registers 6

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource$7;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;J)V

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->handler:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/HandlerThread;->process(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V
    .registers 21

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/nuance/connect/sqlite/ReportingDataSource$5;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->handler:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/HandlerThread;->process(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final createIndividualPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/nuance/connect/sqlite/ReportingDataSource$4;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->handler:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/HandlerThread;->process(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getAggregatePoints([Ljava/lang/String;J)Lorg/json/JSONArray;
    .registers 16

    const/4 v11, 0x0

    const/4 v10, 0x0

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v2, "i"

    invoke-interface {v1, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    :try_start_2a
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v2, "i"

    invoke-interface {v1, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " <= "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_71

    array-length v1, p1
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_e2

    if-nez v1, :cond_4b

    if-eqz v10, :cond_49

    :try_start_46
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catch Landroid/database/SQLException; {:try_start_46 .. :try_end_49} :catch_e9
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_49} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_ff

    :cond_49
    move-object v0, v9

    :goto_4a
    return-object v0

    :cond_4b
    :try_start_4b
    const-string/jumbo v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v1, "a"

    invoke-interface {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " in ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_80
    .catchall {:try_start_4b .. :try_end_80} :catchall_e2

    move-result-object v1

    if-eqz v1, :cond_d2

    :try_start_83
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "NAME_LIST"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v2, v0

    move v0, v11

    :goto_9e
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_b6

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v3}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    invoke-direct {p0, v3, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->generateAggregatePoint(Landroid/content/ContentValues;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    :cond_b6
    const-string/jumbo v0, "NAME_LIST"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v11

    :goto_be
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_109

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    :cond_d2
    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "no aggregate points to send"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_da
    .catchall {:try_start_83 .. :try_end_da} :catchall_10f

    if-eqz v1, :cond_df

    :try_start_dc
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_df
    move-object v0, v10

    goto/16 :goto_4a

    :catchall_e2
    move-exception v0

    :goto_e3
    if-eqz v10, :cond_e8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e8
    throw v0
    :try_end_e9
    .catch Landroid/database/SQLException; {:try_start_dc .. :try_end_e9} :catch_e9
    .catch Lorg/json/JSONException; {:try_start_dc .. :try_end_e9} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e9} :catch_ff

    :catch_e9
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Issue mapping values when generating aggregate value."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_f2
    :goto_f2
    move-object v0, v9

    goto/16 :goto_4a

    :catch_f5
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Issue mapping values when generating aggregate value."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_f2

    :catch_ff
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Issue mapping values when generating aggregate value."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_f2

    :cond_109
    if-eqz v1, :cond_f2

    :try_start_10b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_10e
    .catch Landroid/database/SQLException; {:try_start_10b .. :try_end_10e} :catch_e9
    .catch Lorg/json/JSONException; {:try_start_10b .. :try_end_10e} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10e} :catch_ff

    goto :goto_f2

    :catchall_10f
    move-exception v0

    move-object v10, v1

    goto :goto_e3
.end method

.method public final getIndividualPointsFile([Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v4, "j"

    invoke-interface {v3, v4}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " DESC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "j"

    invoke-interface {v2, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " <= "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_72

    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_46

    const/4 v2, 0x0

    :goto_45
    return-object v2

    :cond_46
    const-string/jumbo v2, " AND "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "a"

    invoke-interface {v2, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " in ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_individual"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v15, ""

    const/4 v4, 0x0

    :try_start_9f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_b6} :catch_cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9f .. :try_end_b6} :catch_d2

    move-object v11, v2

    move-object v12, v3

    :goto_b8
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-nez v12, :cond_d8

    if-eqz v11, :cond_c4

    :try_start_c1
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c1 .. :try_end_c4} :catch_2a4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_1ee
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_203
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_218

    :cond_c4
    if-eqz v11, :cond_c9

    :try_start_c6
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_265

    :cond_c9
    :goto_c9
    const/4 v2, 0x0

    goto/16 :goto_45

    :catch_cc
    move-exception v2

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v11, v2

    move-object v12, v3

    goto :goto_b8

    :catch_d2
    move-exception v2

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v11, v2

    move-object v12, v3

    goto :goto_b8

    :cond_d8
    :try_start_d8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\",\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "62"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\":["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_131
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d8 .. :try_end_131} :catch_2a4
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_131} :catch_1ee
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_131} :catch_203
    .catchall {:try_start_d8 .. :try_end_131} :catchall_218

    :try_start_131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    invoke-interface/range {v2 .. v10}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_143
    .catchall {:try_start_131 .. :try_end_143} :catchall_1af

    move-result-object v4

    :try_start_144
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_14b
    .catchall {:try_start_144 .. :try_end_14b} :catchall_2a7

    move-result-object v3

    :try_start_14c
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_19a

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move-object v5, v15

    :goto_157
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_1d2

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4, v6}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/nuance/connect/sqlite/ReportingDataSource;->generateIndividualPoint(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_17e

    sget-object v6, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "attempting to load an invalid point."

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_175
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_157

    :cond_17e
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    const-string/jumbo v5, ", "

    goto :goto_175

    :cond_19a
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "There aren\'t any individual data points."

    invoke-interface {v2, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1a2
    .catchall {:try_start_14c .. :try_end_1a2} :catchall_2ab

    if-eqz v4, :cond_1a7

    :try_start_1a4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1a7
    .catch Landroid/database/SQLException; {:try_start_1a4 .. :try_end_1a7} :catch_28a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a4 .. :try_end_1a7} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_2a0
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1a7} :catch_29c
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_218

    :cond_1a7
    :goto_1a7
    if-eqz v11, :cond_1ac

    :try_start_1a9
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1ac} :catch_28d

    :cond_1ac
    :goto_1ac
    const/4 v2, 0x0

    goto/16 :goto_45

    :catchall_1af
    move-exception v2

    move-object v3, v13

    move-object v4, v14

    :goto_1b2
    if-eqz v4, :cond_1b7

    :try_start_1b4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1b7
    .catch Landroid/database/SQLException; {:try_start_1b4 .. :try_end_1b7} :catch_274
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b4 .. :try_end_1b7} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1b7} :catch_2a0
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1b7} :catch_29c
    .catchall {:try_start_1b4 .. :try_end_1b7} :catchall_218

    :cond_1b7
    :goto_1b7
    :try_start_1b7
    throw v2
    :try_end_1b8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b7 .. :try_end_1b8} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1b8} :catch_2a0
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1b8} :catch_29c
    .catchall {:try_start_1b7 .. :try_end_1b8} :catchall_218

    :catch_1b8
    move-exception v2

    move-object v13, v3

    :goto_1ba
    :try_start_1ba
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error generating individual points: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c6
    .catchall {:try_start_1ba .. :try_end_1c6} :catchall_218

    const/4 v2, 0x0

    if-eqz v11, :cond_1cc

    :try_start_1c9
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_238

    :cond_1cc
    :goto_1cc
    move-object v12, v2

    :goto_1cd
    if-nez v12, :cond_21f

    const/4 v2, 0x0

    goto/16 :goto_45

    :cond_1d2
    if-eqz v4, :cond_1d7

    :try_start_1d4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1d7
    .catch Landroid/database/SQLException; {:try_start_1d4 .. :try_end_1d7} :catch_277
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d4 .. :try_end_1d7} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1d7} :catch_2a0
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1d7} :catch_29c
    .catchall {:try_start_1d4 .. :try_end_1d7} :catchall_218

    :cond_1d7
    :goto_1d7
    :try_start_1d7
    const-string/jumbo v2, "]}"

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_1e7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d7 .. :try_end_1e7} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1e7} :catch_2a0
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_1e7} :catch_29c
    .catchall {:try_start_1d7 .. :try_end_1e7} :catchall_218

    if-eqz v11, :cond_1ec

    :try_start_1e9
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1e9 .. :try_end_1ec} :catch_27a

    :cond_1ec
    :goto_1ec
    move-object v13, v3

    goto :goto_1cd

    :catch_1ee
    move-exception v2

    :goto_1ef
    :try_start_1ef
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1fb
    .catchall {:try_start_1ef .. :try_end_1fb} :catchall_218

    const/4 v2, 0x0

    if-eqz v11, :cond_201

    :try_start_1fe
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_201
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_201} :catch_247

    :cond_201
    :goto_201
    move-object v12, v2

    goto :goto_1cd

    :catch_203
    move-exception v2

    :goto_204
    :try_start_204
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_210
    .catchall {:try_start_204 .. :try_end_210} :catchall_218

    const/4 v2, 0x0

    if-eqz v11, :cond_216

    :try_start_213
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_216} :catch_256

    :cond_216
    :goto_216
    move-object v12, v2

    goto :goto_1cd

    :catchall_218
    move-exception v2

    if-eqz v11, :cond_21e

    :try_start_21b
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_21e
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_21e} :catch_22a

    :cond_21e
    :goto_21e
    throw v2

    :cond_21f
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_45

    :catch_22a
    move-exception v3

    sget-object v4, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "Error generating individual points: "

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_21e

    :catch_238
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_1cc

    :catch_247
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_201

    :catch_256
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_216

    :catch_265
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c9

    :catch_274
    move-exception v4

    goto/16 :goto_1b7

    :catch_277
    move-exception v2

    goto/16 :goto_1d7

    :catch_27a
    move-exception v2

    sget-object v4, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x0

    goto/16 :goto_1ec

    :catch_28a
    move-exception v2

    goto/16 :goto_1a7

    :catch_28d
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1ac

    :catch_29c
    move-exception v2

    move-object v13, v3

    goto/16 :goto_204

    :catch_2a0
    move-exception v2

    move-object v13, v3

    goto/16 :goto_1ef

    :catch_2a4
    move-exception v2

    goto/16 :goto_1ba

    :catchall_2a7
    move-exception v2

    move-object v3, v13

    goto/16 :goto_1b2

    :catchall_2ab
    move-exception v2

    goto/16 :goto_1b2
.end method

.method public final getLastAggregatePoint()J
    .registers 13

    const/4 v1, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "i"

    aput-object v0, v2, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "i"

    invoke-interface {v1, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_29
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "1"

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_4f

    move-result-object v2

    :try_start_37
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_9f

    move-result-wide v0

    :goto_49
    if-eqz v2, :cond_4e

    :try_start_4b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4b .. :try_end_4e} :catch_9d
    .catch Landroid/database/SQLException; {:try_start_4b .. :try_end_4e} :catch_9b
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_4e} :catch_99
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_97

    :cond_4e
    :goto_4e
    return-wide v0

    :catchall_4f
    move-exception v0

    move-object v1, v9

    :goto_51
    if-eqz v1, :cond_56

    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_56
    throw v0
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_53 .. :try_end_57} :catch_57
    .catch Landroid/database/SQLException; {:try_start_53 .. :try_end_57} :catch_67
    .catch Ljava/lang/IllegalStateException; {:try_start_53 .. :try_end_57} :catch_77
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_87

    :catch_57
    move-exception v0

    move-object v2, v0

    move-wide v0, v10

    :goto_5a
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error getting last aggregate point: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e

    :catch_67
    move-exception v0

    move-object v2, v0

    move-wide v0, v10

    :goto_6a
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error getting last aggregate point: "

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e

    :catch_77
    move-exception v0

    move-object v2, v0

    move-wide v0, v10

    :goto_7a
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error getting last aggregate point: "

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e

    :catch_87
    move-exception v0

    move-object v2, v0

    move-wide v0, v10

    :goto_8a
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error getting last aggregate point: "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e

    :catch_97
    move-exception v2

    goto :goto_8a

    :catch_99
    move-exception v2

    goto :goto_7a

    :catch_9b
    move-exception v2

    goto :goto_6a

    :catch_9d
    move-exception v2

    goto :goto_5a

    :catchall_9f
    move-exception v0

    move-object v1, v2

    goto :goto_51

    :cond_a2
    move-wide v0, v10

    goto :goto_49
.end method

.method public final getLastIndividualPoint()J
    .registers 13

    const/4 v1, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "j"

    aput-object v0, v2, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v3, "j"

    invoke-interface {v1, v3}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_29
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "1"

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_4f

    move-result-object v2

    :try_start_37
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_9f

    move-result-wide v0

    :goto_49
    if-eqz v2, :cond_4e

    :try_start_4b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4b .. :try_end_4e} :catch_9d
    .catch Landroid/database/SQLException; {:try_start_4b .. :try_end_4e} :catch_9b
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_4e} :catch_99
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_97

    :cond_4e
    :goto_4e
    return-wide v0

    :catchall_4f
    move-exception v0

    move-object v1, v9

    :goto_51
    if-eqz v1, :cond_56

    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_56
    throw v0
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_53 .. :try_end_57} :catch_57
    .catch Landroid/database/SQLException; {:try_start_53 .. :try_end_57} :catch_67
    .catch Ljava/lang/IllegalStateException; {:try_start_53 .. :try_end_57} :catch_77
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_87

    :catch_57
    move-exception v0

    move-object v2, v0

    move-wide v0, v10

    :goto_5a
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error getting last individual point: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e

    :catch_67
    move-exception v0

    move-object v2, v0

    move-wide v0, v10

    :goto_6a
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error getting last individual point: "

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e

    :catch_77
    move-exception v0

    move-object v2, v0

    move-wide v0, v10

    :goto_7a
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error getting last individual point: "

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e

    :catch_87
    move-exception v0

    move-object v2, v0

    move-wide v0, v10

    :goto_8a
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Error getting last individual point: "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e

    :catch_97
    move-exception v2

    goto :goto_8a

    :catch_99
    move-exception v2

    goto :goto_7a

    :catch_9b
    move-exception v2

    goto :goto_6a

    :catch_9d
    move-exception v2

    goto :goto_5a

    :catchall_9f
    move-exception v0

    move-object v1, v2

    goto :goto_51

    :cond_a2
    move-wide v0, v10

    goto :goto_49
.end method

.method public final getMaxAggregateEntries()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    return v0
.end method

.method public final getMaxIndividualEntries()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    return v0
.end method

.method public final hasAggregate()Z
    .registers 5

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getLastAggregatePoint()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final hasIndividual()Z
    .registers 5

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getLastIndividualPoint()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final registerCallback(Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;)V
    .registers 4

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method public final setMaxAggregateEntries(I)V
    .registers 3

    iput p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    iget-boolean v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->AGGREGATE:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    :cond_b
    return-void
.end method

.method public final setMaxIndividualEntries(I)V
    .registers 3

    iput p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    iget-boolean v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->INDIVIDUAL:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    :cond_b
    return-void
.end method

.method public final unregisterCallback(Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_20
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_2c
    return-void
.end method

.method public final unregisterCallbacks()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
