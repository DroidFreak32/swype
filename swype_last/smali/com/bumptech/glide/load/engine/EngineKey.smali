.class public final Lcom/bumptech/glide/load/engine/EngineKey;
.super Ljava/lang/Object;
.source "EngineKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final decoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final encoder:Lcom/bumptech/glide/load/ResourceEncoder;

.field private hashCode:I

.field private final height:I

.field private final id:Ljava/lang/String;

.field private originalKey:Lcom/bumptech/glide/load/Key;

.field private final signature:Lcom/bumptech/glide/load/Key;

.field private final sourceEncoder:Lcom/bumptech/glide/load/Encoder;

.field private stringKey:Ljava/lang/String;

.field private final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

.field private final transformation:Lcom/bumptech/glide/load/Transformation;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)V
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "cacheDecoder"    # Lcom/bumptech/glide/load/ResourceDecoder;
    .param p6, "decoder"    # Lcom/bumptech/glide/load/ResourceDecoder;
    .param p7, "transformation"    # Lcom/bumptech/glide/load/Transformation;
    .param p8, "encoder"    # Lcom/bumptech/glide/load/ResourceEncoder;
    .param p9, "transcoder"    # Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .param p10, "sourceEncoder"    # Lcom/bumptech/glide/load/Encoder;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 36
    iput p3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    .line 37
    iput p4, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    .line 38
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 39
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 40
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 41
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 42
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 43
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    .line 44
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 55
    if-ne p0, p1, :cond_6

    move v3, v2

    .line 97
    :cond_5
    :goto_5
    return v3

    .line 58
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v1, v4, :cond_5

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/bumptech/glide/load/engine/EngineKey;

    .line 64
    .local v0, "engineKey":Lcom/bumptech/glide/load/engine/EngineKey;
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, v4}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    iget v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    if-ne v1, v4, :cond_5

    .line 70
    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    iget v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    if-ne v1, v4, :cond_5

    .line 72
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v1, :cond_10a

    move v1, v2

    :goto_3a
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v4, :cond_10d

    move v4, v2

    :goto_3f
    xor-int/2addr v1, v4

    if-nez v1, :cond_5

    .line 74
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v4}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    :cond_58
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v1, :cond_110

    move v1, v2

    :goto_5d
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v4, :cond_113

    move v4, v2

    :goto_62
    xor-int/2addr v1, v4

    if-nez v1, :cond_5

    .line 78
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    :cond_7b
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v1, :cond_116

    move v1, v2

    :goto_80
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v4, :cond_119

    move v4, v2

    :goto_85
    xor-int/2addr v1, v4

    if-nez v1, :cond_5

    .line 82
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 84
    :cond_9e
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v1, :cond_11c

    move v1, v2

    :goto_a3
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v4, :cond_11e

    move v4, v2

    :goto_a8
    xor-int/2addr v1, v4

    if-nez v1, :cond_5

    .line 86
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v1, :cond_c1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    :cond_c1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v1, :cond_120

    move v1, v2

    :goto_c6
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v4, :cond_122

    move v4, v2

    :goto_cb
    xor-int/2addr v1, v4

    if-nez v1, :cond_5

    .line 90
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v1, :cond_e4

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    :cond_e4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v1, :cond_124

    move v1, v2

    :goto_e9
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v4, :cond_126

    move v4, v2

    :goto_ee
    xor-int/2addr v1, v4

    if-nez v1, :cond_5

    .line 94
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v1, :cond_107

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_107
    move v3, v2

    .line 97
    goto/16 :goto_5

    :cond_10a
    move v1, v3

    .line 72
    goto/16 :goto_3a

    :cond_10d
    move v4, v3

    goto/16 :goto_3f

    :cond_110
    move v1, v3

    .line 76
    goto/16 :goto_5d

    :cond_113
    move v4, v3

    goto/16 :goto_62

    :cond_116
    move v1, v3

    .line 80
    goto/16 :goto_80

    :cond_119
    move v4, v3

    goto/16 :goto_85

    :cond_11c
    move v1, v3

    .line 84
    goto :goto_a3

    :cond_11e
    move v4, v3

    goto :goto_a8

    :cond_120
    move v1, v3

    .line 88
    goto :goto_c6

    :cond_122
    move v4, v3

    goto :goto_cb

    :cond_124
    move v1, v3

    .line 92
    goto :goto_e9

    :cond_126
    move v4, v3

    goto :goto_ee
.end method

.method public final getOriginalKey()Lcom/bumptech/glide/load/Key;
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    if-nez v0, :cond_f

    .line 48
    new-instance v0, Lcom/bumptech/glide/load/engine/OriginalKey;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/OriginalKey;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    .line 50
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 102
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    if-nez v0, :cond_aa

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 104
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v2}, Lcom/bumptech/glide/load/Key;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 106
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 107
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3e
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 108
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_53
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 109
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_68
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 110
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7d
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 111
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_92
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 112
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v2, :cond_a7

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_a7
    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 114
    :cond_aa
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    return v0

    :cond_ad
    move v0, v1

    .line 107
    goto :goto_3e

    :cond_af
    move v0, v1

    .line 108
    goto :goto_53

    :cond_b1
    move v0, v1

    .line 109
    goto :goto_68

    :cond_b3
    move v0, v1

    .line 110
    goto :goto_7d

    :cond_b5
    move v0, v1

    .line 111
    goto :goto_92
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x2b

    const/16 v2, 0x27

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    if-nez v0, :cond_e0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EngineKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "+["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]+\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_7e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_b2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_cc
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    .line 156
    :cond_e0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    return-object v0

    .line 120
    :cond_e3
    const-string/jumbo v0, ""

    goto/16 :goto_4a

    :cond_e8
    const-string/jumbo v0, ""

    goto/16 :goto_64

    :cond_ed
    const-string/jumbo v0, ""

    goto :goto_7e

    :cond_f1
    const-string/jumbo v0, ""

    goto :goto_98

    :cond_f5
    const-string/jumbo v0, ""

    goto :goto_b2

    :cond_f9
    const-string/jumbo v0, ""

    goto :goto_cc
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 5
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 161
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 165
    .local v0, "dimensions":[B
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 166
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 167
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 168
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_34
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_48
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 170
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_5c
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 171
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_70
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 173
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_84
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 174
    return-void

    .line 168
    :cond_8f
    const-string/jumbo v1, ""

    goto :goto_34

    .line 169
    :cond_93
    const-string/jumbo v1, ""

    goto :goto_48

    .line 170
    :cond_97
    const-string/jumbo v1, ""

    goto :goto_5c

    .line 171
    :cond_9b
    const-string/jumbo v1, ""

    goto :goto_70

    .line 173
    :cond_9f
    const-string/jumbo v1, ""

    goto :goto_84
.end method
