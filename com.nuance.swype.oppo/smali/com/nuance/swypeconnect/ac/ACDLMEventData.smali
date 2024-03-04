.class public Lcom/nuance/swypeconnect/ac/ACDLMEventData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field static final DLM_EVENT_TYPE_DELETE_ALL:I = 0x28

.field public static final DLM_EVENT_TYPE_DELETE_CATEGORY:I = 0x29

.field public static final DLM_EVENT_TYPE_DELETE_CATEGORY_LANGUAGE:I = 0x2b

.field public static final DLM_EVENT_TYPE_DELETE_LANGUAGE:I = 0x2a

.field public static final DLM_EVENT_TYPE_DELETE_WORD:I = 0x16

.field public static final DLM_EVENT_TYPE_MARK_NON_USE:I = 0x19

.field public static final DLM_EVENT_TYPE_MARK_UNDO:I = 0x18

.field public static final DLM_EVENT_TYPE_MARK_USE:I = 0x17

.field public static final DLM_EVENT_TYPE_NEW_CATEGORY:I = 0x14

.field public static final DLM_EVENT_TYPE_STRING_MARK_USE:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
