.class public abstract Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;
.super Ljava/lang/Object;
.source "EnabledEventsStrategy.java"

# interfaces
.implements Lio/fabric/sdk/android/services/events/EventsStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/events/EventsStrategy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field protected final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final filesManager:Lio/fabric/sdk/android/services/events/EventsFilesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/events/EventsFilesManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected volatile rolloverIntervalSeconds:I

.field protected final scheduledRolloverFutureRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lio/fabric/sdk/android/services/events/EventsFilesManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/fabric/sdk/android/services/events/EventsFilesManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/EnabledEventsStrategy<TT;>;"
    .local p3, "filesManager":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->rolloverIntervalSeconds:I

    .line 33
    iput-object p1, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    iput-object p3, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->filesManager:Lio/fabric/sdk/android/services/events/EventsFilesManager;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->scheduledRolloverFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    return-void
.end method

.method private scheduleTimeBasedFileRollOver(II)V
    .locals 8
    .param p1, "initialDelaySecs"    # I
    .param p2, "frequencySecs"    # I

    .prologue
    .line 107
    .local p0, "this":Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/EnabledEventsStrategy<TT;>;"
    :try_start_0
    new-instance v1, Lio/fabric/sdk/android/services/events/TimeBasedFileRollOverRunnable;

    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    invoke-direct {v1, v0, p0}, Lio/fabric/sdk/android/services/events/TimeBasedFileRollOverRunnable;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/events/FileRollOverManager;)V

    .line 109
    .local v1, "rollOverRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Scheduling time based file roll over every "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V

    .line 111
    iget-object v7, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->scheduledRolloverFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "rollOverRunnable":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    const-string/jumbo v2, "Failed to schedule time based file roll over"

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError$43da9ce8(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final cancelTimeBasedFileRollOver()V
    .locals 2

    .prologue
    .line 121
    .local p0, "this":Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/EnabledEventsStrategy<TT;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->scheduledRolloverFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V

    .line 125
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->scheduledRolloverFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 126
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->scheduledRolloverFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method public final configureRollover(I)V
    .locals 2
    .param p1, "rolloverIntervalSeconds"    # I

    .prologue
    .line 131
    .local p0, "this":Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/EnabledEventsStrategy<TT;>;"
    iput p1, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->rolloverIntervalSeconds:I

    .line 132
    const/4 v0, 0x0

    iget v1, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->rolloverIntervalSeconds:I

    invoke-direct {p0, v0, v1}, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->scheduleTimeBasedFileRollOver(II)V

    .line 133
    return-void
.end method

.method public final deleteAllEvents()V
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/EnabledEventsStrategy<TT;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->filesManager:Lio/fabric/sdk/android/services/events/EventsFilesManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->deleteAllEventsFiles()V

    .line 138
    return-void
.end method

.method public final recordEvent(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/EnabledEventsStrategy<TT;>;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V

    .line 145
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->filesManager:Lio/fabric/sdk/android/services/events/EventsFilesManager;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->writeEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2041
    :goto_0
    iget v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->rolloverIntervalSeconds:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 2043
    :goto_1
    iget-object v3, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->scheduledRolloverFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2045
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2046
    iget v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->rolloverIntervalSeconds:I

    iget v1, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->rolloverIntervalSeconds:I

    invoke-direct {p0, v0, v1}, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->scheduleTimeBasedFileRollOver(II)V

    .line 150
    :cond_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    const-string/jumbo v3, "Failed to write event."

    invoke-static {v0, v3}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError$43da9ce8(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2041
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2043
    goto :goto_2
.end method

.method public final rollFileOver()Z
    .locals 2

    .prologue
    .line 155
    .local p0, "this":Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/EnabledEventsStrategy<TT;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->filesManager:Lio/fabric/sdk/android/services/events/EventsFilesManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->rollFileOver()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 159
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    const-string/jumbo v1, "Failed to roll file over."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError$43da9ce8(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sendEvents()V
    .locals 10

    .prologue
    .local p0, "this":Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;, "Lio/fabric/sdk/android/services/events/EnabledEventsStrategy<TT;>;"
    const/4 v1, 0x0

    .line 102
    .line 1060
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->getFilesSender()Lio/fabric/sdk/android/services/events/FilesSender;

    move-result-object v3

    .line 1061
    if-nez v3, :cond_1

    .line 1062
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V

    .line 1070
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->filesManager:Lio/fabric/sdk/android/services/events/EventsFilesManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->getBatchOfFilesToSend()Ljava/util/List;

    move-result-object v0

    .line 1073
    :try_start_0
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "attempt to send batch of %d files"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled$5ffc00fd(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    move v0, v1

    .line 1076
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1077
    invoke-interface {v3, v2}, Lio/fabric/sdk/android/services/events/FilesSender;->send(Ljava/util/List;)Z

    move-result v4

    .line 1079
    if-eqz v4, :cond_2

    .line 1080
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    add-int/2addr v1, v0

    .line 1081
    :try_start_2
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->filesManager:Lio/fabric/sdk/android/services/events/EventsFilesManager;

    invoke-virtual {v0, v2}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->deleteSentFiles(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 1084
    :cond_2
    if-eqz v4, :cond_3

    .line 1088
    :try_start_3
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->filesManager:Lio/fabric/sdk/android/services/events/EventsFilesManager;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->getBatchOfFilesToSend()Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 1089
    goto :goto_1

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    :goto_2
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to send batch of analytics files to server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError$43da9ce8(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 1095
    :cond_3
    if-nez v0, :cond_0

    .line 1096
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EnabledEventsStrategy;->filesManager:Lio/fabric/sdk/android/services/events/EventsFilesManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->deleteOldestInRollOverIfOverMax()V

    goto :goto_0

    .line 1090
    :catch_1
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_2
.end method
