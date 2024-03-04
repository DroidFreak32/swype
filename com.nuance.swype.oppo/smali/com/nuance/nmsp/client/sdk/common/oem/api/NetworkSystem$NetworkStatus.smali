.class public Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkStatus"
.end annotation


# static fields
.field public static final NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

.field public static final NETWORK_MEMORY_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

.field public static final NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;->NETWORK_MEMORY_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
