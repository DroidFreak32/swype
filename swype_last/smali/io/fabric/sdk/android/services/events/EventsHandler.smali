.class public abstract Lio/fabric/sdk/android/services/events/EventsHandler;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Lio/fabric/sdk/android/services/events/EventsStorageListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/events/EventsStorageListener;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field public strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/events/EventsStrategy",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/events/EventsStrategy;Lio/fabric/sdk/android/services/events/EventsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "filesManager"    # Lio/fabric/sdk/android/services/events/EventsFilesManager;
    .param p4, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/events/EventsStrategy",
            "<TT;>;",
            "Lio/fabric/sdk/android/services/events/EventsFilesManager;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    .local p2, "strategy":Lio/fabric/sdk/android/services/events/EventsStrategy;, "Lio/fabric/sdk/android/services/events/EventsStrategy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    .line 22
    iput-object p4, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    iput-object p2, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    .line 25
    invoke-virtual {p3, p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->registerRollOverListener(Lio/fabric/sdk/android/services/events/EventsStorageListener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final executeAsync(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 105
    :goto_5
    return-void

    .line 103
    :catch_6
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    const-string/jumbo v1, "Failed to submit events task"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError$43da9ce8(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public abstract getDisabledEventsStrategy()Lio/fabric/sdk/android/services/events/EventsStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/fabric/sdk/android/services/events/EventsStrategy",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final onRollOver$552c4e01()V
    .registers 2

    .prologue
    .line 62
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    new-instance v0, Lio/fabric/sdk/android/services/events/EventsHandler$3;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/events/EventsHandler$3;-><init>(Lio/fabric/sdk/android/services/events/EventsHandler;)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/events/EventsHandler;->executeAsync(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public final recordEventAsync(Ljava/lang/Object;Z)V
    .registers 4
    .param p2, "sendImmediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/fabric/sdk/android/services/events/EventsHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lio/fabric/sdk/android/services/events/EventsHandler$1;-><init>(Lio/fabric/sdk/android/services/events/EventsHandler;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/events/EventsHandler;->executeAsync(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public final recordEventSync(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/fabric/sdk/android/services/events/EventsHandler$2;

    invoke-direct {v0, p0, p1}, Lio/fabric/sdk/android/services/events/EventsHandler$2;-><init>(Lio/fabric/sdk/android/services/events/EventsHandler;Ljava/lang/Object;)V

    .line 1093
    :try_start_5
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    .line 1096
    :goto_e
    return-void

    .line 1095
    :catch_f
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    const-string/jumbo v1, "Failed to run events task"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError$43da9ce8(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_e
.end method
