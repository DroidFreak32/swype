.class final Lcom/nuance/nmsp/client/sdk/components/core/XMode$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/components/core/XMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/components/core/XMode;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/components/core/XMode;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$4;->a:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final seqIdGenerated(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/XMode$4;->a:Lcom/nuance/nmsp/client/sdk/components/core/XMode;

    const/4 v1, 0x7

    invoke-static {v0, v1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/XMode;->a(Lcom/nuance/nmsp/client/sdk/components/core/XMode;BLjava/lang/Object;)V

    return-void
.end method
