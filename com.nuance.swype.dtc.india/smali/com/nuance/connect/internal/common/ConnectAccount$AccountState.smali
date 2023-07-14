.class public final enum Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/common/ConnectAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

.field public static final enum PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

.field public static final enum PENDING_VERIFICATION:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

.field public static final enum REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

.field public static final enum UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

.field public static final enum VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    const-string/jumbo v1, "UNREGISTERED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    const-string/jumbo v1, "REGISTERED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    const-string/jumbo v1, "PENDING_VERIFICATION"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_VERIFICATION:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    const-string/jumbo v1, "VERIFIED"

    invoke-direct {v0, v1, v5}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    const-string/jumbo v1, "PENDING_DELETE"

    invoke-direct {v0, v1, v6}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_VERIFICATION:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->$VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;
    .locals 1

    const-class v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->$VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0}, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-object v0
.end method
