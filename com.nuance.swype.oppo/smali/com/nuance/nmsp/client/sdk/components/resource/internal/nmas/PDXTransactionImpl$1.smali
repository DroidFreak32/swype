.class final Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;S)S

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    const-string v1, "CommandExpired"

    invoke-static {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->b(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    const-string v1, "PDXTransactionImpl.end() timed out waiting for results. "

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->c(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;

    move-result-object v1

    const-string v2, "TIMEOUT_CMD"

    invoke-static {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$TransactionLogEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->b(Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;)Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;->PDXCommandEvent(S)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PDXTransactionImpl.run() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTransactionImpl;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "got exp in PDXCommandListener.PDXCommandEvent(TIMED_OUT_WAITING_FOR_RESULT) ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] msg ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method
