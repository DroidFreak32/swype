.class final enum Lcom/nuance/swype/usagedata/UsageData$EventTag;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EventTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$EventTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum AD_BILLBOARD_CLOSE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum AD_FAILURE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum AD_LOADED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum BLUETOOTH_KB_USAGE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum BUNDLE_UPSELL:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum CATEGORY_PAGE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum DLM_WIPE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum DOWNLOAD:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum EMOJI_SELECTED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum KEYBOARD_OPEN_X10:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum LANGUAGE_DOWNLOAD_REQUEST:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum MY_WORDS:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum SETTINGS_SUMMARY:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum STORE_GET_THEMES_VISIT:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum STORE_MY_THEMES_VISIT:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum STORE_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum STORE_TRANSACTION_COMPLETED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum STORE_TRANSACTION_FAILED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum USED_CALL_LOG_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum USED_GMAIL_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum USED_SMS_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

.field public static final enum VOICE_USAGE_DRAGON:Lcom/nuance/swype/usagedata/UsageData$EventTag;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 373
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "BUNDLE_UPSELL"

    const-string/jumbo v2, "Store Bundle Upsell"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->BUNDLE_UPSELL:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 374
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "CATEGORY_PAGE_PREVIEW"

    const-string/jumbo v2, "Store Category Page Preview (View All)"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->CATEGORY_PAGE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 375
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "DOWNLOAD"

    const-string/jumbo v2, "Store Download"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->DOWNLOAD:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 376
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "STORE_GET_THEMES_VISIT"

    const-string/jumbo v2, "Store Get Themes Page Visit"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_GET_THEMES_VISIT:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 377
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "STORE_MY_THEMES_VISIT"

    const-string/jumbo v2, "Store My Themes Page Visit"

    invoke-direct {v0, v1, v8, v2}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_MY_THEMES_VISIT:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 378
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "STORE_THEMES_PREVIEW"

    const/4 v2, 0x5

    const-string/jumbo v3, "Store Themes Preview"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 379
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "STORE_TRANSACTION_COMPLETED"

    const/4 v2, 0x6

    const-string/jumbo v3, "Store Transaction Completed"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_TRANSACTION_COMPLETED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 380
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "STORE_TRANSACTION_FAILED"

    const/4 v2, 0x7

    const-string/jumbo v3, "Store Transaction Failed"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_TRANSACTION_FAILED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 381
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "VOICE_USAGE_DRAGON"

    const/16 v2, 0x8

    const-string/jumbo v3, "Voice Usage (Dragon)"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->VOICE_USAGE_DRAGON:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 382
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "DLM_WIPE"

    const/16 v2, 0x9

    const-string/jumbo v3, "DLM Wipe"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->DLM_WIPE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 383
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "BLUETOOTH_KB_USAGE"

    const/16 v2, 0xa

    const-string/jumbo v3, "Bluetooth Keyboard Usage"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->BLUETOOTH_KB_USAGE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 384
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "SETTINGS_SUMMARY"

    const/16 v2, 0xb

    const-string/jumbo v3, "Settings Summary"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->SETTINGS_SUMMARY:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 385
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "MY_WORDS"

    const/16 v2, 0xc

    const-string/jumbo v3, "My Words"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->MY_WORDS:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 386
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "KEYBOARD_OPEN_X10"

    const/16 v2, 0xd

    const-string/jumbo v3, "Keyboard Open (x10)"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->KEYBOARD_OPEN_X10:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 387
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "AD_LOADED"

    const/16 v2, 0xe

    const-string/jumbo v3, "Ad Loaded"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->AD_LOADED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 388
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "AD_FAILURE"

    const/16 v2, 0xf

    const-string/jumbo v3, "Ad Failure"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->AD_FAILURE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 389
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "AD_BILLBOARD_CLOSE"

    const/16 v2, 0x10

    const-string/jumbo v3, "Ad Billboard Close"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->AD_BILLBOARD_CLOSE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 390
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "USED_SMS_SCANNER"

    const/16 v2, 0x11

    const-string/jumbo v3, "Used SMS Scanner"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->USED_SMS_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 391
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "USED_GMAIL_SCANNER"

    const/16 v2, 0x12

    const-string/jumbo v3, "Used Gmail Scanner"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->USED_GMAIL_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 392
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "USED_CALL_LOG_SCANNER"

    const/16 v2, 0x13

    const-string/jumbo v3, "Used Call Log Scanner"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->USED_CALL_LOG_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 393
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "EMOJI_SELECTED"

    const/16 v2, 0x14

    const-string/jumbo v3, "Emoji Selected"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->EMOJI_SELECTED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 394
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    const-string/jumbo v1, "LANGUAGE_DOWNLOAD_REQUEST"

    const/16 v2, 0x15

    const-string/jumbo v3, "Language Download Request"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventTag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->LANGUAGE_DOWNLOAD_REQUEST:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    .line 372
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$EventTag;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventTag;->BUNDLE_UPSELL:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventTag;->CATEGORY_PAGE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventTag;->DOWNLOAD:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_GET_THEMES_VISIT:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_MY_THEMES_VISIT:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_TRANSACTION_COMPLETED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->STORE_TRANSACTION_FAILED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->VOICE_USAGE_DRAGON:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->DLM_WIPE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->BLUETOOTH_KB_USAGE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->SETTINGS_SUMMARY:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->MY_WORDS:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->KEYBOARD_OPEN_X10:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->AD_LOADED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->AD_FAILURE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->AD_BILLBOARD_CLOSE:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->USED_SMS_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->USED_GMAIL_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->USED_CALL_LOG_SCANNER:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->EMOJI_SELECTED:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventTag;->LANGUAGE_DOWNLOAD_REQUEST:Lcom/nuance/swype/usagedata/UsageData$EventTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$EventTag;

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
    .line 399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 400
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->event:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$EventTag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 372
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$EventTag;
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$EventTag;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$EventTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$EventTag;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$EventTag;->event:Ljava/lang/String;

    return-object v0
.end method
