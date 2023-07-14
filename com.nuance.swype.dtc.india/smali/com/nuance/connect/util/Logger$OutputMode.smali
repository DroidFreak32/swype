.class public final enum Lcom/nuance/connect/util/Logger$OutputMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/util/Logger$OutputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/util/Logger$OutputMode;

.field public static final enum ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

.field public static final enum FILE:Lcom/nuance/connect/util/Logger$OutputMode;

.field public static final enum LOG_AND_FILE:Lcom/nuance/connect/util/Logger$OutputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/util/Logger$OutputMode;

    const-string/jumbo v1, "ANDROID_LOG"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/Logger$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    new-instance v0, Lcom/nuance/connect/util/Logger$OutputMode;

    const-string/jumbo v1, "FILE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/util/Logger$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/util/Logger$OutputMode;->FILE:Lcom/nuance/connect/util/Logger$OutputMode;

    new-instance v0, Lcom/nuance/connect/util/Logger$OutputMode;

    const-string/jumbo v1, "LOG_AND_FILE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/util/Logger$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/util/Logger$OutputMode;->LOG_AND_FILE:Lcom/nuance/connect/util/Logger$OutputMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/util/Logger$OutputMode;

    sget-object v1, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/util/Logger$OutputMode;->FILE:Lcom/nuance/connect/util/Logger$OutputMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/util/Logger$OutputMode;->LOG_AND_FILE:Lcom/nuance/connect/util/Logger$OutputMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/connect/util/Logger$OutputMode;->$VALUES:[Lcom/nuance/connect/util/Logger$OutputMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/util/Logger$OutputMode;
    .locals 1

    const-class v0, Lcom/nuance/connect/util/Logger$OutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/Logger$OutputMode;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/util/Logger$OutputMode;
    .locals 1

    sget-object v0, Lcom/nuance/connect/util/Logger$OutputMode;->$VALUES:[Lcom/nuance/connect/util/Logger$OutputMode;

    invoke-virtual {v0}, [Lcom/nuance/connect/util/Logger$OutputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/util/Logger$OutputMode;

    return-object v0
.end method
