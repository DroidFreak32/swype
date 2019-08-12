.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;
.super Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;


# instance fields
.field protected _appSessionEvent:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->b:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-direct {p0, p2, v1, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;-><init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;)V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->e:I

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getSchemaVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getRetentionDays()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->i:I

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->_appSessionEvent:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    iput-object p0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->f:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p6, v1, v1, p5}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;-><init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;)V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->e:I

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->h:Ljava/lang/String;

    iput p4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->i:I

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->_appSessionEvent:Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->d:Ljava/lang/String;

    iput-object p0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    return-void
.end method


# virtual methods
.method protected buildMetaSeq()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .locals 4

    invoke-super {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->buildMetaSeq()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v0

    const-string v1, "Application"

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "SchemaVersion"

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "RetentionDays"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->i:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected genSeqId()V
    .locals 1

    invoke-super {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->genSeqId()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->f:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->f:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRetentionDays()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->i:I

    return v0
.end method

.method public getRootParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceId()I
    .locals 2

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->e:I

    return v0
.end method
