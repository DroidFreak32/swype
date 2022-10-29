.class public final enum Lcom/nuance/connect/util/Logger$LoggerType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/util/Logger$LoggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/util/Logger$LoggerType;

.field public static final enum CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

.field public static final enum DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

.field public static final enum OEM:Lcom/nuance/connect/util/Logger$LoggerType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/util/Logger$LoggerType;

    const-string/jumbo v1, "DEVELOPER"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/Logger$LoggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    new-instance v0, Lcom/nuance/connect/util/Logger$LoggerType;

    const-string/jumbo v1, "OEM"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/util/Logger$LoggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    new-instance v0, Lcom/nuance/connect/util/Logger$LoggerType;

    const-string/jumbo v1, "CUSTOMER"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/util/Logger$LoggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/util/Logger$LoggerType;

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->$VALUES:[Lcom/nuance/connect/util/Logger$LoggerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/util/Logger$LoggerType;
    .registers 2

    const-class v0, Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/Logger$LoggerType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/util/Logger$LoggerType;
    .registers 1

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->$VALUES:[Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {v0}, [Lcom/nuance/connect/util/Logger$LoggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/util/Logger$LoggerType;

    return-object v0
.end method
