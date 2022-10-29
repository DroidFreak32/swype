.class public Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;
.super Ljava/lang/Object;


# instance fields
.field public final value:S


# direct methods
.method public constructor <init>(S)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;->value:S

    return-void
.end method


# virtual methods
.method public equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z
    .registers 4

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;->value:S

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;->getValue()S

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getValue()S
    .registers 2

    iget-short v0, p0, Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;->value:S

    return v0
.end method
