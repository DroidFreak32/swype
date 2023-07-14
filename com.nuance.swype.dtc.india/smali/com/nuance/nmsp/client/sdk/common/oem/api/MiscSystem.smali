.class public abstract Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/MiscSystemOEM;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/MiscSystemOEM;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HMAC_SHA1([B[B)[B
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;

    invoke-virtual {v0, p0, p1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;->HMAC_SHA1_impl([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static HMAC_SHA1([B[BI)[B
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;

    invoke-virtual {v0, p0, p1, p2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;->HMAC_SHA1_impl([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static newUUID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/MiscSystem;->newUUID_impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract HMAC_SHA1_impl([B[B)[B
.end method

.method public abstract HMAC_SHA1_impl([B[BI)[B
.end method

.method public abstract newUUID_impl()Ljava/lang/String;
.end method
