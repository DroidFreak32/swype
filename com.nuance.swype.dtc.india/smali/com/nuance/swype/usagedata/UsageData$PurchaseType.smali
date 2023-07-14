.class public final enum Lcom/nuance/swype/usagedata/UsageData$PurchaseType;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$PurchaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

.field public static final enum BUNDLE:Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

.field public static final enum THEME:Lcom/nuance/swype/usagedata/UsageData$PurchaseType;


# instance fields
.field private final result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    const-string/jumbo v1, "BUNDLE"

    const-string/jumbo v2, "Bundle"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->BUNDLE:Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    .line 301
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    const-string/jumbo v1, "THEME"

    const-string/jumbo v2, "Theme"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->THEME:Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    .line 299
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->BUNDLE:Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->THEME:Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

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
    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 307
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->result:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$PurchaseType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 299
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$PurchaseType;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->result:Ljava/lang/String;

    return-object v0
.end method
