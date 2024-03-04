.class public abstract Lcom/nuance/connect/sqlite/SQLDataSource;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/sqlite/SQLDataSource$AsyncHandlerThread;
    }
.end annotation


# static fields
.field private static final CLOSE_DELAY:J = 0x3a98L

.field private static final MESSAGE_CLOSE:I = 0x3e8

.field private static log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final context:Landroid/content/Context;

.field protected volatile database:Landroid/database/sqlite/SQLiteDatabase;

.field protected volatile handlerThread:Lcom/nuance/connect/util/HandlerThread;

.field private volatile lastOpenedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/sqlite/SQLDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->lastOpenedTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    iput-object p1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method protected decryptDouble(Ljava/lang/String;)D
    .locals 3

    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "NumberFormatException while parsing data: "

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected decryptFloat(Ljava/lang/String;)F
    .locals 3

    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "NumberFormatException while parsing data: "

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected decryptInt(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "NumberFormatException while parsing data: "

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected decryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/nuance/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Exception while securing data [d]: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected encryptString(D)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encryptString(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encryptString(J)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/nuance/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Exception while securing data [e]: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->context:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Database idle, closing now. Thread="

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, ", handler="

    iget-object v4, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->lastOpenedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->close()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/util/HandlerThread;->quit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public isOpen()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public openSafe()Z
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->lastOpenedTime:J

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/HandlerThread;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    if-nez v1, :cond_1

    new-instance v1, Lcom/nuance/connect/sqlite/SQLDataSource$AsyncHandlerThread;

    invoke-direct {v1, p0}, Lcom/nuance/connect/sqlite/SQLDataSource$AsyncHandlerThread;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v1}, Lcom/nuance/connect/util/HandlerThread;->start()V

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    const/16 v2, 0x3e8

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Lcom/nuance/connect/util/HandlerThread;->processDelayed(IJ)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->open()V

    :cond_3
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->isOpen()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error opening db: "

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error opening db: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected declared-synchronized restartCloseTimer()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/HandlerThread;->removeMessages(I)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/util/HandlerThread;->processDelayed(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
