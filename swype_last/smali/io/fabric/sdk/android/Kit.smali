.class public abstract Lio/fabric/sdk/android/Kit;
.super Ljava/lang/Object;
.source "Kit.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/fabric/sdk/android/Kit;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public fabric:Lio/fabric/sdk/android/Fabric;

.field public idManager:Lio/fabric/sdk/android/services/common/IdManager;

.field initializationCallback:Lio/fabric/sdk/android/InitializationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/InitializationCallback",
            "<TResult;>;"
        }
    .end annotation
.end field

.field public initializationTask:Lio/fabric/sdk/android/InitializationTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/InitializationTask",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lio/fabric/sdk/android/InitializationTask;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/InitializationTask;-><init>(Lio/fabric/sdk/android/Kit;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    .line 27
    return-void
.end method

.method private containsAnnotatedDependency(Lio/fabric/sdk/android/Kit;)Z
    .registers 8
    .param p1, "target"    # Lio/fabric/sdk/android/Kit;

    .prologue
    .line 141
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lio/fabric/sdk/android/services/concurrency/DependsOn;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lio/fabric/sdk/android/services/concurrency/DependsOn;

    .line 142
    .local v1, "dependsOn":Lio/fabric/sdk/android/services/concurrency/DependsOn;
    if-eqz v1, :cond_27

    .line 143
    invoke-interface {v1}, Lio/fabric/sdk/android/services/concurrency/DependsOn;->value()[Ljava/lang/Class;

    move-result-object v0

    .line 144
    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_14
    if-ge v2, v3, :cond_27

    aget-object v4, v0, v2

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 146
    const/4 v4, 0x1

    .line 150
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_23
    return v4

    .line 144
    .restart local v0    # "arr$":[Ljava/lang/Class;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 150
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_27
    const/4 v4, 0x0

    goto :goto_23
.end method

.method private hasAnnotatedDependency()Z
    .registers 3

    .prologue
    .line 158
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/fabric/sdk/android/services/concurrency/DependsOn;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/DependsOn;

    .line 159
    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 16
    check-cast p1, Lio/fabric/sdk/android/Kit;

    .line 3123
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/Kit;->containsAnnotatedDependency(Lio/fabric/sdk/android/Kit;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3130
    :cond_a
    :goto_a
    return v0

    .line 3125
    :cond_b
    invoke-direct {p1, p0}, Lio/fabric/sdk/android/Kit;->containsAnnotatedDependency(Lio/fabric/sdk/android/Kit;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v0, v1

    .line 3126
    goto :goto_a

    .line 3127
    :cond_13
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;->hasAnnotatedDependency()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-direct {p1}, Lio/fabric/sdk/android/Kit;->hasAnnotatedDependency()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3129
    :cond_1f
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;->hasAnnotatedDependency()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-direct {p1}, Lio/fabric/sdk/android/Kit;->hasAnnotatedDependency()Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    .line 3130
    goto :goto_a

    .line 3132
    :cond_2d
    const/4 v0, 0x0

    .line 16
    goto :goto_a
.end method

.method public abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public final getPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".Fabric"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method final initialize()V
    .registers 6

    .prologue
    .line 49
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    iget-object v1, p0, Lio/fabric/sdk/android/Kit;->fabric:Lio/fabric/sdk/android/Fabric;

    .line 1478
    iget-object v1, v1, Lio/fabric/sdk/android/Fabric;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 49
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 2025
    new-instance v3, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;

    invoke-direct {v3, v1, v0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;-><init>(Ljava/util/concurrent/Executor;Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;)V

    .line 2579
    iget-object v1, v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->status:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    sget-object v4, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->PENDING:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    if-eq v1, v4, :cond_25

    .line 2580
    sget-object v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$4;->$SwitchMap$io$fabric$sdk$android$services$concurrency$AsyncTask$Status:[I

    iget-object v4, v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->status:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    invoke-virtual {v4}, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_48

    .line 2592
    :cond_25
    sget-object v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->RUNNING:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    iput-object v1, v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->status:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    .line 2594
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->onPreExecute()V

    .line 2596
    iget-object v1, v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->worker:Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;

    iput-object v2, v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$WorkerRunnable;->params:[Ljava/lang/Object;

    .line 2597
    iget-object v0, v0, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->future:Ljava/util/concurrent/FutureTask;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void

    .line 2582
    :pswitch_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2585
    :pswitch_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2580
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_36
        :pswitch_3f
    .end packed-switch
.end method

.method final injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/Fabric;Lio/fabric/sdk/android/InitializationCallback;Lio/fabric/sdk/android/services/common/IdManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fabric"    # Lio/fabric/sdk/android/Fabric;
    .param p4, "idManager"    # Lio/fabric/sdk/android/services/common/IdManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/Fabric;",
            "Lio/fabric/sdk/android/InitializationCallback",
            "<TResult;>;",
            "Lio/fabric/sdk/android/services/common/IdManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    .local p3, "callback":Lio/fabric/sdk/android/InitializationCallback;, "Lio/fabric/sdk/android/InitializationCallback<TResult;>;"
    iput-object p2, p0, Lio/fabric/sdk/android/Kit;->fabric:Lio/fabric/sdk/android/Fabric;

    .line 40
    new-instance v0, Lio/fabric/sdk/android/FabricContext;

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lio/fabric/sdk/android/FabricContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lio/fabric/sdk/android/Kit;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    .line 42
    iput-object p4, p0, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 43
    return-void
.end method

.method public onPreExecute()Z
    .registers 2

    .prologue
    .line 58
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    const/4 v0, 0x1

    return v0
.end method
