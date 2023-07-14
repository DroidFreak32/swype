.class public Lcom/nuance/swypeconnect/ac/ACDLMEventData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACContentScannedDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACMarkUseSyllableDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACNewWordSyllablePairDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACStringMarkUseDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDeleteCategoryLanguageDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDeleteLanguageDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDeleteCategoryDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACAdjustQualityDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACMarkNonUseDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACMarkUndoUseDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACMarkUseDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDeleteWordDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACAddWordPairDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACNewCategoryDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACAddWordDLMEvent;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;
    }
.end annotation


# static fields
.field public static final DLM_EVENT_TYPE_ADD_WORD:I = 0x15

.field public static final DLM_EVENT_TYPE_ADD_WORD_PAIR:I = 0x3c

.field public static final DLM_EVENT_TYPE_ADJUST_QUALITY:I = 0x1a

.field public static final DLM_EVENT_TYPE_CONTENT_SCANNED:I = 0x50

.field static final DLM_EVENT_TYPE_DELETE_ALL:I = 0x28

.field public static final DLM_EVENT_TYPE_DELETE_CATEGORY:I = 0x29

.field public static final DLM_EVENT_TYPE_DELETE_CATEGORY_LANGUAGE:I = 0x2b

.field public static final DLM_EVENT_TYPE_DELETE_LANGUAGE:I = 0x2a

.field public static final DLM_EVENT_TYPE_DELETE_WORD:I = 0x16

.field static final DLM_EVENT_TYPE_LOCATION:I = 0xc9

.field public static final DLM_EVENT_TYPE_MARK_NON_USE:I = 0x19

.field public static final DLM_EVENT_TYPE_MARK_UNDO:I = 0x18

.field public static final DLM_EVENT_TYPE_MARK_USE:I = 0x17

.field public static final DLM_EVENT_TYPE_MARK_USE_HP:I = 0x1d

.field public static final DLM_EVENT_TYPE_MARK_USE_NA:I = 0x1c

.field public static final DLM_EVENT_TYPE_MARK_USE_WITH_SYLLABLE:I = 0x3e

.field public static final DLM_EVENT_TYPE_MARK_USE_WITH_SYLLABLE_NA:I = 0x3f

.field public static final DLM_EVENT_TYPE_NEW_CATEGORY:I = 0x14

.field public static final DLM_EVENT_TYPE_NEW_WORD_NA:I = 0x1b

.field public static final DLM_EVENT_TYPE_NEW_WORD_SYLLABLE_PAIR:I = 0x3d

.field public static final DLM_EVENT_TYPE_NEW_WORD_SYLLABLE_PAIR_NA:I = 0x40

.field public static final DLM_EVENT_TYPE_NEW_WORK_SYLLABLE_PAIR_EX:I = 0x41

.field static final DLM_EVENT_TYPE_SPEED:I = 0xca

.field public static final DLM_EVENT_TYPE_STRING_MARK_USE:I = 0x64

.field static final DLM_EVENT_TYPE_TIME:I = 0xc8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
