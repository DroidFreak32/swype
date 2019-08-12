.class Lcom/nuance/connect/service/ConnectClient$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/16 v10, 0x2710

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$500(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v6

    monitor-enter v6

    const-wide v2, 0x7fffffffffffffffL

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$500(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$500(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v2}, Lcom/nuance/connect/service/ConnectClient;->access$600(Lcom/nuance/connect/service/ConnectClient;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long/2addr v10, v4

    cmp-long v0, v8, v10

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$700(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/comm/CommandQueue;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$700(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/comm/CommandQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$300(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Alarm too soon... delaying shutdown time["

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "] min["

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "]"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v1}, Lcom/nuance/connect/service/ConnectClient;->access$400(Lcom/nuance/connect/service/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    monitor-exit v6

    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v1}, Lcom/nuance/connect/service/ConnectClient;->access$500(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$300(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Sending shutdown message... time["

    invoke-static {v8, v9}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "] now["

    invoke-static {v4, v5}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "]"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ON_SERVICE_SHUTDOWN:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-static {v1}, Lcom/nuance/connect/service/ConnectClient;->access$400(Lcom/nuance/connect/service/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    move-wide v0, v2

    goto/16 :goto_1
.end method
