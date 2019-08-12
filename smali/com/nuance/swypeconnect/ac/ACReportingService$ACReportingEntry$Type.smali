.class public final enum Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

.field public static final enum AGGREGATE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

.field public static final enum DATAPOINT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    const-string v1, "AGGREGATE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;->AGGREGATE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    const-string v1, "DATAPOINT"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;->DATAPOINT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;->AGGREGATE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;->DATAPOINT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;
    .locals 1

    const-class v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry$Type;

    return-object v0
.end method
