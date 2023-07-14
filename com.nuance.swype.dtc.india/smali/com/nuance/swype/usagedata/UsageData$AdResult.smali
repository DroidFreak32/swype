.class final enum Lcom/nuance/swype/usagedata/UsageData$AdResult;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AdResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$AdResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$AdResult;

.field public static final enum FAILED_INTERNAL_ERROR:Lcom/nuance/swype/usagedata/UsageData$AdResult;

.field public static final enum FAILED_INVALID_REQUEST:Lcom/nuance/swype/usagedata/UsageData$AdResult;

.field public static final enum FAILED_NETWORK_ERROR:Lcom/nuance/swype/usagedata/UsageData$AdResult;

.field public static final enum FAILED_NO_FILL:Lcom/nuance/swype/usagedata/UsageData$AdResult;

.field public static final enum FAILED_UNKNOWN:Lcom/nuance/swype/usagedata/UsageData$AdResult;

.field public static final enum FAILED_UNMAPPED:Lcom/nuance/swype/usagedata/UsageData$AdResult;

.field public static final enum SUCCESS:Lcom/nuance/swype/usagedata/UsageData$AdResult;


# instance fields
.field private final result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 452
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;

    const-string/jumbo v1, "SUCCESS"

    const-string/jumbo v2, "Success"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$AdResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;->SUCCESS:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 453
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;

    const-string/jumbo v1, "FAILED_NO_FILL"

    const-string/jumbo v2, "No Fill"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$AdResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_NO_FILL:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 454
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;

    const-string/jumbo v1, "FAILED_INVALID_REQUEST"

    const-string/jumbo v2, "Invalid Request"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageData$AdResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_INVALID_REQUEST:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 455
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;

    const-string/jumbo v1, "FAILED_INTERNAL_ERROR"

    const-string/jumbo v2, "Internal Error"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/usagedata/UsageData$AdResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_INTERNAL_ERROR:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 456
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;

    const-string/jumbo v1, "FAILED_NETWORK_ERROR"

    const-string/jumbo v2, "Network Error"

    invoke-direct {v0, v1, v8, v2}, Lcom/nuance/swype/usagedata/UsageData$AdResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_NETWORK_ERROR:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 457
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;

    const-string/jumbo v1, "FAILED_UNKNOWN"

    const/4 v2, 0x5

    const-string/jumbo v3, "Unknown Error"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$AdResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_UNKNOWN:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 458
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;

    const-string/jumbo v1, "FAILED_UNMAPPED"

    const/4 v2, 0x6

    const-string/jumbo v3, "Unmapped Error"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$AdResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_UNMAPPED:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    .line 451
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$AdResult;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$AdResult;->SUCCESS:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_NO_FILL:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_INVALID_REQUEST:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_INTERNAL_ERROR:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_NETWORK_ERROR:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_UNKNOWN:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$AdResult;->FAILED_UNMAPPED:Lcom/nuance/swype/usagedata/UsageData$AdResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$AdResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 463
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 464
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$AdResult;->result:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$AdResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 451
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$AdResult;
    .locals 1

    .prologue
    .line 451
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$AdResult;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$AdResult;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$AdResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$AdResult;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$AdResult;->result:Ljava/lang/String;

    return-object v0
.end method
