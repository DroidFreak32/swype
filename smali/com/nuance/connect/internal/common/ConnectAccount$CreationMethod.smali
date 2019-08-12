.class public final enum Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/common/ConnectAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

.field public static final enum REGISTERED_ANDROID_ACCOUNT:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

.field public static final enum USER_CREATED:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    const-string v1, "REGISTERED_ANDROID_ACCOUNT"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->REGISTERED_ANDROID_ACCOUNT:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    const-string v1, "USER_CREATED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->USER_CREATED:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->REGISTERED_ANDROID_ACCOUNT:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->USER_CREATED:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->$VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;
    .locals 1

    const-class v0, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->$VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    invoke-virtual {v0}, [Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    return-object v0
.end method
