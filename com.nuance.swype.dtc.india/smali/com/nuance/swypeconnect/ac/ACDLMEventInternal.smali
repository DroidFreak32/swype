.class abstract Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$1;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$ContentScannedDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseSyllableDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewWordSyllablePairDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteCategoryLanguageDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteLanguageDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteCategoryDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AdjustQualityDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkNonUseDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUseDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$DeleteWordDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;,
        Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;
    }
.end annotation


# static fields
.field public static final ADD_WORD:I = 0x15

.field public static final ADD_WORD_PAIR:I = 0x3c

.field public static final ADJUST_QUALITY:I = 0x1a

.field public static final CONTENT_SCANNED:I = 0x50

.field public static final DELETE_ALL:I = 0x28

.field public static final DELETE_CATEGORY:I = 0x29

.field public static final DELETE_CATEGORY_LANGUAGE:I = 0x2b

.field public static final DELETE_LANGUAGE:I = 0x2a

.field public static final DELETE_WORD:I = 0x16

.field public static final LOCATION:I = 0xc9

.field public static final MARK_NON_USE:I = 0x19

.field public static final MARK_UNDO:I = 0x18

.field public static final MARK_USE:I = 0x17

.field public static final MARK_USE_HP:I = 0x1d

.field public static final MARK_USE_NA:I = 0x1c

.field public static final MARK_USE_WITH_SYLLABLE:I = 0x3e

.field public static final MARK_USE_WITH_SYLLABLE_NA:I = 0x3f

.field public static final MAX_CATEGORY_INFO_LEN:I = 0x40

.field public static final MAX_CATEGORY_NAME_LEN:I = 0x20

.field public static final MAX_SPELLING_LEN:I = 0xa0

.field public static final MAX_WORD_LEN:I = 0x40

.field public static final MAX_WORD_SYLLABLE_LEN:I = 0x20

.field public static final NEW_CATEGORY:I = 0x14

.field public static final NEW_WORD_NA:I = 0x1b

.field public static final NEW_WORD_SYLLABLE_PAIR:I = 0x3d

.field public static final NEW_WORD_SYLLABLE_PAIR_NA:I = 0x40

.field public static final NEW_WORK_SYLLABLE_PAIR_EX:I = 0x41

.field public static final SPEED:I = 0xca

.field public static final STRING_MARK_USE:I = 0x64

.field public static final TIME:I = 0xc8

.field private static log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;->type:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/nuance/swypeconnect/ac/ACDLMEventInternal$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;-><init>(I)V

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;->type:I

    return v0
.end method
