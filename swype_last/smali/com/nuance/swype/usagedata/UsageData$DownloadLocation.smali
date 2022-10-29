.class public final enum Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

.field public static final enum BUNDLE:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

.field public static final enum GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

.field public static final enum MY_THEMES:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;


# instance fields
.field private final result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    const-string/jumbo v1, "MY_THEMES"

    const-string/jumbo v2, "My Themes"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->MY_THEMES:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    .line 159
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    const-string/jumbo v1, "GET_THEMES"

    const-string/jumbo v2, "Get Themes"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    .line 160
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    const-string/jumbo v1, "BUNDLE"

    const-string/jumbo v2, "Bundle Page"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->BUNDLE:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->MY_THEMES:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->BUNDLE:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 166
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->result:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;
    .registers 1

    .prologue
    .line 157
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->result:Ljava/lang/String;

    return-object v0
.end method
