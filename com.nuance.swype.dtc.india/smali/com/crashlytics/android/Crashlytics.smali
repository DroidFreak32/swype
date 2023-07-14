.class public Lcom/crashlytics/android/Crashlytics;
.super Lio/fabric/sdk/android/Kit;
.source "Crashlytics.java"

# interfaces
.implements Lio/fabric/sdk/android/KitGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/Crashlytics$OptInLatch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/fabric/sdk/android/KitGroup;"
    }
.end annotation

.annotation runtime Lio/fabric/sdk/android/services/concurrency/DependsOn;
    value = {
        Lcom/crashlytics/android/internal/CrashEventDataProvider;
    }
.end annotation


# instance fields
.field final attributes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buildId:Ljava/lang/String;

.field private delay:F

.field private disabled:Z

.field private executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

.field externalCrashEventDataProvider:Lcom/crashlytics/android/internal/CrashEventDataProvider;

.field handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

.field private httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

.field private initializationMarkerFile:Ljava/io/File;

.field installerPackageName:Ljava/lang/String;

.field private final kits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private listener:Lcom/crashlytics/android/CrashlyticsListener;

.field packageName:Ljava/lang/String;

.field private final pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

.field private final startTime:J

.field userEmail:Ljava/lang/String;

.field userId:Ljava/lang/String;

.field userName:Ljava/lang/String;

.field versionCode:Ljava/lang/String;

.field versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/Crashlytics;-><init>(B)V

    .line 203
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2
    .param p1, "delay"    # B

    .prologue
    .line 207
    const-string/jumbo v0, "Crashlytics Exception Handler"

    .line 2022
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/ExecutorUtils;->getNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 2023
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 2024
    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/ExecutorUtils;->addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 207
    invoke-direct {p0, v1}, Lcom/crashlytics/android/Crashlytics;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 209
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p1, "crashHandlerExecutor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/crashlytics/android/Crashlytics;->userId:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/crashlytics/android/Crashlytics;->userEmail:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/crashlytics/android/Crashlytics;->userName:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/Crashlytics;->startTime:J

    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/crashlytics/android/Crashlytics;->delay:F

    .line 220
    iput-object v2, p0, Lcom/crashlytics/android/Crashlytics;->listener:Lcom/crashlytics/android/CrashlyticsListener;

    .line 221
    iput-object v2, p0, Lcom/crashlytics/android/Crashlytics;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

    .line 222
    iput-boolean v3, p0, Lcom/crashlytics/android/Crashlytics;->disabled:Z

    .line 223
    new-instance v0, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    .line 224
    const/4 v0, 0x2

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/answers/Answers;

    invoke-direct {v1}, Lcom/crashlytics/android/answers/Answers;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Lcom/crashlytics/android/beta/Beta;

    invoke-direct {v2}, Lcom/crashlytics/android/beta/Beta;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->kits:Ljava/util/Collection;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/crashlytics/android/Crashlytics;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/crashlytics/android/Crashlytics;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->initializationMarkerFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/crashlytics/android/Crashlytics;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->getSendDecisionFromUser(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300$6be4ac93(FI)I
    .locals 1
    .param p0, "x1"    # F
    .param p1, "x2"    # I

    .prologue
    .line 65
    .line 17112
    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 65
    return v0
.end method

.method private finishInitSynchronously()V
    .locals 8

    .prologue
    .line 719
    new-instance v0, Lcom/crashlytics/android/Crashlytics$1;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/Crashlytics$1;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    .line 12164
    .local v0, "callable":Lio/fabric/sdk/android/services/concurrency/PriorityCallable;, "Lio/fabric/sdk/android/services/concurrency/PriorityCallable<Ljava/lang/Void;>;"
    iget-object v5, p0, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    invoke-virtual {v5}, Lio/fabric/sdk/android/InitializationTask;->getDependencies()Ljava/util/Collection;

    move-result-object v5

    .line 731
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/fabric/sdk/android/services/concurrency/Task;

    .line 732
    .local v4, "task":Lio/fabric/sdk/android/services/concurrency/Task;
    invoke-virtual {v0, v4}, Lio/fabric/sdk/android/services/concurrency/PriorityCallable;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    goto :goto_0

    .line 13101
    .end local v4    # "task":Lio/fabric/sdk/android/services/concurrency/Task;
    :cond_0
    iget-object v5, p0, Lio/fabric/sdk/android/Kit;->fabric:Lio/fabric/sdk/android/Fabric;

    .line 13478
    iget-object v5, v5, Lio/fabric/sdk/android/Fabric;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 735
    invoke-interface {v5, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 737
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 742
    const-wide/16 v6, 0x4

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 750
    :goto_1
    return-void

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string/jumbo v6, "Fabric"

    const-string/jumbo v7, "Crashlytics was interrupted during initialization."

    invoke-interface {v5, v6, v7, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 745
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 746
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string/jumbo v6, "Fabric"

    const-string/jumbo v7, "Problem encountered during Crashlytics initialization."

    invoke-interface {v5, v6, v7, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 747
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 748
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string/jumbo v6, "Fabric"

    const-string/jumbo v7, "Crashlytics timed out during initialization."

    invoke-interface {v5, v6, v7, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/crashlytics/android/Crashlytics;
    .locals 5

    .prologue
    .line 419
    :try_start_0
    const-class v1, Lcom/crashlytics/android/Crashlytics;

    invoke-static {v1}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/Crashlytics;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    throw v0
.end method

.method private getSendDecisionFromUser(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)Z
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "promptData"    # Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    .prologue
    .line 986
    new-instance v4, Lcom/crashlytics/android/DialogStringResolver;

    invoke-direct {v4, p1, p2}, Lcom/crashlytics/android/DialogStringResolver;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)V

    .line 990
    .local v4, "stringResolver":Lcom/crashlytics/android/DialogStringResolver;
    new-instance v3, Lcom/crashlytics/android/Crashlytics$OptInLatch;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/crashlytics/android/Crashlytics$OptInLatch;-><init>(Lcom/crashlytics/android/Crashlytics;B)V

    .line 994
    .local v3, "latch":Lcom/crashlytics/android/Crashlytics$OptInLatch;
    move-object v2, p1

    .local v2, "activity":Landroid/app/Activity;
    new-instance v0, Lcom/crashlytics/android/Crashlytics$7;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/Crashlytics$7;-><init>(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lcom/crashlytics/android/Crashlytics$OptInLatch;Lcom/crashlytics/android/DialogStringResolver;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1059
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 15131
    :try_start_0
    iget-object v0, v3, Lcom/crashlytics/android/Crashlytics$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16126
    :goto_0
    iget-boolean v0, v3, Lcom/crashlytics/android/Crashlytics$OptInLatch;->send:Z

    .line 1061
    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getSessionSettingsData()Lio/fabric/sdk/android/services/settings/SessionSettingsData;
    .locals 2

    .prologue
    .line 17038
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->access$100()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v1

    .line 1068
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v0

    .line 1069
    .local v0, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lio/fabric/sdk/android/services/settings/SettingsData;->sessionData:Lio/fabric/sdk/android/services/settings/SessionSettingsData;

    goto :goto_0
.end method

.method private markInitializationComplete()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/Crashlytics$3;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/Crashlytics$3;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 877
    return-void
.end method

.method private onPreExecute(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 241
    iget-boolean v0, p0, Lcom/crashlytics/android/Crashlytics;->disabled:Z

    if-eqz v0, :cond_0

    move v0, v8

    .line 304
    :goto_0
    return v0

    .line 246
    :cond_0
    new-instance v0, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/ApiKey;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 248
    if-nez v0, :cond_1

    move v0, v8

    .line 249
    goto :goto_0

    .line 252
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "Initializing Crashlytics 2.2.2.37"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "initialization_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->initializationMarkerFile:Ljava/io/File;

    .line 256
    const/4 v7, 0x0

    .line 3308
    .local v7, "initializeSynchronously":Z
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/crashlytics/android/CrashlyticsPinningInfoProvider;

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/CrashlyticsPinningInfoProvider;-><init>(Lcom/crashlytics/android/PinningInfoProvider;)V

    .line 3310
    :goto_1
    new-instance v1, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;-><init>(Lio/fabric/sdk/android/Logger;)V

    iput-object v1, p0, Lcom/crashlytics/android/Crashlytics;->httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    .line 3311
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequestFactory;->setPinningInfoProvider(Lio/fabric/sdk/android/services/network/PinningInfoProvider;)V
    :try_end_0
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3314
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->packageName:Ljava/lang/String;

    .line 4087
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 3315
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->installerPackageName:Ljava/lang/String;

    .line 3316
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Installer package name is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3319
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3320
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3321
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/Crashlytics;->versionCode:Ljava/lang/String;

    .line 3322
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string/jumbo v0, "0.0"

    :goto_2
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->versionName:Ljava/lang/String;

    .line 3327
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->buildId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5087
    :goto_3
    :try_start_2
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 3335
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getBluetoothMacAddress()Ljava/lang/String;

    .line 3339
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->buildId:Ljava/lang/String;

    .line 6073
    const-string/jumbo v1, "com.crashlytics.RequireBuildId"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 6788
    new-instance v2, Lcom/crashlytics/android/BuildIdValidator;

    invoke-direct {v2, v0, v1}, Lcom/crashlytics/android/BuildIdValidator;-><init>(Ljava/lang/String;Z)V

    .line 7036
    iget-object v0, v2, Lcom/crashlytics/android/BuildIdValidator;->buildId:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v2, Lcom/crashlytics/android/BuildIdValidator;->requiringBuildId:Z

    if-eqz v0, :cond_4

    .line 7066
    const-string/jumbo v0, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    .line 7039
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7040
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".     |  | "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7041
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7042
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7043
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".   \\ |  | /"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7044
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".    \\    /"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7045
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".     \\  /"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7046
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".      \\/"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7047
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7048
    const-string/jumbo v1, "Fabric"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7049
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7050
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".      /\\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7051
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".     /  \\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7052
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".    /    \\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7053
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".   / |  | \\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7054
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7055
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7056
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7057
    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7059
    new-instance v1, Lcom/crashlytics/android/CrashlyticsMissingDependencyException;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/CrashlyticsMissingDependencyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 297
    :catch_0
    move-exception v6

    .line 299
    .local v6, "e":Lcom/crashlytics/android/CrashlyticsMissingDependencyException;
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    invoke-direct {v0, v6}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3308
    .end local v6    # "e":Lcom/crashlytics/android/CrashlyticsMissingDependencyException;
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3322
    :cond_3
    :try_start_3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 3329
    :catch_1
    move-exception v0

    .line 3330
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Error setting up app properties"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 300
    :catch_2
    move-exception v6

    .line 301
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v0, v1, v2, v6}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v8

    .line 304
    goto/16 :goto_0

    .line 7060
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_5
    iget-boolean v0, v2, Lcom/crashlytics/android/BuildIdValidator;->requiringBuildId:Z

    if-nez v0, :cond_5

    .line 7061
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;
    :try_end_5
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 261
    :cond_5
    :try_start_6
    new-instance v4, Lcom/crashlytics/android/SessionDataWriter;

    .line 7094
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 261
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->buildId:Ljava/lang/String;

    .line 7792
    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->packageName:Ljava/lang/String;

    .line 261
    invoke-direct {v4, v0, v1, v2}, Lcom/crashlytics/android/SessionDataWriter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v4, "sessionDataWriter":Lcom/crashlytics/android/SessionDataWriter;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 264
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    .line 8087
    iget-object v3, p0, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    move-object v5, p0

    .line 264
    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;Lio/fabric/sdk/android/services/common/IdManager;Lcom/crashlytics/android/SessionDataWriter;Lcom/crashlytics/android/Crashlytics;)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    .line 8880
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/Crashlytics$4;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/Crashlytics$4;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 280
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    .line 9452
    iget-object v1, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    new-instance v2, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$10;

    invoke-direct {v2, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$10;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 282
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 283
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_6 .. :try_end_6} :catch_0

    .line 289
    .end local v4    # "sessionDataWriter":Lcom/crashlytics/android/SessionDataWriter;
    :goto_4
    if-eqz v7, :cond_6

    :try_start_7
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->canTryConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics;->finishInitSynchronously()V

    move v0, v8

    .line 294
    goto/16 :goto_0

    .line 284
    :catch_3
    move-exception v6

    .line 285
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "There was a problem installing the exception handler."

    invoke-interface {v0, v1, v2, v6}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    move v0, v9

    .line 296
    goto/16 :goto_0
.end method

.method static recordFatalExceptionEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 771
    const-class v1, Lcom/crashlytics/android/answers/Answers;

    invoke-static {v1}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/Answers;

    .line 772
    .local v0, "answers":Lcom/crashlytics/android/answers/Answers;
    if-eqz v0, :cond_0

    .line 773
    new-instance v1, Lio/fabric/sdk/android/services/common/Crash$FatalException;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/common/Crash$FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->onException(Lio/fabric/sdk/android/services/common/Crash$FatalException;)V

    .line 776
    :cond_0
    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final doInBackground()Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 345
    .line 9846
    iget-object v4, p0, Lcom/crashlytics/android/Crashlytics;->executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    new-instance v5, Lcom/crashlytics/android/Crashlytics$2;

    invoke-direct {v5, p0}, Lcom/crashlytics/android/Crashlytics$2;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    invoke-virtual {v4, v5}, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 346
    iget-object v4, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    .line 10714
    iget-object v5, v4, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    new-instance v6, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$12;

    invoke-direct {v6, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$12;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    invoke-virtual {v5, v6}, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 349
    const/4 v2, 0x1

    .line 11038
    .local v2, "reportingDisabled":Z
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->access$100()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v4

    .line 352
    invoke-virtual {v4}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v3

    .line 354
    .local v3, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    if-nez v3, :cond_0

    .line 355
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v5, "Fabric"

    const-string/jumbo v6, "Received null settings, skipping initialization!"

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics;->markInitializationComplete()V

    .line 392
    .end local v3    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :goto_0
    return-object v7

    .line 359
    .restart local v3    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :cond_0
    :try_start_1
    iget-object v4, v3, Lio/fabric/sdk/android/services/settings/SettingsData;->featuresData:Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

    iget-boolean v4, v4, Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;->collectReports:Z

    if-eqz v4, :cond_1

    .line 360
    const/4 v2, 0x0

    .line 361
    iget-object v4, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    .line 11513
    iget-object v5, v4, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;

    new-instance v6, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$11;

    invoke-direct {v6, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$11;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    invoke-virtual {v5, v6}, Lcom/crashlytics/android/CrashlyticsExecutorServiceWrapper;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 363
    invoke-virtual {p0, v3}, Lcom/crashlytics/android/Crashlytics;->getCreateReportSpiCall(Lio/fabric/sdk/android/services/settings/SettingsData;)Lcom/crashlytics/android/CreateReportSpiCall;

    move-result-object v0

    .line 364
    .local v0, "call":Lcom/crashlytics/android/CreateReportSpiCall;
    if-eqz v0, :cond_3

    .line 365
    new-instance v4, Lcom/crashlytics/android/ReportUploader;

    invoke-direct {v4, v0}, Lcom/crashlytics/android/ReportUploader;-><init>(Lcom/crashlytics/android/CreateReportSpiCall;)V

    iget v5, p0, Lcom/crashlytics/android/Crashlytics;->delay:F

    invoke-virtual {v4, v5}, Lcom/crashlytics/android/ReportUploader;->uploadReports(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    .end local v0    # "call":Lcom/crashlytics/android/CreateReportSpiCall;
    .end local v3    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 375
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics;->markInitializationComplete()V

    goto :goto_0

    .line 367
    .restart local v0    # "call":Lcom/crashlytics/android/CreateReportSpiCall;
    .restart local v3    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :cond_3
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v5, "Fabric"

    const-string/jumbo v6, "Unable to create a call to upload reports."

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 370
    .end local v0    # "call":Lcom/crashlytics/android/CreateReportSpiCall;
    .end local v3    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v5, "Fabric"

    const-string/jumbo v6, "Error dealing with settings"

    invoke-interface {v4, v5, v6, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 377
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 378
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string/jumbo v5, "Fabric"

    const-string/jumbo v6, "Problem encountered during Crashlytics initialization."

    invoke-interface {v4, v5, v6, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 389
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics;->markInitializationComplete()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics;->markInitializationComplete()V

    throw v4
.end method

.method final getCreateReportSpiCall(Lio/fabric/sdk/android/services/settings/SettingsData;)Lcom/crashlytics/android/CreateReportSpiCall;
    .locals 4
    .param p1, "settingsData"    # Lio/fabric/sdk/android/services/settings/SettingsData;

    .prologue
    .line 976
    if-eqz p1, :cond_0

    .line 977
    new-instance v0, Lcom/crashlytics/android/DefaultCreateReportSpiCall;

    .line 14814
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    .line 15094
    iget-object v1, v1, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 14814
    const-string/jumbo v2, "com.crashlytics.ApiEndpoint"

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 977
    iget-object v2, p1, Lio/fabric/sdk/android/services/settings/SettingsData;->appData:Lio/fabric/sdk/android/services/settings/AppSettingsData;

    iget-object v2, v2, Lio/fabric/sdk/android/services/settings/AppSettingsData;->reportsUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics;->httpRequestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/crashlytics/android/DefaultCreateReportSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V

    .line 981
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    const-string/jumbo v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public final getKits()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->kits:Ljava/util/Collection;

    return-object v0
.end method

.method final getSdkDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 927
    new-instance v0, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    const-string/jumbo v0, "2.2.2.37"

    return-object v0
.end method

.method protected final onPreExecute()Z
    .locals 2

    .prologue
    .line 233
    .line 2094
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 234
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/crashlytics/android/Crashlytics;->onPreExecute(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method final shouldPromptUserBeforeSendingCrashReports()Z
    .locals 3

    .prologue
    .line 14038
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->access$100()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    .line 931
    new-instance v1, Lcom/crashlytics/android/Crashlytics$5;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/Crashlytics$5;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/settings/Settings;->withSettings(Lio/fabric/sdk/android/services/settings/Settings$SettingsAccess;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
