.class public Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;
.super Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/components/general/Parameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final APP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

.field public static final GWLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

.field public static final NMSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

.field public static final NSS:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

.field public static final NSSLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

.field public static final SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

.field public static final SDP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

.field public static final SIP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

.field public static final SLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

.field public static final SVSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;-><init>(S)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;-><init>(S)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NMSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;-><init>(S)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->APP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;-><init>(S)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSS:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;-><init>(S)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;-><init>(S)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSSLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;-><init>(S)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->GWLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;-><init>(S)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SVSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;-><init>(S)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SIP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;-><init>(S)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    return-void
.end method

.method private constructor <init>(S)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;-><init>(S)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NMSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nmsp"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->APP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "app"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSS:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nss"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "slog"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSSLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nsslog"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->GWLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "gwlog"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SVSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "svsp"

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SIP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "sip"

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "sdp"

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "sdk"

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method
