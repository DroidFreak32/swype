.class public final Lcom/nuance/nmdp/speechkit/util/JobRunner;
.super Ljava/lang/Thread;
.source "JobRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/util/JobRunner$PendingRunnable;
    }
.end annotation


# static fields
.field private static _initializeCount:I

.field private static _instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

.field private static final _sync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    return-object v0
.end method

.method public static addJob(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;I)V

    .line 123
    return-void
.end method

.method public static addJob(Ljava/lang/Runnable;I)V
    .registers 5
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "delay"    # I

    .prologue
    .line 93
    sget-object v1, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_3
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    if-nez v0, :cond_10

    .line 97
    const/4 v0, 0x0

    const-string/jumbo v2, "Job added while JobRunner not active"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    :goto_e
    monitor-exit v1

    return-void

    .line 100
    :cond_10
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    new-instance v2, Lcom/nuance/nmdp/speechkit/util/JobRunner$2;

    invoke-direct {v2, p0}, Lcom/nuance/nmdp/speechkit/util/JobRunner$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, p1}, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->addJob(Ljava/lang/Runnable;I)V

    goto :goto_e

    .line 113
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public static initialize()V
    .registers 3

    .prologue
    .line 37
    sget-object v1, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_3
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    if-nez v0, :cond_10

    .line 41
    new-instance v0, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    sget-object v2, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_sync:Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    .line 44
    :cond_10
    sget v0, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_initializeCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_initializeCount:I

    .line 45
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public static shutdown()V
    .registers 4

    .prologue
    .line 56
    sget-object v2, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_sync:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_3
    sget-object v1, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    if-eqz v1, :cond_2d

    .line 60
    sget v1, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_initializeCount:I

    add-int/lit8 v1, v1, -0x1

    .line 61
    sput v1, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_initializeCount:I

    if-gez v1, :cond_1a

    .line 63
    sget-object v1, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    const-string/jumbo v3, "JobRunner shutdown more often than initialized"

    invoke-static {v1, v3}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x0

    sput v1, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_initializeCount:I

    .line 67
    :cond_1a
    sget v1, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_initializeCount:I

    if-gtz v1, :cond_2b

    .line 69
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    .line 70
    .local v0, "instance":Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/JobRunner$1;

    invoke-direct {v1, v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner$1;-><init>(Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;)V

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 77
    const/4 v1, 0x0

    sput-object v1, Lcom/nuance/nmdp/speechkit/util/JobRunner;->_instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    .line 83
    .end local v0    # "instance":Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;
    :cond_2b
    :goto_2b
    monitor-exit v2

    return-void

    .line 81
    :cond_2d
    const/4 v1, 0x0

    const-string/jumbo v3, "JobRunner shutdown when not active"

    invoke-static {v1, v3}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2b

    .line 83
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method
