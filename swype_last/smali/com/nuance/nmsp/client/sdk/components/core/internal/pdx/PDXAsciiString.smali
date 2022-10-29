.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;
.super Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;-><init>(S)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toByteArray()[B
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXAsciiString;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXClass;->toByteArray([B)[B

    move-result-object v0

    return-object v0
.end method
