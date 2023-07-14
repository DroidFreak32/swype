.class public final enum Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACSSLProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

.field public static final enum SSLv3:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

.field public static final enum TLSv1:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

.field public static final enum TLSv1_1:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

.field public static final enum TLSv1_2:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    const-string/jumbo v1, "SSLv3"

    const-string/jumbo v2, "SSLv3"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->SSLv3:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    const-string/jumbo v1, "TLSv1"

    const-string/jumbo v2, "TLSv1"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->TLSv1:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    const-string/jumbo v1, "TLSv1_1"

    const-string/jumbo v2, "TLSv1.1"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->TLSv1_1:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    const-string/jumbo v1, "TLSv1_2"

    const-string/jumbo v2, "TLSv1.2"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->TLSv1_2:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->SSLv3:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->TLSv1:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->TLSv1_1:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->TLSv1_2:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;
    .locals 1

    const-class v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    return-object v0
.end method
