.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXEnrollmentAudio;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/16 v0, 0x402

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;-><init>(S)V

    const-string/jumbo v0, "data"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXEnrollmentAudio;->put(Ljava/lang/String;[BS)V

    return-void
.end method
