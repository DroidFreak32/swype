.class Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/MasterDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseOpenHelper"
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "ac_connect"

.field private static final DB_VERSION:I = 0x4

.field private static instance:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "ac_connect"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;
    .registers 2

    invoke-static {p0}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;->getInstance(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstance(Landroid/content/Context;)Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;
    .registers 4

    const-class v1, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;->instance:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;

    if-nez v0, :cond_12

    new-instance v0, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;->instance:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;

    :cond_12
    sget-object v0, Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;->instance:Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseOpenHelper;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ge p2, v0, :cond_23

    :try_start_4
    const-string/jumbo v0, "SELECT * FROM sqlite_master WHERE type=\'table\'"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_14
    # getter for: Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/sqlite/MasterDatabase;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "No tables to upgrade"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_5f
    .catchall {:try_start_4 .. :try_end_1e} :catchall_81

    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_23
    :goto_23
    return-void

    :cond_24
    :try_start_24
    const-string/jumbo v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/sqlite/MasterDatabase;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string/jumbo v3, "Upgrading table: "

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DROP TABLE IF EXISTS \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_56} :catch_5f
    .catchall {:try_start_24 .. :try_end_56} :catchall_81

    move-result v0

    if-nez v0, :cond_24

    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_23

    :catch_5f
    move-exception v0

    :try_start_60
    # getter for: Lcom/nuance/connect/sqlite/MasterDatabase;->devLog:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/sqlite/MasterDatabase;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_81

    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_23

    :catchall_81
    move-exception v0

    if-eqz v1, :cond_87

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_87
    throw v0
.end method
