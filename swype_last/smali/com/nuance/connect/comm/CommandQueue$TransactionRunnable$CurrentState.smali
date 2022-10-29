.class public final enum Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CurrentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

.field public static final enum PENDING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

.field public static final enum PROCESSED:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

.field public static final enum PROCESSING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

.field public static final enum QUEUED:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PENDING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    new-instance v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    const-string/jumbo v1, "QUEUED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->QUEUED:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    new-instance v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    const-string/jumbo v1, "PROCESSING"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PROCESSING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    new-instance v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    const-string/jumbo v1, "PROCESSED"

    invoke-direct {v0, v1, v5}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PROCESSED:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    sget-object v1, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PENDING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->QUEUED:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PROCESSING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PROCESSED:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->$VALUES:[Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;
    .registers 2

    const-class v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;
    .registers 1

    sget-object v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->$VALUES:[Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    invoke-virtual {v0}, [Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    return-object v0
.end method
