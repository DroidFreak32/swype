.class public final Lcom/nuance/connect/sqlite/ReportingDataSource;
.super Lcom/nuance/connect/sqlite/SQLDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/sqlite/ReportingDataSource$7;,
        Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;,
        Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;,
        Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;
    }
.end annotation


# static fields
.field private static final AGGREGATE_TABLE:Ljava/lang/String; = "aa"

.field private static final DATAPOINT_TABLE:Ljava/lang/String; = "ab"

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

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private volatile aggregateLimit:I

.field private final callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final enforceLimits:Z

.field private helper:Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;

.field private volatile individualLimit:I

.field private volatile maxSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/sqlite/ReportingDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;

    invoke-direct {v0, p1}, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIJ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Ljava/util/Set;

    iput p2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    iput p3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    iput-wide p4, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->maxSize:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;

    invoke-direct {v0, p1}, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;

    return-void
.end method

.method private _clearAggregate(J)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "i <= ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Issue clearing data points."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Issue clearing aggregate data points."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private _clearIndividual(J)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "j <= ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ab"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Issue clearing individual data points."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private _createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V
    .locals 17

    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "_createAggregatePoint("

    const-string v5, ", "

    const-string v7, ","

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const-string v9, ","

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const-string v11, ","

    const-string v13, ","

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v15, ")"

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v15}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Creating Aggregate Point without a key"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creating Aggregate Point without a name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_5
    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v6, v2

    const/4 v2, 0x1

    aput-object v14, v6, v2

    const-string v2, "a"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? AND "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "b"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v10, 0x0

    const/4 v2, 0x5

    :try_start_1
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "d"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "e"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "f"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "g"

    aput-object v3, v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_c

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "d"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v2, "e"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-string v2, "f"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "g"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-double v8, v8, p3

    add-double v14, v14, p5

    add-int/lit8 v5, v2, 0x1

    if-nez v4, :cond_9

    const-string v2, ""

    :goto_0
    if-eqz p7, :cond_6

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "f"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "g"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "i"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "aa"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v4, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    const/4 v4, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v11, v4

    :goto_1
    if-eqz v3, :cond_7

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move v3, v11

    :goto_3
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numAggregate()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    if-le v2, v4, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->limitAggregate(I)V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getCallbacks()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

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

    goto :goto_4

    :cond_9
    move-object v2, v4

    goto/16 :goto_0

    :cond_a
    if-nez v2, :cond_b

    :try_start_6
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error writing aggregate data point, unable to save data change."

    invoke-interface {v2, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v11, 0x0

    goto :goto_1

    :cond_b
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error updating aggregate, we affected more then one row"

    invoke-interface {v2, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    const/4 v11, 0x0

    goto :goto_1

    :cond_c
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "a"

    invoke-virtual {v5, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "b"

    invoke-virtual {v5, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "f"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "e"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "d"

    invoke-virtual {v5, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "g"

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "h"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "i"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "aa"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    move-object v3, v10

    move v4, v11

    :goto_5
    if-eqz v3, :cond_e

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_e
    :goto_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_0
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error writing aggregate data point: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->verifyDatabase()V

    const/4 v11, 0x0

    move v3, v11

    goto/16 :goto_3

    :catch_1
    move-exception v2

    :goto_7
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error creating aggregate point."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move v3, v11

    goto/16 :goto_3

    :catch_2
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error writing aggregate data point: "

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    move v3, v11

    goto/16 :goto_3

    :catch_3
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error writing aggregate data point: "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    move v3, v11

    goto/16 :goto_3

    :catch_4
    move-exception v2

    goto/16 :goto_2

    :catch_5
    move-exception v3

    goto :goto_6

    :catch_6
    move-exception v2

    move v11, v4

    goto :goto_7

    :catchall_1
    move-exception v2

    move v4, v11

    goto :goto_5

    :catchall_2
    move-exception v2

    goto :goto_5
.end method

.method private _createIndividualPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15

    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "_createIndividualPoint ("

    const-string v5, ", "

    const-string v7, ","

    const-string v9, ","

    const-string v11, ","

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, ")"

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    invoke-interface/range {v2 .. v13}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "not open"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Creating Individual Point without a key"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creating Individual Point without a name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creating Individual Point without a value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_8
    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "a"

    invoke-virtual/range {p0 .. p1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "b"

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "c"

    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "g"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "j"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ab"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    if-eqz v3, :cond_9

    iget-boolean v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numIndividual()I

    move-result v2

    iget v4, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    if-le v2, v4, :cond_9

    iget v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    invoke-direct {p0, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->limitIndividual(I)V

    :cond_9
    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getCallbacks()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v2 .. v9}, Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;->onIndividual(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_a
    :try_start_2
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error writing individual data point, unable to save data change."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_0
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error writing individual data point: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->verifyDatabase()V

    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error writing individual data point: "

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_1

    :catch_2
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error writing individual data point: "

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_1

    :catch_3
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error writing individual data point: "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private _enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V
    .locals 2

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$7;->$SwitchMap$com$nuance$connect$sqlite$ReportingDataSource$DataType:[I

    invoke-virtual {p1}, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numAggregate()I

    move-result v0

    iget v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->limitAggregate(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->numIndividual()I

    move-result v0

    iget v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->limitIndividual(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_createIndividualPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V
    .locals 1

    invoke-direct/range {p0 .. p9}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/sqlite/ReportingDataSource;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_clearAggregate(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/sqlite/ReportingDataSource;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_clearIndividual(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/sqlite/ReportingDataSource;Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    return-void
.end method

.method private checkOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->openSafe()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->restartCloseTimer()V

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->isOpen()Z

    move-result v0

    goto :goto_0
.end method

.method private enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V
    .locals 1

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$5;

    invoke-direct {v0, p0, p1}, Lcom/nuance/connect/sqlite/ReportingDataSource$5;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private generateAggregatePoint(Landroid/content/ContentValues;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "b"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "NAME_LIST"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "63"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "15"

    const-string v4, "a"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "23"

    const-string v4, "g"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "26"

    const-string v4, "h"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "27"

    const-string v4, "i"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "37"

    const-string v4, "f"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "22"

    const-string v4, "d"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "24"

    const-string v4, "e"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "16"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "25"

    const-string v4, "SUM"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "63"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object p2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Error generating point."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private generateIndividualPoint(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "15"

    const-string v3, "a"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "16"

    const-string v3, "b"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "22"

    const-string v3, "c"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "23"

    const-string v3, "g"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "1"

    const-string v3, "j"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "15"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    const-string v3, "15"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "16"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    const-string v3, "16"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "22"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    const-string v3, "22"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Error generating individual point."

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getCallbacks()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method private limitAggregate(I)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "i"

    aput-object v1, v2, v0

    const-string v7, "i DESC"

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    :goto_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    cmp-long v0, v2, v10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "i < ?"

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Error limiting points."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    move-wide v2, v10

    goto :goto_1
.end method

.method private limitIndividual(I)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "j"

    aput-object v1, v2, v0

    const-string v7, "j DESC"

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ab"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    :goto_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    cmp-long v0, v2, v10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "j < ?"

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ab"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Error limiting individual points."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_4
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Error limiting individual points."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    move-wide v2, v10

    goto :goto_1
.end method

.method private makePlaceholders(I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, -0x1

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    const-string v3, ", ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private numAggregate()I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT count(*) FROM aa"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_2
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Problem getting data count."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Problem getting data count."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private numIndividual()I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT count(*) FROM ab"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_2
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Problem getting individual data count."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    sget-object v1, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Problem getting individual data count."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    new-instance v1, Lcom/nuance/connect/sqlite/ReportingDataSource$6;

    invoke-direct {v1, p0}, Lcom/nuance/connect/sqlite/ReportingDataSource$6;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/HandlerThread;->process(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/HandlerThread;->process(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private verifyDatabase()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "aa"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;->validateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "aa"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;->onInvalid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ab"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;->validateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ab"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;->onInvalid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final clearAggregate(J)V
    .locals 1

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource$3;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;J)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearIndividual(J)V
    .locals 1

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/connect/sqlite/ReportingDataSource$4;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;J)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;->close()V

    return-void
.end method

.method public final createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V
    .locals 11

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/nuance/connect/sqlite/ReportingDataSource$2;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final createIndividualPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    new-instance v0, Lcom/nuance/connect/sqlite/ReportingDataSource$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/nuance/connect/sqlite/ReportingDataSource$1;-><init>(Lcom/nuance/connect/sqlite/ReportingDataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getAggregatePoints([Ljava/lang/String;J)Lorg/json/JSONArray;
    .locals 12

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i DESC"

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->checkOpen()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "not open"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "i"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " <="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    move-object v0, v8

    goto :goto_0

    :cond_1
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    new-array v4, v0, [Ljava/lang/String;

    move v0, v10

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v9

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "NAME_LIST"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v2, v0

    move v0, v10

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v3}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    invoke-direct {p0, v3, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->generateAggregatePoint(Landroid/content/ContentValues;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "NAME_LIST"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v10

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_4
    move-object v0, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_5
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Issue mapping values when generating aggregate value."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_4

    :catch_1
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Issue mapping values when generating aggregate value."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_4

    :catch_2
    move-exception v0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Issue mapping values when generating aggregate value."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method public final getIndividualPointsFile([Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 16
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

    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->checkOpen()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "not open"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const-string v9, "j DESC"

    const-string v2, "j"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " <="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v2, " AND "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "a"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/ReportingDataSource;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    array-length v2, v0

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getContext()Landroid/content/Context;

    move-result-object v2

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

    const-string v4, "_individual"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v14, ""

    const/4 v4, 0x0

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v4, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v2

    move-object v11, v3

    :goto_2
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-nez v11, :cond_5

    if-eqz v10, :cond_3

    :try_start_1
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    if-eqz v10, :cond_4

    :try_start_2
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v10, v2

    move-object v11, v3

    goto :goto_2

    :catch_1
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "62"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ab"

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v3

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move-object v5, v14

    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_7

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4, v6}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/nuance/connect/sqlite/ReportingDataSource;->generateIndividualPoint(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_6

    sget-object v6, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "attempting to load an invalid point."

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const-string v7, "UTF-8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    const-string v5, ", "
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_8
    :goto_6
    :try_start_8
    const-string v2, "]}"

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v10, :cond_9

    :try_start_9
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_9
    move-object v12, v3

    :cond_a
    :goto_7
    if-nez v11, :cond_d

    const/4 v2, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v12

    move-object v4, v13

    :goto_8
    if-eqz v4, :cond_b

    :try_start_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_b
    :goto_9
    :try_start_b
    throw v2
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_2
    move-exception v2

    move-object v12, v3

    :goto_a
    :try_start_c
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error generating individual points: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v11, 0x0

    if-eqz v10, :cond_a

    :try_start_d
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_7

    :catch_3
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    goto :goto_7

    :catch_4
    move-exception v2

    sget-object v4, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    move-object v12, v3

    goto :goto_7

    :catch_5
    move-exception v2

    :goto_b
    :try_start_e
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/4 v11, 0x0

    if-eqz v10, :cond_a

    :try_start_f
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_7

    :catch_6
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    goto :goto_7

    :catch_7
    move-exception v2

    :goto_c
    :try_start_10
    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const/4 v11, 0x0

    if-eqz v10, :cond_a

    :try_start_11
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_7

    :catch_8
    move-exception v2

    sget-object v3, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error generating individual points: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    goto :goto_7

    :catchall_1
    move-exception v2

    if-eqz v10, :cond_c

    :try_start_12
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    :cond_c
    :goto_d
    throw v2

    :catch_9
    move-exception v3

    sget-object v4, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Error generating individual points: "

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_d
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v12, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_a
    move-exception v2

    goto/16 :goto_6

    :catch_b
    move-exception v4

    goto/16 :goto_9

    :catch_c
    move-exception v2

    move-object v12, v3

    goto :goto_c

    :catch_d
    move-exception v2

    move-object v12, v3

    goto :goto_b

    :catch_e
    move-exception v2

    goto/16 :goto_a

    :catchall_2
    move-exception v2

    move-object v3, v12

    goto/16 :goto_8

    :catchall_3
    move-exception v2

    goto/16 :goto_8
.end method

.method public final getLastAggregatePoint()J
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->checkOpen()Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v0, v10

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "i"

    aput-object v0, v2, v1

    const-string v7, "i DESC"

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Problem getting last point."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_1
    move-exception v0

    move-wide v0, v10

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_4
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Problem getting last point."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v0

    move-wide v0, v10

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_3
    move-wide v0, v10

    goto :goto_1
.end method

.method public final getLastIndividualPoint()J
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->checkOpen()Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v0, v10

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "j"

    aput-object v0, v2, v1

    const-string v7, "j DESC"

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ab"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Problem getting last individual point."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_1
    move-exception v0

    move-wide v0, v10

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_4
    sget-object v2, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Problem getting last individual point."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v0

    move-wide v0, v10

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_3
    move-wide v0, v10

    goto :goto_1
.end method

.method public final getMaxAggregateEntries()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    return v0
.end method

.method public final getMaxIndividualEntries()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    return v0
.end method

.method public final getMaxSize()J
    .locals 2

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->checkOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getMaximumSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final hasAggregate()Z
    .locals 4

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getLastAggregatePoint()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIndividual()Z
    .locals 4

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->getLastIndividualPoint()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/ReportingDataSource$ReportingSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->verifyDatabase()V

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->AGGREGATE:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->INDIVIDUAL:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    iget-wide v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->maxSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v2, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->maxSize:J

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    :cond_0
    return-void
.end method

.method public final registerCallback(Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Ljava/util/Set;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setMaxAggregateEntries(I)V
    .locals 1

    iput p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->aggregateLimit:I

    iget-boolean v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->AGGREGATE:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    :cond_0
    return-void
.end method

.method public final setMaxIndividualEntries(I)V
    .locals 1

    iput p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->individualLimit:I

    iget-boolean v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;->INDIVIDUAL:Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->enforceLimits(Lcom/nuance/connect/sqlite/ReportingDataSource$DataType;)V

    :cond_0
    return-void
.end method

.method public final setMaxSize(J)V
    .locals 3

    iput-wide p1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->maxSize:J

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/ReportingDataSource;->checkOpen()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/connect/sqlite/ReportingDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "could not set database size"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_clearAggregate(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/sqlite/ReportingDataSource;->_clearIndividual(J)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    goto :goto_0
.end method

.method public final unregisterCallback(Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;)V
    .locals 4

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/ReportingDataSource$Callback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final unregisterCallbacks()V
    .locals 2

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ReportingDataSource;->callbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
