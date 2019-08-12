.class public Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkReadMode"
.end annotation


# static fields
.field public static final NETWORK_READ_FULL:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;

.field public static final NETWORK_READ_PARTIAL:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;->NETWORK_READ_PARTIAL:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;->NETWORK_READ_FULL:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
