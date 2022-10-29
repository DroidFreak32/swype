.class public final enum Lcom/nuance/swype/usagedata/CustomDimension$Dimension;
.super Ljava/lang/Enum;
.source "CustomDimension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/usagedata/CustomDimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Dimension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/usagedata/CustomDimension$Dimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum ABC_KEYBOARD_MODE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum AUTO_CORRECT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum BILINGUAL:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum CLOUD_INPUT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum DEVICE_TYPE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum DICTIONARY_BEHAVIOR:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum DICTIONARY_WORDS:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum EMOJI_PREDICTION:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum ENABLE_HWR:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum KB_HEIGHT_LANDSCAPE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum KB_HEIGHT_PORTRAIT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum KEYBOARD_LANGUAGE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum KEYBOARD_LAYOUT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum LONG_PRESS_DELAY:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum NEXT_WORD_PREDICTION:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum NUMBER_ROW:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum PACKAGE_ID:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum SECONDARY_ENABLED:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum SOUND_ON_KEYPRESS:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

.field public static final enum THEME_NAME:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;


# instance fields
.field final index:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 13
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "KEYBOARD_LANGUAGE"

    const-string/jumbo v2, "KEYBOARD_LANGUAGE"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KEYBOARD_LANGUAGE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 14
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "DEVICE_TYPE"

    const-string/jumbo v2, "DEVICE_TYPE"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->DEVICE_TYPE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 15
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "KEYBOARD_LAYOUT"

    const-string/jumbo v2, "KEYBOARD_LAYOUT"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KEYBOARD_LAYOUT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 16
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "ABC_KEYBOARD_MODE"

    const-string/jumbo v2, "ABC_KEYBOARD_MODE"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->ABC_KEYBOARD_MODE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 17
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "THEME_NAME"

    const-string/jumbo v2, "THEME_NAME"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->THEME_NAME:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 18
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "BILINGUAL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string/jumbo v4, "BILINGUAL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->BILINGUAL:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 19
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "AUTO_CORRECT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string/jumbo v4, "AUTO_CORRECT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->AUTO_CORRECT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 20
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "NUMBER_ROW"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string/jumbo v4, "NUMBER_ROW"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->NUMBER_ROW:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 21
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "SECONDARY_ENABLED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string/jumbo v4, "SECONDARY_ENABLED"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->SECONDARY_ENABLED:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 22
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "PACKAGE_ID"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string/jumbo v4, "PACKAGE_ID"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->PACKAGE_ID:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 23
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "ENABLE_HWR"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-string/jumbo v4, "ENABLE_HWR"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->ENABLE_HWR:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 24
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "KB_HEIGHT_PORTRAIT"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const-string/jumbo v4, "KB_HEIGHT_PORTRAIT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KB_HEIGHT_PORTRAIT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 25
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "KB_HEIGHT_LANDSCAPE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const-string/jumbo v4, "KB_HEIGHT_LANDSCAPE"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KB_HEIGHT_LANDSCAPE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 26
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "DICTIONARY_BEHAVIOR"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const-string/jumbo v4, "DICTIONARY_BEHAVIOR"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->DICTIONARY_BEHAVIOR:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 27
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "DICTIONARY_WORDS"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const-string/jumbo v4, "DICTIONARY_WORDS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->DICTIONARY_WORDS:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 28
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "SOUND_ON_KEYPRESS"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const-string/jumbo v4, "SOUND_ON_KEYPRESS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->SOUND_ON_KEYPRESS:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 29
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "NEXT_WORD_PREDICTION"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const-string/jumbo v4, "NEXT_WORD_PREDICTION"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->NEXT_WORD_PREDICTION:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 30
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "LONG_PRESS_DELAY"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const-string/jumbo v4, "LONG_PRESS_DELAY"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->LONG_PRESS_DELAY:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 31
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "EMOJI_PREDICTION"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const-string/jumbo v4, "EMOJI_PREDICTION"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->EMOJI_PREDICTION:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 32
    new-instance v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    const-string/jumbo v1, "CLOUD_INPUT"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const-string/jumbo v4, "CLOUD_INPUT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->CLOUD_INPUT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 12
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    sget-object v1, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KEYBOARD_LANGUAGE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->DEVICE_TYPE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KEYBOARD_LAYOUT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->ABC_KEYBOARD_MODE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->THEME_NAME:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->BILINGUAL:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->AUTO_CORRECT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->NUMBER_ROW:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->SECONDARY_ENABLED:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->PACKAGE_ID:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->ENABLE_HWR:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KB_HEIGHT_PORTRAIT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KB_HEIGHT_LANDSCAPE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->DICTIONARY_BEHAVIOR:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->DICTIONARY_WORDS:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->SOUND_ON_KEYPRESS:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->NEXT_WORD_PREDICTION:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->LONG_PRESS_DELAY:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->EMOJI_PREDICTION:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->CLOUD_INPUT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->$VALUES:[Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "dimIndex"    # I
    .param p4, "dimTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->index:I

    .line 40
    iput-object p4, p0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->tag:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/usagedata/CustomDimension$Dimension;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/usagedata/CustomDimension$Dimension;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->$VALUES:[Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    invoke-virtual {v0}, [Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->tag:Ljava/lang/String;

    return-object v0
.end method
