.class public final Lio/fabric/sdk/android/InitializationTask;
.super Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;
.source "InitializationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final kit:Lio/fabric/sdk/android/Kit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/Kit",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/Kit",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    .local p1, "kit":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;-><init>()V

    .line 17
    iput-object p1, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    .line 18
    return-void
.end method

.method private createAndStartTimingMetric(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/TimingMetric;
    .registers 5
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 75
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    new-instance v0, Lio/fabric/sdk/android/services/common/TimingMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "KitInitialization"

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/common/TimingMetric;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v0, "timingMetric":Lio/fabric/sdk/android/services/common/TimingMetric;
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/TimingMetric;->startMeasuring()V

    .line 78
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground$42af7916()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 11
    .line 1043
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    const-string/jumbo v0, "doInBackground"

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/InitializationTask;->createAndStartTimingMetric(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/TimingMetric;

    move-result-object v1

    .line 1044
    const/4 v0, 0x0

    .line 1440
    iget-object v2, p0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 1045
    if-nez v2, :cond_16

    .line 1046
    iget-object v0, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    .line 1049
    :cond_16
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/TimingMetric;->stopMeasuring()V

    .line 11
    return-object v0
.end method

.method public final getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .registers 2

    .prologue
    .line 70
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/Priority;->HIGH:Lio/fabric/sdk/android/services/concurrency/Priority;

    return-object v0
.end method

.method protected final onCancelled$5d527811()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v3}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Initialization was cancelled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Lio/fabric/sdk/android/InitializationException;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/InitializationException;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "exception":Lio/fabric/sdk/android/InitializationException;
    iget-object v2, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    iget-object v2, v2, Lio/fabric/sdk/android/Kit;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    invoke-interface {v2, v0}, Lio/fabric/sdk/android/InitializationCallback;->failure(Ljava/lang/Exception;)V

    .line 66
    return-void
.end method

.method protected final onPostExecute$5d527811()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    iget-object v0, v0, Lio/fabric/sdk/android/Kit;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    invoke-interface {v0}, Lio/fabric/sdk/android/InitializationCallback;->success$5d527811()V

    .line 57
    return-void
.end method

.method protected final onPreExecute()V
    .registers 7

    .prologue
    .line 22
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    invoke-super {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->onPreExecute()V

    .line 24
    const-string/jumbo v3, "onPreExecute"

    invoke-direct {p0, v3}, Lio/fabric/sdk/android/InitializationTask;->createAndStartTimingMetric(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/TimingMetric;

    move-result-object v2

    .line 27
    .local v2, "timingMetric":Lio/fabric/sdk/android/services/common/TimingMetric;
    :try_start_a
    iget-object v3, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v3}, Lio/fabric/sdk/android/Kit;->onPreExecute()Z
    :try_end_f
    .catch Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException; {:try_start_a .. :try_end_f} :catch_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_23
    .catchall {:try_start_a .. :try_end_f} :catchall_1b

    move-result v1

    .line 34
    .local v1, "result":Z
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/TimingMetric;->stopMeasuring()V

    .line 35
    if-nez v1, :cond_18

    .line 36
    invoke-virtual {p0}, Lio/fabric/sdk/android/InitializationTask;->cancel$138603()Z

    .line 39
    .end local v1    # "result":Z
    :cond_18
    :goto_18
    return-void

    .line 30
    :catch_19
    move-exception v3

    :try_start_1a
    throw v3
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    .line 34
    :catchall_1b
    move-exception v3

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/TimingMetric;->stopMeasuring()V

    .line 36
    invoke-virtual {p0}, Lio/fabric/sdk/android/InitializationTask;->cancel$138603()Z

    throw v3

    .line 31
    :catch_23
    move-exception v0

    .line 32
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_24
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string/jumbo v4, "Fabric"

    const-string/jumbo v5, "Failure onPreExecute()"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_1b

    .line 34
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/TimingMetric;->stopMeasuring()V

    .line 36
    invoke-virtual {p0}, Lio/fabric/sdk/android/InitializationTask;->cancel$138603()Z

    goto :goto_18
.end method
