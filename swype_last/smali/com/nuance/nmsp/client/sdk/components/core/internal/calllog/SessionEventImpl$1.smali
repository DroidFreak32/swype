.class final Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->createRemoteChildEvent(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)V
    .registers 3

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final committed(Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;->committed(Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;)V

    :cond_9
    return-void
.end method
