.class public abstract Lcom/nuance/nmsp/client/sdk/common/util/Enum;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/nmsp/client/sdk/common/util/Enum;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    check-cast p1, Lcom/nuance/nmsp/client/sdk/common/util/Enum;

    iget v1, p1, Lcom/nuance/nmsp/client/sdk/common/util/Enum;->a:I

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/common/util/Enum;->a:I

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/common/util/Enum;->a:I

    return v0
.end method
