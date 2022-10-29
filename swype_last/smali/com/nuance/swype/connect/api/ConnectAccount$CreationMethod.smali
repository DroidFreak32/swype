.class public final enum Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;
.super Ljava/lang/Enum;
.source "ConnectAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/api/ConnectAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

.field public static final enum REGISTERED_ANDROID_ACCOUNT:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

.field public static final enum USER_CREATED:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    const-string/jumbo v1, "REGISTERED_ANDROID_ACCOUNT"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->REGISTERED_ANDROID_ACCOUNT:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    const-string/jumbo v1, "USER_CREATED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->USER_CREATED:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->REGISTERED_ANDROID_ACCOUNT:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->USER_CREATED:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->$VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->$VALUES:[Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    return-object v0
.end method
