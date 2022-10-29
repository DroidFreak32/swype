.class public final enum Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;
.super Ljava/lang/Enum;
.source "UpdateStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/update/UpdateStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

.field public static final enum FAILED:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

.field public static final enum NOT_MODIFIED:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

.field public static final enum NO_CONNECTION:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

.field public static final enum NO_UPDATE:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

.field public static final enum PENDING:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

.field public static final enum UNKNOWN:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

.field public static final enum UPDATED:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

.field public static final enum UPDATE_ATTEMPT:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

.field public static final enum UPDATING:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    const-string/jumbo v1, "UPDATE_ATTEMPT"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->UPDATE_ATTEMPT:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    .line 11
    new-instance v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->PENDING:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    .line 12
    new-instance v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->FAILED:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    .line 13
    new-instance v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    const-string/jumbo v1, "NO_CONNECTION"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->NO_CONNECTION:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    .line 14
    new-instance v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    const-string/jumbo v1, "NO_UPDATE"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->NO_UPDATE:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    .line 15
    new-instance v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    const-string/jumbo v1, "NOT_MODIFIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->NOT_MODIFIED:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    .line 16
    new-instance v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    const-string/jumbo v1, "UPDATING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->UPDATING:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    .line 17
    new-instance v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    const-string/jumbo v1, "UPDATED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->UPDATED:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    .line 18
    new-instance v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->UNKNOWN:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    sget-object v1, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->UPDATE_ATTEMPT:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->PENDING:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->FAILED:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->NO_CONNECTION:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->NO_UPDATE:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->NOT_MODIFIED:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->UPDATING:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->UPDATED:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->UNKNOWN:Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->$VALUES:[Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->$VALUES:[Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;

    return-object v0
.end method
