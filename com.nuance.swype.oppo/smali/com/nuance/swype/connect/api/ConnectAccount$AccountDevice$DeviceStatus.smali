.class public final enum Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;
.super Ljava/lang/Enum;
.source "ConnectAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

.field public static final enum ACTIVE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

.field public static final enum PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 448
    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->ACTIVE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    const-string v1, "PENDING_DELETE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    .line 447
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->ACTIVE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->$VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 447
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 447
    const-class v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->$VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceStatus;

    return-object v0
.end method
