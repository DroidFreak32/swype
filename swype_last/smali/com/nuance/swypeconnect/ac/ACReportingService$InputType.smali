.class final enum Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

.field public static final enum HANDWRITTEN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

.field public static final enum SPOKEN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

.field public static final enum SWYPED:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

.field public static final enum TAPPED:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

.field public static final enum UNKNOWN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    const-string/jumbo v1, "TAPPED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->TAPPED:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    const-string/jumbo v1, "SWYPED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->SWYPED:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    const-string/jumbo v1, "HANDWRITTEN"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->HANDWRITTEN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    const-string/jumbo v1, "SPOKEN"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->SPOKEN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->UNKNOWN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->TAPPED:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->SWYPED:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->HANDWRITTEN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->SPOKEN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->UNKNOWN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

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

.method public static from(I)Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;
    .registers 2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->UNKNOWN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->ordinal()I

    move-result v0

    if-ge p0, v0, :cond_10

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->TAPPED:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->ordinal()I

    move-result v0

    if-ge p0, v0, :cond_13

    :cond_10
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->UNKNOWN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    :goto_12
    return-object v0

    :cond_13
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->values()[Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_12
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;
    .registers 2

    const-class v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    return-object v0
.end method
