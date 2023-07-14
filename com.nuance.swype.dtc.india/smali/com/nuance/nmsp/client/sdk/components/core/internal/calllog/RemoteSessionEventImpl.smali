.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;
.super Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RegularSessionEventImpl;


# instance fields
.field protected _cancelled:Z

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RegularSessionEventImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->_cancelled:Z

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected buildMetaSeq()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .locals 4

    invoke-super {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RegularSessionEventImpl;->buildMetaSeq()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v0

    const-string/jumbo v1, "RefId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->_cancelled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Cancel"

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method protected genSeqId()V
    .locals 2

    invoke-super {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RegularSessionEventImpl;->genSeqId()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getRootParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->d:Ljava/lang/String;

    return-void
.end method

.method public startNewEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .locals 1

    invoke-static {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    move-result-object v0

    return-object v0
.end method
