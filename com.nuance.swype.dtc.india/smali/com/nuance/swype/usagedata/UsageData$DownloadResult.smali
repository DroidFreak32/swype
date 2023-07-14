.class public final enum Lcom/nuance/swype/usagedata/UsageData$DownloadResult;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$DownloadResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

.field public static final enum AC_EXCEPTION:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

.field public static final enum CANCELED:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

.field public static final enum COMPLETED:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

.field public static final enum NETWORK:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

.field public static final enum NO_SPACE:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;


# instance fields
.field private final result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    const-string/jumbo v1, "AC_EXCEPTION"

    const-string/jumbo v2, "ACException"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->AC_EXCEPTION:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    .line 177
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    const-string/jumbo v1, "CANCELED"

    const-string/jumbo v2, "Canceled"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->CANCELED:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    .line 178
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    const-string/jumbo v1, "COMPLETED"

    const-string/jumbo v2, "Completed"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->COMPLETED:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    .line 179
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    const-string/jumbo v1, "NETWORK"

    const-string/jumbo v2, "Network Failure"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->NETWORK:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    .line 180
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    const-string/jumbo v1, "NO_SPACE"

    const-string/jumbo v2, "No Space"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->NO_SPACE:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    .line 175
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->AC_EXCEPTION:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->CANCELED:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->COMPLETED:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->NETWORK:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->NO_SPACE:Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

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
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 186
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->result:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$DownloadResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$DownloadResult;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$DownloadResult;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$DownloadResult;->result:Ljava/lang/String;

    return-object v0
.end method
