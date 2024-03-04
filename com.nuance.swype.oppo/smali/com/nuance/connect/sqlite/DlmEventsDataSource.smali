.class public Lcom/nuance/connect/sqlite/DlmEventsDataSource;
.super Lcom/nuance/connect/sqlite/SQLDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;
    }
.end annotation


# static fields
.field private static final APPNAME_TABLE:Ljava/lang/String; = "ab"

.field private static final DB_NAME:Ljava/lang/String; = "dlmevents"

.field private static final DB_VERSION:I = 0x1

.field private static final EVENTS_TABLE:Ljava/lang/String; = "aa"

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

.field private static final LOCALE_TABLE:Ljava/lang/String; = "ae"

.field private static final LOCATION_TABLE:Ljava/lang/String; = "ad"

.field private static final MAX_DATABASE_SIZE:I = 0x100000

.field private static final NEWWORDS_TABLE:Ljava/lang/String; = "ac"

.field private static final ROW_ID:Ljava/lang/String; = "rowid"


# instance fields
.field private context:Landroid/content/Context;

.field private databaseFull:Z

.field handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

.field private helper:Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->context:Landroid/content/Context;

    new-instance v0, Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    const-string v1, "dlmevents"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->helper:Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    return-void
.end method

.method private clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE ? NOT IN (SELECT ? FROM aa)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "clearUnusedLUEntries("

    const-string v4, ") failed message: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, p1, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "clearUnusedLUEntries("

    const-string v4, ") failed message: "

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, p1, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getHandler()Lcom/nuance/connect/sqlite/DatabaseHandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    invoke-direct {v0, p0}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;-><init>(Lcom/nuance/connect/sqlite/DlmEventsDataSource;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    return-object v0
.end method

.method private getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 11

    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    aput-object p4, v2, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    int-to-long v0, v0

    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-wide v0

    :cond_1
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_0
    move-exception v0

    move-object v2, v0

    :goto_3
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Error in ["

    const-string v3, "] getIndex("

    const-string v5, "): "

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide v0, v8

    goto :goto_1

    :catch_1
    move-exception v2

    move-wide v8, v0

    :goto_4
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Error in ["

    const-string v3, "] getIndex("

    const-string v5, "): "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    move-wide v0, v8

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_3
    move-exception v2

    move-wide v8, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private getLastRowIdForTable(Ljava/lang/String;)J
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid table: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT rowid FROM "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ORDER BY rowid DESC LIMIT 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    move-wide v0, v2

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getLastRowId failed; message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v3, :cond_6

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v2

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getLastRowId failed; message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method private printCursor(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "[DLM_EVENTS]"

    const-string v2, "Num Columns: "

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "[DLM_EVENTS]"

    const-string v2, "Columns Names: "

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "[DLM_EVENTS]"

    const-string v2, "Row: "

    invoke-static {p2}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private printDatabaseContents()V
    .locals 11

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ab"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :try_start_1
    const-string v0, "ab"

    invoke-direct {p0, v0, v8}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->printCursor(Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-string v0, "aa"

    invoke-direct {p0, v0, v8}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->printCursor(Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    const-string v0, "ac"

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->printCursor(Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v9}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getHighPriorityEvents(I)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Add word events: "

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v10, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLastHighPriorityRowId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "clearing add word row: "

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v9, v0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearHighPriorityEvents(IJ)V

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLastRowId()J

    move-result-wide v0

    invoke-virtual {p0, v9, v0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getEvents(IJ)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Regular events: "

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v10, :cond_2

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLastRowId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "clearing regular row: "

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v9, v0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearEvents(IJ)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "printDatabaseContents failed; message: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method _clearEvents(IJ)V
    .locals 12

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "d"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "b"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "c"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "a"

    aput-object v1, v2, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "a = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v0

    int-to-long v10, v0

    if-eqz v8, :cond_0

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM aa WHERE rowid <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    int-to-long v0, v0

    if-eqz v8, :cond_1

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "clearEvents removed: "

    sub-long v0, v10, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    const-string v0, "ab"

    const-string v1, "c"

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "ae"

    const-string v1, "k"

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "ad"

    const-string v1, "h"

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_3

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "clearEvents failed rowid="

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, " message: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v8, :cond_4

    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_1
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "clearEvents failed rowid="

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, " message: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method _insertEvent(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v6, -0x1

    const-wide/16 v4, -0x1

    const-wide/16 v8, -0x1

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "ab"

    const-string v8, "c"

    const-string v9, "e"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v3, v8, v9}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "ad"

    const-string v6, "g"

    const-string v7, "h"

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v3, v6, v7}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    :cond_3
    if-eqz p7, :cond_4

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "ae"

    const-string v4, "j"

    const-string v5, "k"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    :cond_4
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "a"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "d"

    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "b"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "c"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "g"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "j"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "f"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "aa"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_5

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "insertEvent failed to insert event: "

    invoke-interface {v3, v4, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "insertEvent failed to insert event: ("

    const-string v5, ") SQL message"

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, p1, v5, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method _insertHighPriorityEvent(Ljava/lang/String;IJ)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "a"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "b"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "d"

    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ac"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "insertHighPriorityEvents failed to insert event: "

    invoke-interface {v2, v3, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "insertHighPriorityEvent failed to insert event: ("

    const-string v4, ") SQL message"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, p1, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public clearEvents(IJ)V
    .locals 4

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getHandler()Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->process(IIILjava/lang/Object;)V

    return-void
.end method

.method public clearHighPriorityEvents(IJ)V
    .locals 10

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "d"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "b"

    aput-object v1, v2, v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM ac WHERE rowid <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
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

    const-string v1, "clearHighPriorityEvents failed cat="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " rowid="

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, " message: "

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v8, :cond_3

    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

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

    const-string v1, "clearHighPriorityEvents failed cat="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " rowid="

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, " message: "

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->helper:Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;->close()V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    :cond_0
    return-void
.end method

.method public getEventCategories()[I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "SELECT DISTINCT a FROM aa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-gtz v1, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v0, v1, [I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    const-string v3, "a"

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

    :cond_2
    if-eqz v2, :cond_0

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "getEventCategories failed: "

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_3

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_4
    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "getEventCategories failed: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_3
.end method

.method public getEvents(IJ)Lorg/json/JSONArray;
    .locals 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "SELECT * FROM aa LEFT OUTER JOIN ab ON aa.c"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " = ab.c LEFT OUTER JOIN ad ON aa"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ".g = ad.g LEFT OUTER JOIN ae"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " ON aa.j = ae.j"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " WHERE a = ? AND aa.rowid <= ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

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

    const-string v4, "1"

    const-string v5, "b"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "89"

    const-string v5, "d"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "91"

    const-string v5, "e"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "98"

    const-string v5, "k"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "99"

    const-string v5, "f"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "90"

    const-string v5, "h"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v3, "getEvents failed: "

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

    const-string v3, "getEvents failed: "

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "getEvents failed: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getHighPriorityEvents(I)Lorg/json/JSONArray;
    .locals 10

    const/4 v9, 0x0

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "d"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "a"

    aput-object v1, v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "a = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
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
    move-object v0, v8

    :goto_0
    return-object v0

    :cond_1
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const-string v2, "d"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

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
    move-object v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

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

    const-string v2, "getHighPriorityEvents failed: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "getHighPriorityEvents failed: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public getLastHighPriorityRowId()J
    .locals 2

    const-string v0, "ac"

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLastRowIdForTable(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRowId()J
    .locals 2

    const-string v0, "aa"

    invoke-direct {p0, v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getLastRowIdForTable(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertEvent(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
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

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getHandler()Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->addEvent(Lcom/nuance/connect/sqlite/DlmEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public insertHighPriorityEvent(Ljava/lang/String;IJ)Z
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

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->getHandler()Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->addEvent(Lcom/nuance/connect/sqlite/DlmEvent;)V

    return v10
.end method

.method public isFull()Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->databaseFull:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PRAGMA page_size;"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "PRAGMA page_count;"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/high16 v4, 0x100000

    mul-int/2addr v0, v3

    if-ge v4, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->databaseFull:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->databaseFull:Z

    return v0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->helper:Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    invoke-direct {v0, p0}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;-><init>(Lcom/nuance/connect/sqlite/DlmEventsDataSource;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->handler:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->start()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "DlmEventsDataStore.reset()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->close()V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->context:Landroid/content/Context;

    const-string v1, "dlmevents"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->databaseFull:Z

    return-void
.end method

.method public verifyDatabase()V
    .locals 0

    return-void
.end method
