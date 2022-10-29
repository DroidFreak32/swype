.class public Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionDatabaseSchema;,
        Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "chineseprediction"

.field private static final DB_VERSION:I = 0x2

.field private static final FIELD_RESULT_APPLICATION_NAME:Ljava/lang/String; = "k"

.field private static final FIELD_RESULT_ATTRIBUTE:Ljava/lang/String; = "f"

.field private static final FIELD_RESULT_CCPS_VERSION:Ljava/lang/String; = "i"

.field private static final FIELD_RESULT_CLOUD_TIME:Ljava/lang/String; = "g"

.field private static final FIELD_RESULT_COUNTRY:Ljava/lang/String; = "l"

.field private static final FIELD_RESULT_CREATED_STAMP:Ljava/lang/String; = "j"

.field private static final FIELD_RESULT_FULLSPELL:Ljava/lang/String; = "e"

.field private static final FIELD_RESULT_PHRASE:Ljava/lang/String; = "c"

.field private static final FIELD_RESULT_PREDICTION_ID:Ljava/lang/String; = "a"

.field private static final FIELD_RESULT_SPELL:Ljava/lang/String; = "d"

.field private static final FIELD_RESULT_TOTAL_TIME:Ljava/lang/String; = "h"

.field private static final FIELD_RESULT_TYPE:Ljava/lang/String; = "b"

.field private static final MAX_DATABASE_SIZE:I = 0x100000

.field private static final MAX_WAIT_TRANSMIT_TIME:J = 0x927c0L

.field private static final PREDICTION_TABLE:Ljava/lang/String; = "chineseprediction_aa"

.field public static final RESULT_TYPE_CANCELED:I = 0x2

.field public static final RESULT_TYPE_COMPLETED:I = 0x3

.field public static final RESULT_TYPE_FAILED:I = 0x1

.field public static final RESULT_TYPE_PENDING:I = 0x0

.field private static final ROWID:Ljava/lang/String; = "rowid"

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final predictionTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

.field private static schemaInstance:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionDatabaseSchema;


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$1;

    invoke-direct {v0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$1;-><init>()V

    sput-object v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/connect/sqlite/MasterDatabase;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase;

    move-result-object v0

    invoke-static {p1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionDatabaseSchema;->from(Landroid/content/Context;)Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionDatabaseSchema;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->connectDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseSchema;)V

    sget-object v1, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/MasterDatabase;->getTableDatabase(Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    new-instance v0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    invoke-direct {v0, p0}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;-><init>(Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->start()V

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionDatabaseSchema;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->schemaInstance:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionDatabaseSchema;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionDatabaseSchema;)Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionDatabaseSchema;
    .registers 1

    sput-object p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->schemaInstance:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionDatabaseSchema;

    return-object p0
.end method

.method static synthetic access$100()Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;
    .registers 1

    sget-object v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTableSchema:Lcom/nuance/connect/sqlite/MasterDatabase$TableSchema;

    return-object v0
.end method

.method private getIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1c

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    return-object v1
.end method

.method private parseStringToIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2c

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_f
    array-length v3, v2

    if-ge v0, v3, :cond_2c

    :try_start_12
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1f} :catch_22

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :catch_22
    move-exception v3

    iget-object v3, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "NumberFormatException in parseStringToIntegerArray() string: "

    invoke-interface {v3, v4, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f

    :cond_2c
    return-object v1
.end method


# virtual methods
.method deletePredictions(I)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "deletePredictions beforeRowId="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    if-lez p1, :cond_40

    const-string/jumbo v2, "rowid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " < ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_29
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "deletePredictions rows="

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3f
    return-void

    :cond_40
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_44} :catch_46

    const/4 v0, 0x0

    goto :goto_29

    :catch_46
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "deletePredictions failed: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3f
.end method

.method public deletePredictionsFrom(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->process(IIILjava/lang/Object;)V

    return-void
.end method

.method public getPendingLogSize()I
    .registers 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "getPendingLogSize"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :try_start_a
    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_26

    move-result-object v1

    if-eqz v1, :cond_24

    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_40

    move-result v0

    :goto_1e
    if-eqz v1, :cond_23

    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_23} :catch_3e

    :cond_23
    :goto_23
    return v0

    :cond_24
    move v0, v9

    goto :goto_1e

    :catchall_26
    move-exception v0

    move-object v1, v10

    :goto_28
    if-eqz v1, :cond_2d

    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2d
    throw v0
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    move-object v1, v0

    move v0, v9

    :goto_31
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getPendingLogSize failed: "

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_23

    :catch_3e
    move-exception v1

    goto :goto_31

    :catchall_40
    move-exception v0

    goto :goto_28
.end method

.method public getPredictions(Ljava/lang/String;)Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;
    .registers 17

    const/high16 v13, -0x80000000

    const/4 v14, 0x0

    const/4 v12, 0x0

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getPredictions"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->setDeviceID(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-result-object v11

    :try_start_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long/2addr v4, v2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2
    :try_end_35
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_35} :catch_233

    :try_start_35
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v3, 0x0

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "rowid"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v7, "a"

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, "i"

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v7, "h"

    aput-object v7, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v7, "g"

    aput-object v7, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v7, "b"

    aput-object v7, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v7, "k"

    aput-object v7, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v7, "l"

    aput-object v7, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v7, "c"

    aput-object v7, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v7, "d"

    aput-object v7, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v7, "e"

    aput-object v7, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v7, "f"

    aput-object v7, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "("

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v8, "b"

    invoke-interface {v7, v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " != ?) OR ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v8, "j"

    invoke-interface {v7, v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " < ? OR "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v8, "j"

    invoke-interface {v7, v8}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " > ?)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v10}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d7
    .catchall {:try_start_35 .. :try_end_d7} :catchall_236

    move-result-object v3

    if-eqz v3, :cond_e0

    :try_start_da
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_ee

    :cond_e0
    new-instance v2, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;-><init>(ILcom/nuance/connect/proto/Prediction$LoggingRequestV1;)V
    :try_end_e8
    .catchall {:try_start_da .. :try_end_e8} :catchall_23b

    if-eqz v3, :cond_ed

    :try_start_ea
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_ed
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ea .. :try_end_ed} :catch_233

    :cond_ed
    :goto_ed
    return-object v2

    :cond_ee
    :try_start_ee
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_23b

    move v4, v13

    move v5, v14

    :cond_f3
    :try_start_f3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v6}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "getPredictions.map == "

    invoke-virtual {v6}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v2

    const-string/jumbo v7, "c"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->addAllPhrase(Ljava/lang/Iterable;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v2

    const-string/jumbo v7, "d"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->addAllSpell(Ljava/lang/Iterable;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v2

    const-string/jumbo v7, "e"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->getIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->addAllFullSpell(Ljava/lang/Iterable;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v2

    const-string/jumbo v7, "f"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->parseStringToIntegerArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->addAllAttribute(Ljava/lang/Iterable;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    :try_end_14a
    .catchall {:try_start_f3 .. :try_end_14a} :catchall_215

    move-result-object v7

    :try_start_14b
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v8, "prediction transaction id: "

    const-string/jumbo v9, "a"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->newBuilder()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v2

    const-string/jumbo v8, "a"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setTransactionID(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v2

    const-string/jumbo v8, "i"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setCcpsVersion(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v2

    const-string/jumbo v8, "h"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setTotalTime(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v2

    const-string/jumbo v8, "g"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setCloudTime(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v2

    const-string/jumbo v8, "b"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setResultCode(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v8

    const-string/jumbo v2, "k"

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_208

    const-string/jumbo v2, "k"

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1b1
    invoke-virtual {v8, v2}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setApplicationName(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v8

    const-string/jumbo v2, "l"

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20c

    const-string/jumbo v2, "l"

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1c5
    invoke-virtual {v8, v2}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setCountryCode(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setPredictionResult(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v7

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v7}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getTransactionID()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object v0, v11

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    move-object v2, v0

    invoke-virtual {v2, v7}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->addTransactions(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    const-string/jumbo v2, "rowid"

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_1eb} :catch_210
    .catchall {:try_start_14b .. :try_end_1eb} :catchall_215

    move-result v4

    :goto_1ec
    add-int/lit8 v5, v5, 0x1

    :try_start_1ee
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1f1
    .catchall {:try_start_1ee .. :try_end_1f1} :catchall_215

    move-result v2

    if-nez v2, :cond_f3

    if-eqz v3, :cond_1f9

    :try_start_1f6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1f9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f6 .. :try_end_1f9} :catch_21c

    :cond_1f9
    :goto_1f9
    if-lez v5, :cond_22c

    new-instance v2, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;

    check-cast v11, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;

    invoke-virtual {v11}, Lcom/nuance/connect/proto/Prediction$LoggingRequestV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$LoggingRequestV1;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;-><init>(ILcom/nuance/connect/proto/Prediction$LoggingRequestV1;)V

    goto/16 :goto_ed

    :cond_208
    :try_start_208
    const-string/jumbo v2, "UNKNOWN"

    goto :goto_1b1

    :cond_20c
    const-string/jumbo v2, "UNKNOWN"
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_20f} :catch_210
    .catchall {:try_start_208 .. :try_end_20f} :catchall_215

    goto :goto_1c5

    :catch_210
    move-exception v2

    :try_start_211
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_214
    .catchall {:try_start_211 .. :try_end_214} :catchall_215

    goto :goto_1ec

    :catchall_215
    move-exception v2

    :goto_216
    if-eqz v3, :cond_21b

    :try_start_218
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_21b
    throw v2
    :try_end_21c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_218 .. :try_end_21c} :catch_21c

    :catch_21c
    move-exception v2

    move v14, v5

    :goto_21e
    iget-object v3, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "getPredictions failed: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v5, v14

    goto :goto_1f9

    :cond_22c
    new-instance v2, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;

    invoke-direct {v2, v13, v12}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource$ChinesePredictionResultDataReturn;-><init>(ILcom/nuance/connect/proto/Prediction$LoggingRequestV1;)V

    goto/16 :goto_ed

    :catch_233
    move-exception v2

    move v4, v13

    goto :goto_21e

    :catchall_236
    move-exception v2

    move-object v3, v12

    move v4, v13

    move v5, v14

    goto :goto_216

    :catchall_23b
    move-exception v2

    move v4, v13

    move v5, v14

    goto :goto_216
.end method

.method public insertPrediction(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;)Z
    .registers 22

    new-instance v1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move v8, p3

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;-><init>(Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->addPrediction(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method insertPredictionObject(Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "insertPredictionObject row="

    invoke-virtual {p1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->isFull()Z

    move-result v1

    if-eqz v1, :cond_16

    :goto_15
    return v0

    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "a"

    iget-object v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->predictionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "i"

    iget-object v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->ccpsVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "b"

    iget v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->resultType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "g"

    iget-wide v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->cloudTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "h"

    iget-wide v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->totalTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "j"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "k"

    iget-object v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->applicationName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "l"

    iget-object v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_91

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "insertPredictionObject failed to insert event: "

    invoke-virtual {p1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8b
    .catch Landroid/database/SQLException; {:try_start_16 .. :try_end_8b} :catch_98
    .catchall {:try_start_16 .. :try_end_8b} :catchall_af

    :goto_8b
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    :goto_8d
    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    goto :goto_15

    :cond_91
    :try_start_91
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_96
    .catch Landroid/database/SQLException; {:try_start_91 .. :try_end_96} :catch_98
    .catchall {:try_start_91 .. :try_end_96} :catchall_af

    const/4 v0, 0x1

    goto :goto_8b

    :catch_98
    move-exception v1

    :try_start_99
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "insertPredictionObject failed to insert prediction: ("

    invoke-virtual {p1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ") SQL message"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ac
    .catchall {:try_start_99 .. :try_end_ac} :catchall_af

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    goto :goto_8d

    :catchall_af
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v0
.end method

.method insertPredictionResultObject(Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "insertPredictionResultObject row="

    invoke-virtual {p1}, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->isFull()Z

    move-result v2

    if-eqz v2, :cond_17

    :goto_16
    return v0

    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->beginTransaction()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "b"

    iget v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->resultType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "c"

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->phrase:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "d"

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->spell:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "e"

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->fullSpell:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, ""

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->attribute:[I

    if-eqz v4, :cond_5a

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->attribute:[I

    array-length v4, v4

    if-lez v4, :cond_5a

    iget-object v2, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->attribute:[I

    const-string/jumbo v4, ","

    invoke-static {v2, v4}, Lcom/nuance/connect/util/StringUtils;->implode([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5a
    const-string/jumbo v4, "f"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->predictionId:Ljava/lang/String;

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    const-string/jumbo v5, "a = ?"

    invoke-interface {v4, v3, v5, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_83

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "insertPredictionResultObject failed to create result for prediction: "

    iget-object v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->predictionId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7d
    .catch Landroid/database/SQLException; {:try_start_17 .. :try_end_7d} :catch_90
    .catchall {:try_start_17 .. :try_end_7d} :catchall_ac

    :goto_7d
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    :goto_7f
    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    goto :goto_16

    :cond_83
    if-le v2, v1, :cond_a5

    :try_start_85
    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "insertPredictionResultObject failed to properly create result for prediction: "

    iget-object v3, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->predictionId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8f
    .catch Landroid/database/SQLException; {:try_start_85 .. :try_end_8f} :catch_90
    .catchall {:try_start_85 .. :try_end_8f} :catchall_ac

    goto :goto_7d

    :catch_90
    move-exception v1

    :try_start_91
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "insertPredictionResultObject failed to create result for prediction: "

    iget-object v4, p1, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;->predictionId:Ljava/lang/String;

    const-string/jumbo v5, " SQL message"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a2
    .catchall {:try_start_91 .. :try_end_a2} :catchall_ac

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    goto :goto_7f

    :cond_a5
    :try_start_a5
    iget-object v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->setTransactionSuccessful()V
    :try_end_aa
    .catch Landroid/database/SQLException; {:try_start_a5 .. :try_end_aa} :catch_90
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_ac

    move v0, v1

    goto :goto_7d

    :catchall_ac
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v1}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->endTransaction()V

    throw v0
.end method

.method public isFull()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->isFull()Z

    move-result v0

    return v0
.end method

.method public logPredictionResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Z
    .registers 14

    new-instance v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->handler:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->addPrediction(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ChinesePredictionDataSource.reset()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->predictionTable:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;

    invoke-interface {v0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;->deleteAll()Z

    return-void
.end method
