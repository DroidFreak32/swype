.class public Lcom/facebook/appevents/internal/ActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"


# static fields
.field private static final INCORRECT_IMPL_WARNING:Ljava/lang/String; = "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

.field private static final INTERRUPTION_THRESHOLD_MILLISECONDS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static currentActivityAppearTime:J

.field private static volatile currentFuture:Ljava/util/concurrent/ScheduledFuture;

.field private static volatile currentSession:Lcom/facebook/appevents/internal/SessionInfo;

.field private static foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static tracking:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-class v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .registers 1
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100()Lcom/facebook/appevents/internal/SessionInfo;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;
    .registers 1
    .param p0, "x0"    # Lcom/facebook/appevents/internal/SessionInfo;

    .prologue
    .line 44
    sput-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 44
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getSessionTimeoutInSeconds()I

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$502(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 44
    sput-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700()J
    .registers 2

    .prologue
    .line 44
    sget-wide v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentActivityAppearTime:J

    return-wide v0
.end method

.method private static cancelCurrentTask()V
    .registers 2

    .prologue
    .line 281
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    .line 282
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 285
    :cond_a
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 286
    return-void
.end method

.method public static getCurrentSessionGuid()Ljava/util/UUID;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionId()Ljava/util/UUID;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static getSessionTimeoutInSeconds()I
    .registers 2

    .prologue
    .line 271
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v0

    .line 273
    .local v0, "settings":Lcom/facebook/internal/Utility$FetchedAppSettings;
    if-nez v0, :cond_f

    .line 274
    invoke-static {}, Lcom/facebook/appevents/internal/Constants;->getDefaultAppEventsSessionTimeoutInSeconds()I

    move-result v1

    .line 277
    :goto_e
    return v1

    :cond_f
    invoke-virtual {v0}, Lcom/facebook/internal/Utility$FetchedAppSettings;->getSessionTimeoutInSeconds()I

    move-result v1

    goto :goto_e
.end method

.method public static isTracking()Z
    .registers 1

    .prologue
    .line 108
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static onActivityCreated(Landroid/app/Activity;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, "currentTime":J
    new-instance v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;-><init>(Landroid/app/Activity;J)V

    .line 147
    .local v2, "handleActivityCreate":Ljava/lang/Runnable;
    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method private static onActivityPaused(Landroid/app/Activity;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 200
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    .line 201
    if-gez v5, :cond_16

    .line 204
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 206
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_16
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->cancelCurrentTask()V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 213
    .local v2, "currentTime":J
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 214
    .local v1, "applicationContext":Landroid/content/Context;
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "activityName":Ljava/lang/String;
    new-instance v4, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;-><init>(JLandroid/content/Context;Ljava/lang/String;)V

    .line 267
    .local v4, "handleActivityPaused":Ljava/lang/Runnable;
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method public static onActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 152
    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 153
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->cancelCurrentTask()V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    .local v0, "currentTime":J
    sput-wide v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentActivityAppearTime:J

    .line 156
    new-instance v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;-><init>(Landroid/app/Activity;J)V

    .line 196
    .local v2, "handleActivityResume":Ljava/lang/Runnable;
    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public static startTracking(Landroid/app/Application;Ljava/lang/String;)V
    .registers 5
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 105
    :goto_a
    return-void

    .line 65
    :cond_b
    sput-object p1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$1;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_a
.end method
