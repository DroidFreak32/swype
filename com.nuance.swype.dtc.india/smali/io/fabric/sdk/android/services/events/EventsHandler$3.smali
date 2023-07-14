.class final Lio/fabric/sdk/android/services/events/EventsHandler$3;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/events/EventsHandler;->onRollOver$552c4e01()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/events/EventsHandler;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/events/EventsHandler;)V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$3;, "Lio/fabric/sdk/android/services/events/EventsHandler.3;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$3;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 66
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$3;, "Lio/fabric/sdk/android/services/events/EventsHandler.3;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler$3;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v0, v0, Lio/fabric/sdk/android/services/events/EventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/EventsStrategy;->sendEvents()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler$3;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v0, v0, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    const-string/jumbo v1, "Failed to send events files."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError$43da9ce8(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
