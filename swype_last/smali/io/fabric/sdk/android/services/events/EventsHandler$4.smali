.class public final Lio/fabric/sdk/android/services/events/EventsHandler$4;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/events/EventsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/events/EventsHandler;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/events/EventsHandler;)V
    .registers 2

    .prologue
    .line 75
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$4;, "Lio/fabric/sdk/android/services/events/EventsHandler.4;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$4;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 79
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$4;, "Lio/fabric/sdk/android/services/events/EventsHandler.4;"
    :try_start_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$4;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v0, v1, Lio/fabric/sdk/android/services/events/EventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    .line 80
    .local v0, "prevStrategy":Lio/fabric/sdk/android/services/events/EventsStrategy;, "Lio/fabric/sdk/android/services/events/EventsStrategy<TT;>;"
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$4;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsHandler$4;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/events/EventsHandler;->getDisabledEventsStrategy()Lio/fabric/sdk/android/services/events/EventsStrategy;

    move-result-object v2

    iput-object v2, v1, Lio/fabric/sdk/android/services/events/EventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    .line 81
    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/EventsStrategy;->deleteAllEvents()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 85
    .end local v0    # "prevStrategy":Lio/fabric/sdk/android/services/events/EventsStrategy;, "Lio/fabric/sdk/android/services/events/EventsStrategy<TT;>;"
    :goto_11
    return-void

    .line 83
    :catch_12
    move-exception v1

    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$4;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v1, v1, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    const-string/jumbo v2, "Failed to disable events."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError$43da9ce8(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11
.end method
