.class public Lcom/nuance/swype/input/hardkey/HardKeyboardManager;
.super Ljava/lang/Object;
.source "HardKeyboardManager.java"


# static fields
.field private static final AZERTY_MODE:Ljava/lang/String; = "AZERTY_LATIN"

.field private static final DELAY_TIME:I = 0xc8

.field public static final HardKB_SUFFIX:Ljava/lang/String; = "_HKB"

.field private static final JA_SPECIAL_CODE:I = 0x30fc

.field public static final KEYCODE_CAPS_LOCK:I = 0x73

.field public static final KEYCODE_ESCAPE:I = 0x6f

.field public static final KEYCODE_FORWARD_DEL:I = 0x70

.field public static final KEYCODE_MOVE_END:I = 0x7b

.field public static final KEYCODE_MOVE_HOME:I = 0x7a

.field public static final KEYCODE_NUMPAD_0:I = 0x90

.field public static final KEYCODE_NUMPAD_9:I = 0x99

.field public static final KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final KEYCODE_NUMPAD_ENTER:I = 0xa0

.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final META_ALL_MASK:I = 0x7770ff

.field public static final META_ALT_LEFT_ON:I = 0x10

.field public static final META_ALT_LOCKED:I = 0x200

.field public static final META_ALT_ON:I = 0x2

.field public static final META_ALT_RIGHT_ON:I = 0x20

.field public static final META_CAPS_LOCK_ON:I = 0x100000

.field public static final META_CAP_LOCKED:I = 0x100

.field public static final META_CTRL_LEFT_ON:I = 0x2000

.field public static final META_CTRL_ON:I = 0x1000

.field public static final META_CTRL_RIGHT_ON:I = 0x4000

.field public static final META_FUNCTION_ON:I = 0x8

.field private static final META_LOCK_MASK:I = 0x700000

.field public static final META_META_LEFT_ON:I = 0x20000

.field public static final META_META_ON:I = 0x10000

.field public static final META_META_RIGHT_ON:I = 0x40000

.field private static final META_MODIFIER_MASK:I = 0x770ff

.field public static final META_NUM_LOCK_ON:I = 0x200000

.field public static final META_SCROLL_LOCK_ON:I = 0x400000

.field public static final META_SELECTING:I = 0x800

.field public static final META_SHIFT_LEFT_ON:I = 0x40

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SHIFT_RIGHT_ON:I = 0x80

.field public static final META_SYM_LOCKED:I = 0x400

.field public static final META_SYM_ON:I = 0x4

.field private static final MSG_LONGPRESS:I = 0x3ed

.field private static final QUICK_PRESS:I = 0x2ee

.field private static final QWERTY_MODE:Ljava/lang/String; = "QWERTY_LATIN"

.field private static final QWERTZ_MODE:Ljava/lang/String; = "QWERTZ_LATIN"

.field private static final SEMICOLON:I = 0x3b

.field public static final SHORTCUT_ADD_TO_DICTIONARY:Ljava/lang/String; = "DICTIONARY_HKB"

.field public static final SHORTCUT_SETTINGS:Ljava/lang/String; = "SETTINGS_HKB"

.field public static final SHORTCUT_TO_SELECT_NWP:Ljava/lang/String; = "NWP_HKB"

.field private static isCapsLocked:Z

.field public static final resourceIDs:[I


# instance fields
.field private currentLatinMode:Ljava/lang/String;

.field private currentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field protected isNonQwertyPhisicalKeyboardLayoutSet:Z

.field private final mHandler:Landroid/os/Handler;

.field protected mHardLangPopupMenuShownOnce:Z

.field private mIme:Lcom/nuance/swype/input/IME;

.field private mLastKeyTime:J

.field private primaryUniCode:I

.field private specialKeyMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;>;"
        }
    .end annotation
.end field

.field private standardQwertyKeyCodeScanCodeMapping:Landroid/util/SparseIntArray;

.field private supportedInputModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    const/16 v0, 0x16

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/nuance/swype/input/R$array;->zhuyin_qwerty_e0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/nuance/swype/input/R$array;->zhuyin_qwerty_e0:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/nuance/swype/input/R$array;->zhuyin_qwerty_e0:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/nuance/swype/input/R$array;->zhuyin_qwerty_e0:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/nuance/swype/input/R$array;->pinyin_qwerty_e0:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/nuance/swype/input/R$array;->doublepinyin_e1:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/nuance/swype/input/R$array;->national_112:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/nuance/swype/input/R$array;->AZERTY_LATIN:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lcom/nuance/swype/input/R$array;->QWERTZ_LATIN:I

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->resourceIDs:[I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 1
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->supportedInputModes:Ljava/util/List;

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->standardQwertyKeyCodeScanCodeMapping:Landroid/util/SparseIntArray;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->specialKeyMappings:Ljava/util/HashMap;

    .line 684
    new-instance v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;-><init>(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)V

    iput-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->handlerCallback:Landroid/os/Handler$Callback;

    .line 711
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object p1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method private handleChineseLanguage(Landroid/view/KeyEvent;I)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "primaryCode"    # I

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x3ed

    .line 483
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticLowerCase(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 487
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    :cond_1
    :goto_0
    return v1

    .line 490
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 492
    iget v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 493
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    add-int/lit8 v3, v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 497
    .local v0, "msg":Landroid/os/Message;
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 495
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 501
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 504
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 506
    iget v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 508
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasNoModifiers(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAlphabeticLowerCase(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 669
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAlphabeticUpperCase(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 678
    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAltPressed(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 726
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCapsLockOn(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 730
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCtrlPressed(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKoreanDoubleJamoKey(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 673
    const/16 v0, 0x51

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    const/16 v0, 0x45

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumLockOn(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 763
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShiftPressed(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalizeMetaState(I)I
    .locals 1
    .param p0, "metaState"    # I

    .prologue
    .line 738
    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_0

    .line 739
    or-int/lit8 p0, p0, 0x1

    .line 741
    :cond_0
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_1

    .line 742
    or-int/lit8 p0, p0, 0x2

    .line 744
    :cond_1
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_2

    .line 745
    or-int/lit16 p0, p0, 0x1000

    .line 747
    :cond_2
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_3

    .line 748
    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    .line 750
    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    .line 751
    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    .line 753
    :cond_4
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_5

    .line 754
    or-int/lit8 p0, p0, 0x2

    .line 756
    :cond_5
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_6

    .line 757
    or-int/lit8 p0, p0, 0x4

    .line 759
    :cond_6
    const v0, 0x7770ff

    and-int/2addr v0, p0

    return v0
.end method

.method private onHardKeyEventLatinMultiple(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method private parseKeyMapping(Ljava/lang/String;)[I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, "count":I
    const/4 v3, 0x0

    .line 298
    .local v3, "lastIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 299
    add-int/lit8 v1, v1, 0x1

    .line 300
    :goto_0
    const-string v7, ","

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_0
    new-array v6, v1, [I

    .line 305
    .local v6, "values":[I
    const/4 v1, 0x0

    .line 306
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v4, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 309
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 319
    .local v0, "chr":I
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput v0, v6, v1

    move v1, v2

    .line 321
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 316
    .end local v0    # "chr":I
    :catch_0
    move-exception v7

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "chr":I
    goto :goto_2

    .line 322
    .end local v0    # "chr":I
    .end local v5    # "token":Ljava/lang/String;
    :cond_1
    return-object v6
.end method


# virtual methods
.method public onHardKeyEventLatinDown(Landroid/view/KeyEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 512
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 513
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v7

    if-eqz v7, :cond_0

    instance-of v7, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;

    if-eqz v7, :cond_0

    move-object v7, v1

    .line 514
    check-cast v7, Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 517
    :cond_0
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v7

    .line 518
    sput-boolean v7, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    if-eqz v7, :cond_3

    .line 519
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_0
    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 525
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 526
    .local v2, "keyCode":I
    sparse-switch v2, :sswitch_data_0

    .line 579
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    .line 581
    .local v4, "primaryCode":I
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->removeHardKeyboardRecaptureCandidates()Z

    .line 582
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v4, :cond_b

    .line 583
    :cond_1
    const/4 v7, 0x0

    .line 661
    .end local v4    # "primaryCode":I
    :goto_2
    return v7

    .line 519
    .end local v2    # "keyCode":I
    :cond_2
    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_0

    .line 522
    :cond_3
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_3
    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_3

    .line 528
    .restart local v2    # "keyCode":I
    :sswitch_0
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 530
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 531
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyBackspace(I)Z

    move-result v7

    goto :goto_2

    .line 533
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyDelete(I)Z

    move-result v7

    goto :goto_2

    .line 535
    :sswitch_1
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyBackspace(I)Z

    move-result v7

    goto :goto_2

    .line 538
    :sswitch_2
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isShowingAddToDictionaryTip()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isAddToDictionaryTipHighlighted()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 539
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->addHardKeyOOVToDictionary()Z

    .line 540
    const/4 v7, 0x1

    goto :goto_2

    .line 542
    :cond_6
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardkeyEnter()Z

    .line 543
    const/4 v7, 0x1

    goto :goto_2

    .line 546
    :sswitch_3
    const/4 v7, 0x1

    goto :goto_2

    .line 548
    :sswitch_4
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x1

    :goto_4
    sput-boolean v7, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    .line 549
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 550
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    sget-boolean v10, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    invoke-virtual {v7, v10}, Lcom/nuance/swype/input/IME;->showCapLockState(Z)V

    .line 552
    :cond_7
    sget-boolean v7, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardKeyCapsLock(Z)Z

    .line 553
    const/4 v7, 0x1

    goto :goto_2

    .line 548
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 555
    :sswitch_5
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isShowingAddToDictionaryTip()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isAddToDictionaryTipHighlighted()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 556
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->addHardKeyOOVToDictionary()Z

    .line 557
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 559
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 560
    .local v8, "when":J
    iget-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    const-wide/16 v12, 0x2ee

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_a

    const/4 v5, 0x1

    .line 561
    .local v5, "quickPressed":Z
    :goto_5
    iput-wide v8, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    .line 562
    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeySpace(ZI)Z

    move-result v7

    goto/16 :goto_2

    .line 560
    .end local v5    # "quickPressed":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    .line 566
    .end local v8    # "when":J
    :sswitch_6
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView;->handleHardKeyDirectionKey(I)Z

    move-result v7

    goto/16 :goto_2

    .line 568
    :sswitch_7
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView;->handleHardKeyDirectionKey(I)Z

    move-result v7

    goto/16 :goto_2

    .line 570
    :sswitch_8
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyHomeKey()Z

    move-result v7

    goto/16 :goto_2

    .line 572
    :sswitch_9
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyEndKey()Z

    move-result v7

    goto/16 :goto_2

    .line 574
    :sswitch_a
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyEscapeKey()Z

    move-result v7

    goto/16 :goto_2

    .line 586
    .restart local v4    # "primaryCode":I
    :cond_b
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->standardQwertyKeyCodeScanCodeMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-lez v7, :cond_c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v7

    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->standardQwertyKeyCodeScanCodeMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-eq v7, v10, :cond_c

    .line 589
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isNonQwertyPhisicalKeyboardLayoutSet:Z

    .line 592
    :cond_c
    iget-boolean v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isNonQwertyPhisicalKeyboardLayoutSet:Z

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentMap:Ljava/util/HashMap;

    if-eqz v7, :cond_e

    .line 593
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentLatinMode:Ljava/lang/String;

    const-string v10, "AZERTY_LATIN"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentLatinMode:Ljava/lang/String;

    const-string v10, "QWERTZ_LATIN"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 594
    :cond_d
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 596
    .local v0, "convertedKeyCode":[I
    if-eqz v0, :cond_e

    .line 597
    const/4 v7, 0x0

    aget v4, v0, v7

    .line 601
    .end local v0    # "convertedKeyCode":[I
    :cond_e
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticLowerCase(I)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v7

    if-eqz v7, :cond_13

    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_13

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 603
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3ed

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 604
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 606
    :cond_10
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3ed

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_12

    .line 607
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 608
    add-int/lit8 v4, v4, 0x20

    .line 610
    :cond_11
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3ed

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 611
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 613
    .end local v3    # "msg":Landroid/os/Message;
    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 615
    :cond_13
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3ed

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 616
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 619
    :cond_14
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 620
    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 622
    add-int/lit8 v4, v4, 0x20

    .line 624
    :cond_15
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticLowerCase(I)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 625
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->setHardKeyboardSystemSettings()V

    .line 627
    :cond_16
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v7

    if-eqz v7, :cond_17

    const/16 v7, 0x3b

    if-ne v4, v7, :cond_17

    .line 628
    const/16 v4, 0x30fc

    .line 630
    :cond_17
    const/16 v7, 0x900

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->setHardkeyLayoutID(I)V

    .line 631
    sget-boolean v7, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 632
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 633
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v4

    .line 634
    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 646
    :cond_18
    :goto_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_1e

    .line 647
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 649
    .restart local v8    # "when":J
    iget-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_1d

    const/4 v7, 0x1

    .line 650
    :goto_7
    if-nez v7, :cond_1a

    .line 651
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual {v1, v4, v7, v10}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v7

    if-nez v7, :cond_19

    .line 652
    const/4 v7, 0x0

    invoke-virtual {v1, v4, p1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V

    .line 654
    :cond_19
    const-wide/16 v10, 0xc8

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    .line 661
    .end local v8    # "when":J
    :cond_1a
    :goto_8
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 636
    :cond_1b
    sget-boolean v7, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardKeyCapsLock(Z)Z

    goto :goto_6

    .line 638
    :cond_1c
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 639
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v6

    .line 640
    .local v6, "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 642
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 649
    .end local v6    # "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    .restart local v8    # "when":J
    :cond_1d
    const/4 v7, 0x0

    goto :goto_7

    .line 657
    .end local v8    # "when":J
    :cond_1e
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual {v1, v4, v7, v10}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 658
    const/4 v7, 0x0

    invoke-virtual {v1, v4, p1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V

    goto :goto_8

    .line 526
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_6
        0x14 -> :sswitch_7
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x3b -> :sswitch_3
        0x3c -> :sswitch_3
        0x3e -> :sswitch_5
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x6f -> :sswitch_a
        0x70 -> :sswitch_0
        0x73 -> :sswitch_4
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
        0xa0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onHardKeyEventLatinUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public onHardKeyEventSpecialDown(Landroid/view/KeyEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 326
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 327
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 328
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v7

    .line 329
    .local v7, "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 331
    const/4 v10, 0x0

    .line 479
    .end local v7    # "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    :goto_0
    return v10

    .line 333
    :cond_0
    instance-of v10, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-eqz v10, :cond_2

    .line 334
    iget-boolean v10, v1, Lcom/nuance/swype/input/InputView;->gridCandidateTableVisible:Z

    if-eqz v10, :cond_1

    move-object v10, v1

    .line 335
    check-cast v10, Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v10}, Lcom/nuance/swype/input/chinese/ChineseInputView;->closeGridCandidatesView()V

    :cond_1
    move-object v10, v1

    .line 337
    check-cast v10, Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v10}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSymbolPageShown()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 338
    const/4 v10, 0x0

    goto :goto_0

    .line 342
    :cond_2
    instance-of v10, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-eqz v10, :cond_3

    .line 343
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v10

    .line 344
    sput-boolean v10, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    if-eqz v10, :cond_6

    .line 345
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_1
    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 352
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 353
    .local v2, "keyCode":I
    sparse-switch v2, :sswitch_data_0

    .line 404
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputView;->removeHardKeyboardRecaptureCandidates()Z

    .line 405
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v10

    iput v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 406
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v10

    if-nez v10, :cond_4

    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    if-nez v10, :cond_f

    .line 407
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 345
    .end local v2    # "keyCode":I
    :cond_5
    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_1

    .line 348
    :cond_6
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_3
    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_2

    :cond_7
    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_3

    .line 355
    .restart local v2    # "keyCode":I
    :sswitch_0
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 357
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 358
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->handleHardkeyBackspace(I)Z

    move-result v10

    goto :goto_0

    .line 360
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->handleHardkeyDelete(I)Z

    move-result v10

    goto/16 :goto_0

    .line 362
    :sswitch_1
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->handleHardkeyBackspace(I)Z

    move-result v10

    goto/16 :goto_0

    .line 365
    :sswitch_2
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardkeyEnter()Z

    .line 366
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 369
    :sswitch_3
    instance-of v10, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-eqz v10, :cond_9

    .line 370
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 372
    :cond_9
    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 373
    .local v6, "state":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_b

    :cond_a
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 375
    :cond_b
    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 377
    :cond_c
    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/InputView;->handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 378
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 381
    .end local v6    # "state":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :sswitch_4
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_d

    const/4 v10, 0x1

    :goto_4
    sput-boolean v10, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    .line 382
    sget-boolean v10, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->handleHardKeyCapsLock(Z)Z

    .line 383
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 381
    :cond_d
    const/4 v10, 0x0

    goto :goto_4

    .line 385
    :sswitch_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 386
    .local v8, "when":J
    iget-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    const-wide/16 v12, 0x2ee

    add-long/2addr v10, v12

    cmp-long v10, v8, v10

    if-gez v10, :cond_e

    const/4 v5, 0x1

    .line 387
    .local v5, "quickPressed":Z
    :goto_5
    iput-wide v8, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    .line 388
    const/4 v10, 0x1

    invoke-virtual {v1, v5, v10}, Lcom/nuance/swype/input/InputView;->handleHardkeySpace(ZI)Z

    move-result v10

    goto/16 :goto_0

    .line 386
    .end local v5    # "quickPressed":Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_5

    .line 393
    .end local v8    # "when":J
    :sswitch_6
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView;->handleHardKeyDirectionKey(I)Z

    move-result v10

    goto/16 :goto_0

    .line 395
    :sswitch_7
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyHomeKey()Z

    move-result v10

    goto/16 :goto_0

    .line 397
    :sswitch_8
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyEndKey()Z

    move-result v10

    goto/16 :goto_0

    .line 399
    :sswitch_9
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyEscapeKey()Z

    move-result v10

    goto/16 :goto_0

    .line 410
    :cond_f
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 411
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, p1, v10}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->handleChineseLanguage(Landroid/view/KeyEvent;I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 412
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 416
    :cond_10
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 418
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 419
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v10

    iput v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 421
    :cond_11
    instance-of v10, v1, Lcom/nuance/swype/input/korean/KoreanInputView;

    if-eqz v10, :cond_14

    .line 422
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v10

    sget-object v11, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v10, v11, :cond_12

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 423
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v10

    iput v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    move-object v10, v1

    .line 424
    check-cast v10, Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v10}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleShiftKey()V

    .line 426
    :cond_12
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, v10}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v10

    if-eqz v10, :cond_13

    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, v10}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isKoreanDoubleJamoKey(I)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v10, v10, Lcom/nuance/swype/input/BilingualLanguage;

    if-nez v10, :cond_13

    .line 429
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    add-int/lit8 v10, v10, 0x20

    iput v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 431
    :cond_13
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    .line 437
    :cond_14
    iget v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 439
    .local v3, "lastPrimaryCode":I
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentMap:Ljava/util/HashMap;

    iget v11, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 441
    .local v0, "convertedKeyCode":[I
    if-eqz v0, :cond_15

    .line 442
    const/4 v10, 0x0

    aget v10, v0, v10

    iput v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 445
    :cond_15
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticLowerCase(I)Z

    move-result v10

    if-nez v10, :cond_16

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isKoreanDoubleJamoKey(I)Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v10

    if-eqz v10, :cond_19

    :cond_16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    if-lez v10, :cond_19

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 450
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x3ed

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 451
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 453
    :cond_17
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x3ed

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_18

    .line 454
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x3ed

    iget v12, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 455
    .local v4, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v4, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 457
    .end local v4    # "msg":Landroid/os/Message;
    :cond_18
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 460
    :cond_19
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x3ed

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 461
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 463
    :cond_1a
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v10, v10, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v10, :cond_1b

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isKoreanDoubleJamoKey(I)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 466
    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 468
    :cond_1b
    const/16 v10, 0x900

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->setHardkeyLayoutID(I)V

    .line 469
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    if-lez v10, :cond_1e

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 471
    .restart local v8    # "when":J
    iget-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_1d

    const/4 v10, 0x1

    .line 472
    :goto_6
    if-nez v10, :cond_1c

    .line 473
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v0, p1, v11}, Lcom/nuance/swype/input/InputView;->handleHardkeyCharKey(I[ILandroid/view/KeyEvent;Z)V

    .line 474
    const-wide/16 v10, 0xc8

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    .line 479
    .end local v8    # "when":J
    :cond_1c
    :goto_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 471
    .restart local v8    # "when":J
    :cond_1d
    const/4 v10, 0x0

    goto :goto_6

    .line 477
    .end local v8    # "when":J
    :cond_1e
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v11

    invoke-virtual {v1, v10, v0, p1, v11}, Lcom/nuance/swype/input/InputView;->handleHardkeyCharKey(I[ILandroid/view/KeyEvent;Z)V

    goto :goto_7

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x3b -> :sswitch_3
        0x3c -> :sswitch_3
        0x3e -> :sswitch_5
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x6f -> :sswitch_9
        0x70 -> :sswitch_0
        0x73 -> :sswitch_4
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
        0xa0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 25
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    const/4 v10, 0x0

    .line 149
    .local v10, "inputView":Lcom/nuance/swype/input/InputView;
    :goto_0
    if-nez v10, :cond_1

    .line 150
    const/16 v21, 0x0

    .line 291
    :goto_1
    return v21

    .line 148
    .end local v10    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v10

    goto :goto_0

    .line 153
    .restart local v10    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_1
    invoke-virtual {v10}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v20

    .line 154
    .local v20, "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    if-eqz v20, :cond_3

    .line 155
    invoke-virtual/range {v20 .. v20}, Lcom/nuance/swype/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v21

    if-nez v21, :cond_2

    .line 157
    const/16 v21, 0x0

    goto :goto_1

    .line 159
    :cond_2
    sget-object v21, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual/range {v20 .. v21}, Lcom/nuance/swype/input/KeyboardSwitcher;->setKeyboardEntryLayerType(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 162
    :cond_3
    iget-object v0, v10, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    iget-object v0, v10, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 164
    iget-object v0, v10, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/SpeechWrapper;->stopSpeech()V

    .line 166
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_15

    .line 167
    invoke-static/range {p2 .. p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCtrlPressed(Landroid/view/KeyEvent;)Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-static/range {p2 .. p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 169
    .local v6, "handler":Landroid/os/Handler;
    const/16 v21, 0x73

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    const/16 v21, 0x73

    const-wide/16 v22, 0x0

    move/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    const/16 v21, 0x69

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    const/16 v21, 0x69

    const-wide/16 v22, 0xa

    move/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    const/16 v21, 0x1

    goto :goto_1

    .line 175
    .end local v6    # "handler":Landroid/os/Handler;
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAltPressed(Landroid/view/KeyEvent;)Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    const/16 v22, 0x3e

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 176
    invoke-virtual {v10}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 177
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 178
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/nuance/swype/input/IME;->showLanguagePopupMenu(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 181
    :cond_6
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 183
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 187
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v21

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v21

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v21

    if-eqz v21, :cond_15

    .line 189
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->supportedInputModes:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    sget v22, Lcom/nuance/swype/input/R$array;->supported_input_modes:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "arr$":[Ljava/lang/String;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v14, :cond_a

    aget-object v17, v4, v8

    .line 193
    .local v17, "modeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->supportedInputModes:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 196
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "modeName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->standardQwertyKeyCodeScanCodeMapping:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v21

    if-nez v21, :cond_b

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    sget v22, Lcom/nuance/swype/input/R$array;->KEYCODE_SCANCODE_QWERTY:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 200
    .local v12, "keyMap":[Ljava/lang/String;
    const/4 v11, 0x1

    .local v11, "item":I
    :goto_3
    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_b

    .line 201
    aget-object v21, v12, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->parseKeyMapping(Ljava/lang/String;)[I

    move-result-object v5

    .line 202
    .local v5, "chars":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->standardQwertyKeyCodeScanCodeMapping:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x1

    aget v23, v5, v23

    invoke-virtual/range {v21 .. v23}, Landroid/util/SparseIntArray;->put(II)V

    .line 200
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 206
    .end local v5    # "chars":[I
    .end local v11    # "item":I
    .end local v12    # "keyMap":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    .line 207
    .local v13, "languageID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 209
    .local v15, "mode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 210
    const-string v21, "national"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/nuance/swype/input/InputMethods$Language;->defaultGlobalInputMode:Ljava/lang/String;

    .line 212
    if-nez v15, :cond_c

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 219
    :cond_c
    const-string v21, "AZERTY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 220
    const-string v19, "AZERTY_LATIN"

    .line 226
    .local v19, "possibleMode":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentLatinMode:Ljava/lang/String;

    .line 230
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->supportedInputModes:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->supportedInputModes:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 232
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->specialKeyMappings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .line 233
    .local v16, "modeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    if-nez v16, :cond_14

    .line 234
    new-instance v16, Ljava/util/HashMap;

    .end local v16    # "modeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 235
    .restart local v16    # "modeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    sget-object v22, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->resourceIDs:[I

    aget v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 237
    .restart local v12    # "keyMap":[Ljava/lang/String;
    const-string v21, "0"

    const/16 v22, 0x0

    aget-object v22, v12, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 238
    const/4 v11, 0x1

    .restart local v11    # "item":I
    :goto_6
    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_13

    .line 239
    aget-object v21, v12, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->parseKeyMapping(Ljava/lang/String;)[I

    move-result-object v5

    .line 240
    .restart local v5    # "chars":[I
    array-length v0, v5

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    .line 241
    array-length v0, v5

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 242
    .local v18, "multiChars":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    array-length v0, v5

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v7, v0, :cond_10

    .line 243
    add-int/lit8 v21, v7, 0x1

    aget v21, v5, v21

    aput v21, v18, v7

    .line 242
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 221
    .end local v5    # "chars":[I
    .end local v7    # "i":I
    .end local v9    # "index":I
    .end local v11    # "item":I
    .end local v12    # "keyMap":[Ljava/lang/String;
    .end local v16    # "modeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    .end local v18    # "multiChars":[I
    .end local v19    # "possibleMode":Ljava/lang/String;
    :cond_d
    const-string v21, "QWERTZ"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 222
    const-string v19, "QWERTZ_LATIN"

    .restart local v19    # "possibleMode":Ljava/lang/String;
    goto/16 :goto_4

    .line 224
    .end local v19    # "possibleMode":Ljava/lang/String;
    :cond_e
    const-string v19, "QWERTY_LATIN"

    .restart local v19    # "possibleMode":Ljava/lang/String;
    goto/16 :goto_4

    .line 228
    .end local v19    # "possibleMode":Ljava/lang/String;
    :cond_f
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "possibleMode":Ljava/lang/String;
    goto/16 :goto_5

    .line 245
    .restart local v5    # "chars":[I
    .restart local v7    # "i":I
    .restart local v9    # "index":I
    .restart local v11    # "item":I
    .restart local v12    # "keyMap":[Ljava/lang/String;
    .restart local v16    # "modeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    .restart local v18    # "multiChars":[I
    :cond_10
    const/16 v21, 0x0

    aget v21, v5, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v7    # "i":I
    .end local v18    # "multiChars":[I
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 247
    :cond_11
    const/16 v21, 0x0

    aget v21, v5, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    aget v24, v5, v24

    aput v24, v22, v23

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 252
    .end local v5    # "chars":[I
    .end local v11    # "item":I
    :cond_12
    const-string v21, "1"

    const/16 v22, 0x0

    aget-object v22, v12, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 253
    const/4 v11, 0x1

    .restart local v11    # "item":I
    :goto_9
    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_13

    .line 254
    aget-object v21, v12, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->parseKeyMapping(Ljava/lang/String;)[I

    move-result-object v5

    .line 255
    .restart local v5    # "chars":[I
    add-int/lit8 v21, v11, 0x60

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 258
    .end local v5    # "chars":[I
    .end local v11    # "item":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->specialKeyMappings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v12    # "keyMap":[Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentMap:Ljava/util/HashMap;

    .line 271
    .end local v9    # "index":I
    .end local v13    # "languageID":Ljava/lang/String;
    .end local v15    # "mode":Ljava/lang/String;
    .end local v16    # "modeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    .end local v19    # "possibleMode":Ljava/lang/String;
    :cond_15
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v21

    if-nez v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v21

    if-eqz v21, :cond_19

    .line 272
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 281
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 261
    .restart local v13    # "languageID":Ljava/lang/String;
    .restart local v15    # "mode":Ljava/lang/String;
    .restart local v19    # "possibleMode":Ljava/lang/String;
    :cond_17
    const-string v21, "QWERTY_LATIN"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 262
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentMap:Ljava/util/HashMap;

    goto :goto_a

    .line 266
    :cond_18
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 274
    .end local v13    # "languageID":Ljava/lang/String;
    .end local v15    # "mode":Ljava/lang/String;
    .end local v19    # "possibleMode":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->onHardKeyEventLatinDown(Landroid/view/KeyEvent;)Z

    move-result v21

    goto/16 :goto_1

    .line 276
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->onHardKeyEventLatinUp(Landroid/view/KeyEvent;)Z

    move-result v21

    goto/16 :goto_1

    .line 278
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->onHardKeyEventLatinMultiple(Landroid/view/KeyEvent;)Z

    move-result v21

    goto/16 :goto_1

    .line 283
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    packed-switch v21, :pswitch_data_1

    .line 291
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 285
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->onHardKeyEventSpecialDown(Landroid/view/KeyEvent;)Z

    move-result v21

    goto/16 :goto_1

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 283
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method
