.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$applicationContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    .line 219
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    if-nez v3, :cond_17

    .line 222
    new-instance v3, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$102(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 225
    :cond_17
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 226
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-gtz v3, :cond_45

    .line 230
    new-instance v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;

    invoke-direct {v2, p0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4$1;-><init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;)V

    .line 246
    .local v2, "task":Ljava/lang/Runnable;
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$600()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    # invokes: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getSessionTimeoutInSeconds()I
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v2, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 253
    .end local v2    # "task":Ljava/lang/Runnable;
    :cond_45
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentActivityAppearTime:J
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$700()J

    move-result-wide v0

    .line 254
    .local v0, "appearTime":J
    cmp-long v3, v0, v4

    if-lez v3, :cond_54

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 257
    .local v4, "timeSpentOnActivityInSeconds":J
    :cond_54
    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$applicationContext:Landroid/content/Context;

    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    invoke-static {v3, v6, v7, v4, v5}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivityTimeSpentEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 264
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V

    .line 265
    return-void
.end method
