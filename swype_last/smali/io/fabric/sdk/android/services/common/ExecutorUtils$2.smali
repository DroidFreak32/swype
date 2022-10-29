.class final Lio/fabric/sdk/android/services/common/ExecutorUtils$2;
.super Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;
.source "ExecutorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/ExecutorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$service:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$serviceName:Ljava/lang/String;

.field final synthetic val$terminationTimeout:J

.field final synthetic val$timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/TimeUnit;)V
    .registers 6

    .prologue
    .line 63
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$serviceName:Ljava/lang/String;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$service:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x2

    iput-wide v0, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$terminationTimeout:J

    iput-object p3, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 6

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Executing shutdown hook for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 69
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$service:Ljava/util/concurrent/ExecutorService;

    iget-wide v2, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$terminationTimeout:J

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 70
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " did not shut down in the allocated time. Requesting immediate shutdown."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 81
    :cond_3a
    :goto_3a
    return-void

    .line 75
    :catch_3b
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$serviceName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/ExecutorUtils$2;->val$service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_3a
.end method
