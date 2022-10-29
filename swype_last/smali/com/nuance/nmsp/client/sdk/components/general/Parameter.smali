.class public Lcom/nuance/nmsp/client/sdk/components/general/Parameter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->a:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->c:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->c:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    return-void
.end method


# virtual methods
.method public clone()Lcom/nuance/nmsp/client/sdk/components/general/Parameter;
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->b:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->b:Ljava/lang/Object;

    check-cast v0, [B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_15
    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->c:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-direct {v1, v2, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->clone()Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->c:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    return-object v0
.end method

.method public getValue()[B
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->b:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->b:Ljava/lang/Object;

    check-cast v0, [B

    :goto_a
    return-object v0

    :cond_b
    const-string/jumbo v0, "THIS IS NOT A STRING PARAMETER!!!"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_a
.end method

.method public getValueRaw()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->b:Ljava/lang/Object;

    return-object v0
.end method
