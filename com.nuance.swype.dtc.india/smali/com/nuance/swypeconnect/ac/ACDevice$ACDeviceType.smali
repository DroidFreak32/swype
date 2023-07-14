.class public final enum Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACDeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

.field public static final enum PHABLET:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

.field public static final enum PHONE:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

.field public static final enum TABLET:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

.field public static final enum TV:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    const-string/jumbo v1, "PHONE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->PHONE:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    const-string/jumbo v1, "TABLET"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->TABLET:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    const-string/jumbo v1, "TV"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->TV:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    const-string/jumbo v1, "PHABLET"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->PHABLET:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->PHONE:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->TABLET:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->TV:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->PHABLET:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;
    .locals 1

    const-class v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    return-object v0
.end method
