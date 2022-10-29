.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTextParam;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;-><init>(Ljava/lang/String;B)V

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTextParam;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXTextParam;->a:Ljava/lang/String;

    return-object v0
.end method
