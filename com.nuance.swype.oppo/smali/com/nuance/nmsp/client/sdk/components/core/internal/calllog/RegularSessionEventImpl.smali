.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RegularSessionEventImpl;
.super Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    iget-object v1, p1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->b:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;-><init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;)V

    return-void
.end method


# virtual methods
.method protected buildMetaSeq()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .locals 1

    invoke-super {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->buildMetaSeq()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v0

    return-object v0
.end method
