.class final enum Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TransmitStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

.field public static final enum PERSIST:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

.field public static final enum PURGE:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

.field public static final enum RETRANSMIT:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    const-string v1, "RETRANSMIT"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->RETRANSMIT:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    const-string v1, "PERSIST"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->PERSIST:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    const-string v1, "PURGE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->PURGE:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->RETRANSMIT:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->PERSIST:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->PURGE:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

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

.method public static from(I)Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->PURGE:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->ordinal()I

    move-result v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->RETRANSMIT:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->ordinal()I

    move-result v0

    if-ge p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->PURGE:Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->values()[Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;
    .locals 1

    const-class v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$TransmitStrategy;

    return-object v0
.end method
