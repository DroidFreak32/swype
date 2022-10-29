.class final enum Lcom/nuance/swype/usagedata/UsageData$EventAttribute;
.super Ljava/lang/Enum;
.source "UsageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/UsageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EventAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/UsageData$EventAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum BACKUP_SYNC_STATUS:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum BROWSE_TIME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum CATEGORY:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum CELLULAR_DATA:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum DICTIONARY_BEHAVIOR:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum DLM_DISCARD_REASON:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum DLM_DISCARD_WORD:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum DLM_REQUEST_TYPE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum DOWNLOAD_LANGUAGE_NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum ERROR_CODE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum ERROR_DESCRIPTION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum EVENT_ERR:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum LIVING_LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum LOAD_TIME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum LOCATION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum NUMBER_ROW:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum PAYMENT_PROVIDER:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum POSITION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum PRICE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum RESULT:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum SECONDARY_CHARACTERS:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum TAB_PREVIEWED_FROM:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum THEME_NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum TYPE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum UDB_WORD_COUNT:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

.field public static final enum USER_ACTION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;


# instance fields
.field private final attribute:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 410
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "BROWSE_TIME"

    const-string/jumbo v2, "Browse Time Per Page"

    invoke-direct {v0, v1, v4, v2}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->BROWSE_TIME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 411
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "CATEGORY"

    const-string/jumbo v2, "Category"

    invoke-direct {v0, v1, v5, v2}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->CATEGORY:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 412
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "ERROR_CODE"

    const-string/jumbo v2, "Error Code"

    invoke-direct {v0, v1, v6, v2}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->ERROR_CODE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 413
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "ERROR_DESCRIPTION"

    const-string/jumbo v2, "Error Description"

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->ERROR_DESCRIPTION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 414
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "EVENT_ERR"

    const-string/jumbo v2, "Event Error"

    invoke-direct {v0, v1, v8, v2}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->EVENT_ERR:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 415
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "LANGUAGE"

    const/4 v2, 0x5

    const-string/jumbo v3, "Language"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 416
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "LOCATION"

    const/4 v2, 0x6

    const-string/jumbo v3, "Location"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LOCATION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 417
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "NAME"

    const/4 v2, 0x7

    const-string/jumbo v3, "Name"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 418
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "PAYMENT_PROVIDER"

    const/16 v2, 0x8

    const-string/jumbo v3, "Payment Provider"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->PAYMENT_PROVIDER:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 419
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "POSITION"

    const/16 v2, 0x9

    const-string/jumbo v3, "Position"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->POSITION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 420
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "PRICE"

    const/16 v2, 0xa

    const-string/jumbo v3, "Price"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->PRICE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 421
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "RESULT"

    const/16 v2, 0xb

    const-string/jumbo v3, "Result"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->RESULT:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 422
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "TAB_PREVIEWED_FROM"

    const/16 v2, 0xc

    const-string/jumbo v3, "Tab Previewed From"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->TAB_PREVIEWED_FROM:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 423
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "THEME_NAME"

    const/16 v2, 0xd

    const-string/jumbo v3, "Theme Name"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->THEME_NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 424
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "TYPE"

    const/16 v2, 0xe

    const-string/jumbo v3, "Type"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->TYPE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 425
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "USER_ACTION"

    const/16 v2, 0xf

    const-string/jumbo v3, "User Action"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->USER_ACTION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 426
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "DLM_REQUEST_TYPE"

    const/16 v2, 0x10

    const-string/jumbo v3, "DLM Request Type"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DLM_REQUEST_TYPE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 427
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "BACKUP_SYNC_STATUS"

    const/16 v2, 0x11

    const-string/jumbo v3, "Backup Sync Status"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->BACKUP_SYNC_STATUS:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 428
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "DLM_DISCARD_REASON"

    const/16 v2, 0x12

    const-string/jumbo v3, "DLM Discard Reason"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DLM_DISCARD_REASON:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 429
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "DLM_DISCARD_WORD"

    const/16 v2, 0x13

    const-string/jumbo v3, "DLM Discard Word"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DLM_DISCARD_WORD:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 430
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "LOAD_TIME"

    const/16 v2, 0x14

    const-string/jumbo v3, "Load Time"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LOAD_TIME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 431
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "NUMBER_ROW"

    const/16 v2, 0x15

    const-string/jumbo v3, "Number Row"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->NUMBER_ROW:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 432
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "SECONDARY_CHARACTERS"

    const/16 v2, 0x16

    const-string/jumbo v3, "Secondary Characters"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->SECONDARY_CHARACTERS:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 433
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "CELLULAR_DATA"

    const/16 v2, 0x17

    const-string/jumbo v3, "Cellular Data"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->CELLULAR_DATA:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 434
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "LIVING_LANGUAGE"

    const/16 v2, 0x18

    const-string/jumbo v3, "Living Language"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LIVING_LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 435
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "DICTIONARY_BEHAVIOR"

    const/16 v2, 0x19

    const-string/jumbo v3, "Dictionary Behavior"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DICTIONARY_BEHAVIOR:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 436
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "UDB_WORD_COUNT"

    const/16 v2, 0x1a

    const-string/jumbo v3, "UDB Word Count"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->UDB_WORD_COUNT:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 437
    new-instance v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    const-string/jumbo v1, "DOWNLOAD_LANGUAGE_NAME"

    const/16 v2, 0x1b

    const-string/jumbo v3, "Language"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DOWNLOAD_LANGUAGE_NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    .line 409
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->BROWSE_TIME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->CATEGORY:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->ERROR_CODE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->ERROR_DESCRIPTION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->EVENT_ERR:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LOCATION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->PAYMENT_PROVIDER:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->POSITION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->PRICE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->RESULT:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->TAB_PREVIEWED_FROM:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->THEME_NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->TYPE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->USER_ACTION:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DLM_REQUEST_TYPE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->BACKUP_SYNC_STATUS:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DLM_DISCARD_REASON:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DLM_DISCARD_WORD:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LOAD_TIME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->NUMBER_ROW:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->SECONDARY_CHARACTERS:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->CELLULAR_DATA:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->LIVING_LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DICTIONARY_BEHAVIOR:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->UDB_WORD_COUNT:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->DOWNLOAD_LANGUAGE_NAME:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

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
    .line 441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 442
    iput-object p3, p0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->attribute:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/UsageData$EventAttribute;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 409
    const-class v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/UsageData$EventAttribute;
    .registers 1

    .prologue
    .line 409
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->$VALUES:[Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->attribute:Ljava/lang/String;

    return-object v0
.end method
