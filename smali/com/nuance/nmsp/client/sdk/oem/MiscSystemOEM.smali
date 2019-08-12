.class public Lcom/nuance/nmsp/client/sdk/oem/MiscSystemOEM;
.super Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;-><init>()V

    return-void
.end method


# virtual methods
.method protected HMAC_SHA1_impl([B[B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/nmsp/client/sdk/oem/MiscSystemOEM;->HMAC_SHA1_impl([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected HMAC_SHA1_impl([B[BI)[B
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-array v0, v2, [B

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, v0}, Ljavax/crypto/Mac;->update([BII)V

    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v2, [B

    goto :goto_0
.end method

.method protected newUUID_impl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
