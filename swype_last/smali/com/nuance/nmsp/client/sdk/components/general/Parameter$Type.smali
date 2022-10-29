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
    .registers 2

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
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;-><init>(S)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NMSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "nmsp"

    :goto_b
    return-object v0

    :cond_c
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->APP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "app"

    goto :goto_b

    :cond_18
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSS:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "nss"

    goto :goto_b

    :cond_24
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "slog"

    goto :goto_b

    :cond_30
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->NSSLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "nsslog"

    goto :goto_b

    :cond_3c
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->GWLOG:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo v0, "gwlog"

    goto :goto_b

    :cond_48
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SVSP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo v0, "svsp"

    goto :goto_b

    :cond_54
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SIP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo v0, "sip"

    goto :goto_b

    :cond_60
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDP:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string/jumbo v0, "sdp"

    goto :goto_b

    :cond_6c
    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->SDK:Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter$Type;->equals(Lcom/nuance/nmsp/client/sdk/common/util/ShortConstant;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string/jumbo v0, "sdk"

    goto :goto_b

    :cond_78
    const/4 v0, 0x0

    goto :goto_b
.end method
