.class final Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;)V
    .locals 0

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$2;->a:Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    const-string v1, "Executing Message"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$2;->a:Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;->msgHandler:Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$2;->a:Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;

    iget-object v1, v1, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;->msgData:Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$2;->a:Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;

    iget-object v2, v2, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM$Message;->msgSender:Ljava/lang/Thread;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;->handleMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/MessageSystemOEM;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    const-string v1, "Done Executing Message"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
