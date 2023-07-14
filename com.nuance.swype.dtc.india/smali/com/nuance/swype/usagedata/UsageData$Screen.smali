.class public final enum Lcom/nuance/swype/usagedata/UsageData$Screen;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum BUNDLE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum BUNDLE_UPSELL:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum CATEGORY_PAGE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum CHINESE_PREFERENCES:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum DOWNLOAD_LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum FUNCTION_BAR:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum GESTURES:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum GET_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum HELP:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum LANGUAGES:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum MY_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum MY_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum MY_WORDS:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum PREFERENCES:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum SETTINGS_DRAWER:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum SWYPE_KEY:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum SYSTEM_NOTIFICATION:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field public static final enum THEMES_OPTIONS:Lcom/nuance/swype/usagedata/UsageData$Screen;


# instance fields
.field private final screen:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "BUNDLE_PREVIEW"

    const-string/jumbo v2, "Store Bundle Preview"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->BUNDLE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 68
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "BUNDLE_UPSELL"

    const-string/jumbo v2, "Store Bundle Upsell"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->BUNDLE_UPSELL:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 69
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "CATEGORY_PAGE_PREVIEW"

    const-string/jumbo v2, "Store Category Page Preview"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->CATEGORY_PAGE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 70
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "CHINESE_PREFERENCES"

    const-string/jumbo v2, "Swype Chinese"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->CHINESE_PREFERENCES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 71
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "FUNCTION_BAR"

    const-string/jumbo v2, "Function Bar"

    invoke-direct {v0, v1, v8, v2}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->FUNCTION_BAR:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 72
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "GET_THEMES"

    const/4 v2, 0x5

    const-string/jumbo v3, "Store Get Themes"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 73
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "GET_THEMES_PREVIEW"

    const/4 v2, 0x6

    const-string/jumbo v3, "Store Get Themes Preview"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->GET_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 74
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "HELP"

    const/4 v2, 0x7

    const-string/jumbo v3, "Help"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->HELP:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 75
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "LANGUAGES"

    const/16 v2, 0x8

    const-string/jumbo v3, "Languages"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->LANGUAGES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 76
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "MY_THEMES"

    const/16 v2, 0x9

    const-string/jumbo v3, "My Themes"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 77
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "MY_THEMES_PREVIEW"

    const/16 v2, 0xa

    const-string/jumbo v3, "My Themes Preview"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 78
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "MY_WORDS"

    const/16 v2, 0xb

    const-string/jumbo v3, "My Words"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_WORDS:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 79
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "PREFERENCES"

    const/16 v2, 0xc

    const-string/jumbo v3, "Preferences"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->PREFERENCES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 80
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "SETTINGS_DRAWER"

    const/16 v2, 0xd

    const-string/jumbo v3, "Settings Drawer"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->SETTINGS_DRAWER:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 81
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "SWYPE_KEY"

    const/16 v2, 0xe

    const-string/jumbo v3, "Swype Key"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->SWYPE_KEY:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 82
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "SYSTEM_NOTIFICATION"

    const/16 v2, 0xf

    const-string/jumbo v3, "System Notification"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->SYSTEM_NOTIFICATION:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 83
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "THEMES_OPTIONS"

    const/16 v2, 0x10

    const-string/jumbo v3, "Themes Options"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->THEMES_OPTIONS:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 84
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "GESTURES"

    const/16 v2, 0x11

    const-string/jumbo v3, "Gestures"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->GESTURES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 85
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    const-string/jumbo v1, "DOWNLOAD_LANGUAGE"

    const/16 v2, 0x12

    const-string/jumbo v3, "Download Languages"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$Screen;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->DOWNLOAD_LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$Screen;

    .line 66
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$Screen;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Screen;->BUNDLE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Screen;->BUNDLE_UPSELL:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Screen;->CATEGORY_PAGE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Screen;->CHINESE_PREFERENCES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Screen;->FUNCTION_BAR:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->GET_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->HELP:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->LANGUAGES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_WORDS:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->PREFERENCES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->SETTINGS_DRAWER:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->SWYPE_KEY:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->SYSTEM_NOTIFICATION:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->THEMES_OPTIONS:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->GESTURES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Screen;->DOWNLOAD_LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$Screen;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$Screen;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$Screen;->screen:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$Screen;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$Screen;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$Screen;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$Screen;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$Screen;->screen:Ljava/lang/String;

    return-object v0
.end method
