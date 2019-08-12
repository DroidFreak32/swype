.class Lcom/nuance/swypeconnect/ac/ACReportingService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/ReportingService$Callback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

.field private transmissionAttempt:I


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACReportingService;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->transmissionAttempt:I

    return-void
.end method


# virtual methods
.method public allowedPoints(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->allowedPoints(Ljava/util/Set;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    return-void
.end method

.method public onClear(I)V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->onClear(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    return-void
.end method

.method public onLoggingFailure(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-static {p3}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->from(Landroid/os/Bundle;)Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;

    move-result-object v2

    invoke-interface {v0, p1, p2, v2}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->onLoggingFailure(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    return-void
.end method

.method public onLoggingSuccess(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;->from(Landroid/os/Bundle;)Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->onLoggingSuccess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    return-void
.end method

.method public onTransmission(I)V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->onTransmission(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->transmissionAttempt:I

    return-void
.end method

.method public onTransmissionFailure(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v2}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$300(Lcom/nuance/swypeconnect/ac/ACReportingService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;->onTransmissionFailure(ILjava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$2;->$SwitchMap$com$nuance$swypeconnect$ac$ACReportingService$TransmitStrategy:[I

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService;->access$400(Lcom/nuance/swypeconnect/ac/ACReportingService;)Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->clearData()V

    :goto_1
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->transmissionAttempt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->transmissionAttempt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->sendData()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->clearData()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingService$1;->transmissionAttempt:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
