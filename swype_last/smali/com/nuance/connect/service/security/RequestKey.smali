.class public Lcom/nuance/connect/service/security/RequestKey;
.super Ljava/lang/Object;


# static fields
.field private static requestKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateKey()V
    .registers 1

    const-string/jumbo v0, "R3JvbWl0LCB0aGF0J3MgaXRcISBDaGVlc2VcISBXZSdsbCBnbyBzb21ld2hlcmU"

    sput-object v0, Lcom/nuance/connect/service/security/RequestKey;->requestKey:Ljava/lang/String;

    return-void
.end method

.method public static getKey()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/nuance/connect/service/security/RequestKey;->requestKey:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/nuance/connect/service/security/RequestKey;->generateKey()V

    :cond_7
    sget-object v0, Lcom/nuance/connect/service/security/RequestKey;->requestKey:Ljava/lang/String;

    return-object v0
.end method
