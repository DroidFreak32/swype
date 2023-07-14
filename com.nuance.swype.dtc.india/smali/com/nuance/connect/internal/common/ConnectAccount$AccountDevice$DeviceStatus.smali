.class public final enum Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

.field public static final enum ACTIVE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

.field public static final enum PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    const-string/jumbo v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->ACTIVE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    const-string/jumbo v1, "PENDING_DELETE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->ACTIVE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->$VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;
    .locals 1

    const-class v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->$VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    invoke-virtual {v0}, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    return-object v0
.end method
