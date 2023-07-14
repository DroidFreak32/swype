.class public final enum Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REQUEST_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/comm/Command$REQUEST_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

.field public static final enum BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

.field public static final enum CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

.field public static final enum USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    const-string/jumbo v1, "CRITICAL"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    new-instance v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    new-instance v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    const-string/jumbo v1, "BACKGROUND"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->BACKGROUND:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->$VALUES:[Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .locals 1

    const-class v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .locals 1

    sget-object v0, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->$VALUES:[Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {v0}, [Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method
