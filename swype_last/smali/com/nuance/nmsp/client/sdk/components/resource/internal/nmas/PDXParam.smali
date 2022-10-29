.class public Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;
.super Ljava/lang/Object;


# static fields
.field protected static final AUDIO_PARAMETER:B = 0x1t

.field protected static final CHOICE_PARAMETER:B = 0x3t

.field protected static final DATA_PARAMETER:B = 0x4t

.field protected static final DICT_PARAMETER:B = 0x5t

.field protected static final SEQ_PARAMETER_CHUNK:B = 0x7t

.field protected static final SEQ_PARAMETER_END:B = 0x8t

.field protected static final SEQ_PARAMETER_START:B = 0x6t

.field protected static final TEXT_PARAMETER:B = 0x2t

.field protected static final TTS_PARAMETER:B = 0x7ft


# instance fields
.field private a:Ljava/lang/String;

.field private b:B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->a:Ljava/lang/String;

    iput-byte p2, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->b:B

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getType()B
    .registers 2

    iget-byte v0, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->b:B

    return v0
.end method

.method public setType(B)V
    .registers 2

    iput-byte p1, p0, Lcom/nuance/nmsp/client/sdk/components/resource/internal/nmas/PDXParam;->b:B

    return-void
.end method
