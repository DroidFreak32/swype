.class public final enum Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/AbstractCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManagerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

.field public static final enum DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

.field public static final enum STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

.field public static final enum STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    new-instance v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    const-string/jumbo v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    new-instance v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->$VALUES:[Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;
    .locals 1

    const-class v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->$VALUES:[Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0}, [Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    return-object v0
.end method
