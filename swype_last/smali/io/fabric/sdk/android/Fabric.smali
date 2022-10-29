.class public Lio/fabric/sdk/android/Fabric;
.super Ljava/lang/Object;
.source "Fabric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/Fabric$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_LOGGER:Lio/fabric/sdk/android/Logger;

.field static volatile singleton:Lio/fabric/sdk/android/Fabric;


# instance fields
.field public activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private activityLifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

.field private final context:Landroid/content/Context;

.field final debuggable:Z

.field public final executorService:Ljava/util/concurrent/ExecutorService;

.field private final idManager:Lio/fabric/sdk/android/services/common/IdManager;

.field private final initializationCallback:Lio/fabric/sdk/android/InitializationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/InitializationCallback",
            "<",
            "Lio/fabric/sdk/android/Fabric;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final kitInitializationCallback:Lio/fabric/sdk/android/InitializationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/InitializationCallback",
            "<*>;"
        }
    .end annotation
.end field

.field private final kits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation
.end field

.field final logger:Lio/fabric/sdk/android/Logger;

.field private final mainHandler:Landroid/os/Handler;

.field private onboarding:Lio/fabric/sdk/android/Onboarding;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lio/fabric/sdk/android/DefaultLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/DefaultLogger;-><init>(B)V

    sput-object v0, Lio/fabric/sdk/android/Fabric;->DEFAULT_LOGGER:Lio/fabric/sdk/android/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;Landroid/os/Handler;Lio/fabric/sdk/android/Logger;ZLio/fabric/sdk/android/InitializationCallback;Lio/fabric/sdk/android/services/common/IdManager;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "threadPoolExecutor"    # Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;
    .param p4, "mainHandler"    # Landroid/os/Handler;
    .param p5, "logger"    # Lio/fabric/sdk/android/Logger;
    .param p6, "debuggable"    # Z
    .param p7, "callback"    # Lio/fabric/sdk/android/InitializationCallback;
    .param p8, "idManager"    # Lio/fabric/sdk/android/services/common/IdManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;",
            "Landroid/os/Handler;",
            "Lio/fabric/sdk/android/Logger;",
            "Z",
            "Lio/fabric/sdk/android/InitializationCallback;",
            "Lio/fabric/sdk/android/services/common/IdManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "kits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/fabric/sdk/android/Kit;>;Lio/fabric/sdk/android/Kit;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric;->context:Landroid/content/Context;

    .line 266
    iput-object p2, p0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    .line 267
    iput-object p3, p0, Lio/fabric/sdk/android/Fabric;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 268
    iput-object p4, p0, Lio/fabric/sdk/android/Fabric;->mainHandler:Landroid/os/Handler;

    .line 269
    iput-object p5, p0, Lio/fabric/sdk/android/Fabric;->logger:Lio/fabric/sdk/android/Logger;

    .line 270
    iput-boolean p6, p0, Lio/fabric/sdk/android/Fabric;->debuggable:Z

    .line 271
    iput-object p7, p0, Lio/fabric/sdk/android/Fabric;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    .line 272
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 273
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 1568
    new-instance v1, Lio/fabric/sdk/android/Fabric$2;

    invoke-direct {v1, p0, v0}, Lio/fabric/sdk/android/Fabric$2;-><init>(Lio/fabric/sdk/android/Fabric;I)V

    .line 273
    iput-object v1, p0, Lio/fabric/sdk/android/Fabric;->kitInitializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    .line 274
    iput-object p8, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 275
    return-void
.end method

.method static synthetic access$100(Lio/fabric/sdk/android/Fabric;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lio/fabric/sdk/android/Fabric;

    .prologue
    .line 30
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lio/fabric/sdk/android/Fabric;)Lio/fabric/sdk/android/InitializationCallback;
    .registers 2
    .param p0, "x0"    # Lio/fabric/sdk/android/Fabric;

    .prologue
    .line 30
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    return-object v0
.end method

.method private static addAnnotatedDependencies(Ljava/util/Map;Lio/fabric/sdk/android/Kit;)V
    .registers 11
    .param p1, "dependentKit"    # Lio/fabric/sdk/android/Kit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "kits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/fabric/sdk/android/Kit;>;Lio/fabric/sdk/android/Kit;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lio/fabric/sdk/android/services/concurrency/DependsOn;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/services/concurrency/DependsOn;

    .line 439
    .local v2, "dependsOn":Lio/fabric/sdk/android/services/concurrency/DependsOn;
    if-eqz v2, :cond_67

    .line 440
    invoke-interface {v2}, Lio/fabric/sdk/android/services/concurrency/DependsOn;->value()[Ljava/lang/Class;

    move-result-object v0

    .line 441
    .local v0, "arr$":[Ljava/lang/Class;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_15
    if-ge v4, v6, :cond_67

    aget-object v1, v0, v4

    .line 442
    .local v1, "dependency":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 444
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/fabric/sdk/android/Kit;

    .line 445
    .local v5, "kit":Lio/fabric/sdk/android/Kit;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 446
    iget-object v7, p1, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    iget-object v8, v5, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    invoke-virtual {v7, v8}, Lio/fabric/sdk/android/InitializationTask;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    goto :goto_27

    .line 452
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "kit":Lio/fabric/sdk/android/Kit;
    .restart local v4    # "i$":I
    :cond_45
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/fabric/sdk/android/Kit;

    .line 453
    if-nez v7, :cond_56

    .line 454
    new-instance v7, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    const-string/jumbo v8, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v7, v8}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 458
    :cond_56
    iget-object v8, p1, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/fabric/sdk/android/Kit;

    iget-object v7, v7, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    invoke-virtual {v8, v7}, Lio/fabric/sdk/android/InitializationTask;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    .line 441
    .end local v4    # "i$":I
    :cond_63
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_15

    .line 463
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "dependency":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_67
    return-void
.end method

.method private static addToKitMap(Ljava/util/Map;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Lio/fabric/sdk/android/Kit;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/Kit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/fabric/sdk/android/Kit;>;Lio/fabric/sdk/android/Kit;>;"
    .local p1, "kits":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/fabric/sdk/android/Kit;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/fabric/sdk/android/Kit;

    .line 559
    .local v1, "kit":Lio/fabric/sdk/android/Kit;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    instance-of v2, v1, Lio/fabric/sdk/android/KitGroup;

    if-eqz v2, :cond_4

    .line 562
    check-cast v1, Lio/fabric/sdk/android/KitGroup;

    .end local v1    # "kit":Lio/fabric/sdk/android/Kit;
    invoke-interface {v1}, Lio/fabric/sdk/android/KitGroup;->getKits()Ljava/util/Collection;

    move-result-object v2

    invoke-static {p0, v2}, Lio/fabric/sdk/android/Fabric;->addToKitMap(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_4

    .line 565
    :cond_25
    return-void
.end method

.method public static getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/fabric/sdk/android/Kit;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 8253
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_d

    .line 8254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8256
    :cond_d
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    .line 502
    iget-object v0, v0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/Kit;

    return-object v0
.end method

.method public static getLogger()Lio/fabric/sdk/android/Logger;
    .registers 1

    .prologue
    .line 509
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_7

    .line 510
    sget-object v0, Lio/fabric/sdk/android/Fabric;->DEFAULT_LOGGER:Lio/fabric/sdk/android/Logger;

    .line 512
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    iget-object v0, v0, Lio/fabric/sdk/android/Fabric;->logger:Lio/fabric/sdk/android/Logger;

    goto :goto_6
.end method

.method private initializeKits(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    .line 5489
    iget-object v5, p0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 385
    .local v4, "providedKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/Kit;>;"
    new-instance v5, Lio/fabric/sdk/android/Onboarding;

    invoke-direct {v5, v4}, Lio/fabric/sdk/android/Onboarding;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lio/fabric/sdk/android/Fabric;->onboarding:Lio/fabric/sdk/android/Onboarding;

    .line 386
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 387
    .local v3, "kits":Ljava/util/List;, "Ljava/util/List<Lio/fabric/sdk/android/Kit;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 391
    iget-object v5, p0, Lio/fabric/sdk/android/Fabric;->onboarding:Lio/fabric/sdk/android/Onboarding;

    sget-object v6, Lio/fabric/sdk/android/InitializationCallback;->EMPTY:Lio/fabric/sdk/android/InitializationCallback;

    iget-object v7, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v5, p1, p0, v6, v7}, Lio/fabric/sdk/android/Onboarding;->injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/Fabric;Lio/fabric/sdk/android/InitializationCallback;Lio/fabric/sdk/android/services/common/IdManager;)V

    .line 392
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/fabric/sdk/android/Kit;

    .line 393
    iget-object v6, p0, Lio/fabric/sdk/android/Fabric;->kitInitializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    iget-object v7, p0, Lio/fabric/sdk/android/Fabric;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v5, p1, p0, v6, v7}, Lio/fabric/sdk/android/Kit;->injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/Fabric;Lio/fabric/sdk/android/InitializationCallback;Lio/fabric/sdk/android/services/common/IdManager;)V

    goto :goto_22

    .line 398
    :cond_36
    iget-object v5, p0, Lio/fabric/sdk/android/Fabric;->onboarding:Lio/fabric/sdk/android/Onboarding;

    invoke-virtual {v5}, Lio/fabric/sdk/android/Onboarding;->initialize()V

    .line 402
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Lio/fabric/sdk/android/Logger;->isLoggable$505cff18(I)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Initializing io.fabric.sdk.android:fabric [Version: 1.2.0.37], with the following kits:\n"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .local v1, "initInfo":Ljava/lang/StringBuilder;
    :goto_4e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/Kit;

    .line 413
    .local v2, "kit":Lio/fabric/sdk/android/Kit;
    iget-object v5, v2, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    iget-object v6, p0, Lio/fabric/sdk/android/Fabric;->onboarding:Lio/fabric/sdk/android/Onboarding;

    iget-object v6, v6, Lio/fabric/sdk/android/Onboarding;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    invoke-virtual {v5, v6}, Lio/fabric/sdk/android/InitializationTask;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    .line 415
    iget-object v5, p0, Lio/fabric/sdk/android/Fabric;->kits:Ljava/util/Map;

    invoke-static {v5, v2}, Lio/fabric/sdk/android/Fabric;->addAnnotatedDependencies(Ljava/util/Map;Lio/fabric/sdk/android/Kit;)V

    .line 417
    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->initialize()V

    .line 419
    if-eqz v1, :cond_52

    .line 420
    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " [Version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 409
    .end local v1    # "initInfo":Ljava/lang/StringBuilder;
    .end local v2    # "kit":Lio/fabric/sdk/android/Kit;
    :cond_8f
    const/4 v1, 0x0

    .restart local v1    # "initInfo":Ljava/lang/StringBuilder;
    goto :goto_4e

    .line 427
    :cond_91
    if-eqz v1, :cond_96

    .line 428
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 430
    :cond_96
    return-void
.end method

.method public static isDebuggable()Z
    .registers 1

    .prologue
    .line 519
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_6

    .line 520
    const/4 v0, 0x0

    .line 522
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    iget-boolean v0, v0, Lio/fabric/sdk/android/Fabric;->debuggable:Z

    goto :goto_5
.end method

.method public static varargs with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "kits"    # [Lio/fabric/sdk/android/Kit;

    .prologue
    .line 289
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_d9

    .line 290
    const-class v9, Lio/fabric/sdk/android/Fabric;

    monitor-enter v9

    .line 291
    :try_start_7
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    if-nez v0, :cond_d8

    .line 292
    new-instance v7, Lio/fabric/sdk/android/Fabric$Builder;

    invoke-direct {v7, p0}, Lio/fabric/sdk/android/Fabric$Builder;-><init>(Landroid/content/Context;)V

    .line 2091
    iget-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    if-eqz v0, :cond_20

    .line 2092
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Kits already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :catchall_1d
    move-exception v0

    monitor-exit v9
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0

    .line 2095
    :cond_20
    :try_start_20
    iput-object p1, v7, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    .line 2209
    iget-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    if-nez v0, :cond_2f

    .line 2210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Kits must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2213
    :cond_2f
    iget-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    if-nez v0, :cond_39

    .line 2214
    invoke-static {}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->create()Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    move-result-object v0

    iput-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    .line 2217
    :cond_39
    iget-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->handler:Landroid/os/Handler;

    if-nez v0, :cond_48

    .line 2218
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->handler:Landroid/os/Handler;

    .line 2221
    :cond_48
    iget-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    if-nez v0, :cond_57

    .line 2222
    iget-boolean v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->debuggable:Z

    if-eqz v0, :cond_dc

    .line 2223
    new-instance v0, Lio/fabric/sdk/android/DefaultLogger;

    invoke-direct {v0}, Lio/fabric/sdk/android/DefaultLogger;-><init>()V

    iput-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    .line 2230
    :cond_57
    :goto_57
    iget-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    if-nez v0, :cond_63

    .line 2231
    iget-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    .line 2234
    :cond_63
    iget-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    if-nez v0, :cond_6b

    .line 2235
    sget-object v0, Lio/fabric/sdk/android/InitializationCallback;->EMPTY:Lio/fabric/sdk/android/InitializationCallback;

    iput-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    .line 2238
    :cond_6b
    iget-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3547
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3550
    invoke-static {v2, v0}, Lio/fabric/sdk/android/Fabric;->addToKitMap(Ljava/util/Map;Ljava/util/Collection;)V

    .line 2240
    new-instance v8, Lio/fabric/sdk/android/services/common/IdManager;

    iget-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    iget-object v1, v7, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    iget-object v3, v7, Lio/fabric/sdk/android/Fabric$Builder;->appInstallIdentifier:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v8, v0, v1, v3, v4}, Lio/fabric/sdk/android/services/common/IdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 2243
    new-instance v0, Lio/fabric/sdk/android/Fabric;

    iget-object v1, v7, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    iget-object v3, v7, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    iget-object v4, v7, Lio/fabric/sdk/android/Fabric$Builder;->handler:Landroid/os/Handler;

    iget-object v5, v7, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    iget-boolean v6, v7, Lio/fabric/sdk/android/Fabric$Builder;->debuggable:Z

    iget-object v7, v7, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    invoke-direct/range {v0 .. v8}, Lio/fabric/sdk/android/Fabric;-><init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;Landroid/os/Handler;Lio/fabric/sdk/android/Logger;ZLio/fabric/sdk/android/InitializationCallback;Lio/fabric/sdk/android/services/common/IdManager;)V

    .line 4320
    sput-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    .line 4344
    iget-object v1, v0, Lio/fabric/sdk/android/Fabric;->context:Landroid/content/Context;

    .line 4466
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_e6

    .line 4467
    check-cast v1, Landroid/app/Activity;

    .line 4344
    :goto_a7
    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/Fabric;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;

    .line 4345
    new-instance v1, Lio/fabric/sdk/android/ActivityLifecycleManager;

    iget-object v2, v0, Lio/fabric/sdk/android/Fabric;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/ActivityLifecycleManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lio/fabric/sdk/android/Fabric;->activityLifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

    .line 4346
    iget-object v1, v0, Lio/fabric/sdk/android/Fabric;->activityLifecycleManager:Lio/fabric/sdk/android/ActivityLifecycleManager;

    new-instance v2, Lio/fabric/sdk/android/Fabric$1;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/Fabric$1;-><init>(Lio/fabric/sdk/android/Fabric;)V

    .line 5051
    iget-object v3, v1, Lio/fabric/sdk/android/ActivityLifecycleManager;->callbacksWrapper:Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    if-eqz v3, :cond_d3

    iget-object v1, v1, Lio/fabric/sdk/android/ActivityLifecycleManager;->callbacksWrapper:Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    .line 5083
    iget-object v3, v1, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->application:Landroid/app/Application;

    if-eqz v3, :cond_d3

    .line 5084
    new-instance v3, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;

    invoke-direct {v3, v1, v2}, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;-><init>(Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;)V

    .line 5123
    iget-object v2, v1, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->application:Landroid/app/Application;

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 5124
    iget-object v1, v1, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->registeredCallbacks:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4364
    :cond_d3
    iget-object v1, v0, Lio/fabric/sdk/android/Fabric;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/Fabric;->initializeKits(Landroid/content/Context;)V

    .line 294
    :cond_d8
    monitor-exit v9
    :try_end_d9
    .catchall {:try_start_20 .. :try_end_d9} :catchall_1d

    .line 296
    :cond_d9
    sget-object v0, Lio/fabric/sdk/android/Fabric;->singleton:Lio/fabric/sdk/android/Fabric;

    return-object v0

    .line 2225
    :cond_dc
    :try_start_dc
    new-instance v0, Lio/fabric/sdk/android/DefaultLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/DefaultLogger;-><init>(B)V

    iput-object v0, v7, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;
    :try_end_e4
    .catchall {:try_start_dc .. :try_end_e4} :catchall_1d

    goto/16 :goto_57

    .line 4469
    :cond_e6
    const/4 v1, 0x0

    goto :goto_a7
.end method


# virtual methods
.method public final setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 328
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric;->activity:Ljava/lang/ref/WeakReference;

    .line 329
    return-object p0
.end method
