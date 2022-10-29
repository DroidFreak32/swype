.class public final enum Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThemeUpsellUserAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

.field public static final enum BUY_BUNDLE:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

.field public static final enum BUY_THEME:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

.field public static final enum CANCEL:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

.field public static final enum GO_TO_BUNDLE:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;


# instance fields
.field private final result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    const-string/jumbo v1, "CANCEL"

    const-string/jumbo v2, "Cancel"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->CANCEL:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    .line 318
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    const-string/jumbo v1, "GO_TO_BUNDLE"

    const-string/jumbo v2, "Go To Bundle"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->GO_TO_BUNDLE:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    .line 319
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    const-string/jumbo v1, "BUY_BUNDLE"

    const-string/jumbo v2, "Buy Bundle"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->BUY_BUNDLE:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    .line 320
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    const-string/jumbo v1, "BUY_THEME"

    const-string/jumbo v2, "Buy Theme"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->BUY_THEME:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    .line 316
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->CANCEL:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->GO_TO_BUNDLE:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->BUY_BUNDLE:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->BUY_THEME:Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

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
    .line 325
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 326
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->result:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 316
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;
    .registers 1

    .prologue
    .line 316
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$ThemeUpsellUserAction;->result:Ljava/lang/String;

    return-object v0
.end method
