.class public final enum Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;
.super Ljava/lang/Enum;
.source "ConnectAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

.field public static final enum PHONE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

.field public static final enum TABLET:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

.field public static final enum TV:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 444
    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->PHONE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    const-string v1, "TABLET"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->TABLET:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    const-string v1, "TV"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->TV:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    .line 443
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->PHONE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->TABLET:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->TV:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->$VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

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
    .line 443
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 443
    const-class v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->$VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    return-object v0
.end method
