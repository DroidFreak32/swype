.class public final enum Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;
.super Ljava/lang/Enum;
.source "ConnectAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/api/ConnectAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

.field public static final enum PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

.field public static final enum REGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

.field public static final enum UNREGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

.field public static final enum VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    const-string/jumbo v1, "UNREGISTERED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    const-string/jumbo v1, "REGISTERED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    const-string/jumbo v1, "VERIFIED"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    const-string/jumbo v1, "PENDING_DELETE"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->$VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->$VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    return-object v0
.end method
