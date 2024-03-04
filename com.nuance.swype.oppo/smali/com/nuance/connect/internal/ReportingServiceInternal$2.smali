.class Lcom/nuance/connect/internal/ReportingServiceInternal$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ReportingServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReportingHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 4

    sget-object v0, Lcom/nuance/connect/internal/ReportingServiceInternal$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ReportingServiceInternal - caught unexpected message: "

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_SET_ALLOWED_REPORTING_METRICS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$300(Lcom/nuance/connect/internal/ReportingServiceInternal;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {v2, v0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$402(Lcom/nuance/connect/internal/ReportingServiceInternal;Ljava/util/Set;)Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$500(Lcom/nuance/connect/internal/ReportingServiceInternal;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_REPORTING_TRANSMISSION_SUCCESS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$600(Lcom/nuance/connect/internal/ReportingServiceInternal;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ReportingService$Callback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ReportingService$Callback;->onTransmission(I)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "MESSAGE_HOST_REPORTING_TRANSMISSION_FAILURE"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$600(Lcom/nuance/connect/internal/ReportingServiceInternal;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ReportingService$Callback;

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Lcom/nuance/connect/api/ReportingService$Callback;->onTransmissionFailure(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    return-void
.end method
