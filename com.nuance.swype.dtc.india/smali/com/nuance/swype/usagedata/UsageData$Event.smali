.class public final enum Lcom/nuance/swype/usagedata/UsageData$Event;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$Event;

.field public static final enum BUNDLE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Event;

.field public static final enum SCANNING_SETTINGS:Lcom/nuance/swype/usagedata/UsageData$Event;

.field public static final enum STORE_THEME_CHANGED:Lcom/nuance/swype/usagedata/UsageData$Event;

.field public static final enum THEME_PREVIEW_TRIAL_CONVERSION:Lcom/nuance/swype/usagedata/UsageData$Event;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Event;

    const-string/jumbo v1, "BUNDLE_PREVIEW"

    const-string/jumbo v2, "Store Bundle Preview"

    invoke-direct {v0, v1, v3, v2}, Lcom/nuance/swype/usagedata/UsageData$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Event;->BUNDLE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Event;

    .line 104
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Event;

    const-string/jumbo v1, "SCANNING_SETTINGS"

    const-string/jumbo v2, "Settings Scanning"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Event;->SCANNING_SETTINGS:Lcom/nuance/swype/usagedata/UsageData$Event;

    .line 105
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Event;

    const-string/jumbo v1, "STORE_THEME_CHANGED"

    const-string/jumbo v2, "Store Theme Changed"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Event;->STORE_THEME_CHANGED:Lcom/nuance/swype/usagedata/UsageData$Event;

    .line 106
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Event;

    const-string/jumbo v1, "THEME_PREVIEW_TRIAL_CONVERSION"

    const-string/jumbo v2, "Trial Conversion"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageData$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Event;->THEME_PREVIEW_TRIAL_CONVERSION:Lcom/nuance/swype/usagedata/UsageData$Event;

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$Event;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Event;->BUNDLE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Event;->SCANNING_SETTINGS:Lcom/nuance/swype/usagedata/UsageData$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Event;->STORE_THEME_CHANGED:Lcom/nuance/swype/usagedata/UsageData$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Event;->THEME_PREVIEW_TRIAL_CONVERSION:Lcom/nuance/swype/usagedata/UsageData$Event;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Event;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$Event;

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
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$Event;->event:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$Event;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$Event;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Event;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$Event;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$Event;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$Event;->event:Ljava/lang/String;

    return-object v0
.end method
