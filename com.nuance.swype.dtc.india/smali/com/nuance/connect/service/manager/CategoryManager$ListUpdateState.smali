.class final enum Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ListUpdateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

.field public static final enum CLEAN:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

.field public static final enum NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

.field public static final enum UPDATING:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    const-string/jumbo v1, "CLEAN"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->CLEAN:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    const-string/jumbo v1, "NEEDS_UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    new-instance v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    const-string/jumbo v1, "UPDATING"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->UPDATING:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->CLEAN:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->NEEDS_UPDATE:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->UPDATING:Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->$VALUES:[Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;
    .locals 1

    const-class v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->$VALUES:[Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    invoke-virtual {v0}, [Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/service/manager/CategoryManager$ListUpdateState;

    return-object v0
.end method
