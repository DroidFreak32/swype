.class final Lcom/nuance/nmsp/client/sdk/components/core/XMode$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/components/core/XMode;->sendXModeMsg([BILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/components/core/XMode;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$1;->a:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$1;->a:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(Lcom/nuance/nmsp/client/sdk/components/core/XMode;S)S

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Session Idle for too long, longer than ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$1;->a:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] ()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_34
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$1;->a:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->state:B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$1;->a:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(Lcom/nuance/nmsp/client/sdk/components/core/XMode;BLjava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a()Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "XMode.sendXModeMsg() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    goto :goto_40
.end method
