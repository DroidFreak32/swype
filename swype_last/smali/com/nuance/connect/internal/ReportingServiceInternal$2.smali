.class Lcom/nuance/connect/internal/ReportingServiceInternal$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ReportingServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ReportingHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .registers 4

    # getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_8
    # getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    # getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 9

    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/connect/internal/ReportingServiceInternal$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_a4

    # getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ReportingServiceInternal - caught unexpected message: "

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    :goto_26
    return-void

    :pswitch_27
    # getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "MESSAGE_HOST_SET_ALLOWED_REPORTING_METRICS"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedPoints:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$300(Lcom/nuance/connect/internal/ReportingServiceInternal;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    :try_start_38
    iget-object v2, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    # setter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->allowedServerPoints:Ljava/util/Set;
    invoke-static {v2, v0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$402(Lcom/nuance/connect/internal/ReportingServiceInternal;Ljava/util/Set;)Ljava/util/Set;

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_51

    iget-object v0, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ReportingServiceInternal;->recalculateAllowedDataPoints()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$500(Lcom/nuance/connect/internal/ReportingServiceInternal;)V

    goto :goto_26

    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0

    :pswitch_54
    # getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_HOST_REPORTING_TRANSMISSION_SUCCESS"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ReportingServiceInternal;->getLoopableCallbackSet()[Lcom/nuance/connect/api/ReportingService$Callback;
    invoke-static {v2}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$600(Lcom/nuance/connect/internal/ReportingServiceInternal;)[Lcom/nuance/connect/api/ReportingService$Callback;

    move-result-object v2

    array-length v3, v2

    :goto_70
    if-ge v0, v3, :cond_26

    aget-object v4, v2, v0

    invoke-interface {v4, v1}, Lcom/nuance/connect/api/ReportingService$Callback;->onTransmission(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :pswitch_7a
    # getter for: Lcom/nuance/connect/internal/ReportingServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$200()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE_HOST_REPORTING_TRANSMISSION_FAILURE"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/internal/ReportingServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ReportingServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ReportingServiceInternal;->getLoopableCallbackSet()[Lcom/nuance/connect/api/ReportingService$Callback;
    invoke-static {v2}, Lcom/nuance/connect/internal/ReportingServiceInternal;->access$600(Lcom/nuance/connect/internal/ReportingServiceInternal;)[Lcom/nuance/connect/api/ReportingService$Callback;

    move-result-object v2

    array-length v3, v2

    :goto_96
    if-ge v0, v3, :cond_26

    aget-object v4, v2, v0

    const-string/jumbo v5, ""

    invoke-interface {v4, v1, v5}, Lcom/nuance/connect/api/ReportingService$Callback;->onTransmissionFailure(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_27
        :pswitch_54
        :pswitch_7a
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .registers 1

    return-void
.end method
