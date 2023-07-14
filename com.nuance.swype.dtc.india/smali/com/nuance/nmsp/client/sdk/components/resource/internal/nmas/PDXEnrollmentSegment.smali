.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXEnrollmentSegment;
.super Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0xc1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXMessage;-><init>(S)V

    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXEnrollmentSegment;->put(Ljava/lang/String;Ljava/lang/String;S)V

    const-string/jumbo v0, "buffer_id"

    invoke-virtual {p0, v0, p2, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXEnrollmentSegment;->put(Ljava/lang/String;Ljava/lang/String;S)V

    return-void
.end method
