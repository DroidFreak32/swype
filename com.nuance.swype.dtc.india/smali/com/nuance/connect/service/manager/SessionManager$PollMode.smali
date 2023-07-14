.class final enum Lcom/nuance/connect/service/manager/SessionManager$PollMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PollMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/service/manager/SessionManager$PollMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/service/manager/SessionManager$PollMode;

.field public static final enum AUTOMATIC:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

.field public static final enum MANUAL:Lcom/nuance/connect/service/manager/SessionManager$PollMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    const-string/jumbo v1, "AUTOMATIC"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/service/manager/SessionManager$PollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/SessionManager$PollMode;->AUTOMATIC:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    new-instance v0, Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    const-string/jumbo v1, "MANUAL"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/service/manager/SessionManager$PollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/SessionManager$PollMode;->MANUAL:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager$PollMode;->AUTOMATIC:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/service/manager/SessionManager$PollMode;->MANUAL:Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/connect/service/manager/SessionManager$PollMode;->$VALUES:[Lcom/nuance/connect/service/manager/SessionManager$PollMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/manager/SessionManager$PollMode;
    .locals 1

    const-class v0, Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/service/manager/SessionManager$PollMode;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/SessionManager$PollMode;->$VALUES:[Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    invoke-virtual {v0}, [Lcom/nuance/connect/service/manager/SessionManager$PollMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/service/manager/SessionManager$PollMode;

    return-object v0
.end method
