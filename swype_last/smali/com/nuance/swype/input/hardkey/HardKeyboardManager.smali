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

.field private static final resourceIDs:[I


# instance fields
.field private currentLatinMode:Ljava/lang/String;

.field private currentMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private isCapsLocked:Z

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
            "Landroid/util/SparseArray",
            "<[I>;>;"
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
    .registers 3

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
    .registers 3
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

    .line 674
    new-instance v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;-><init>(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)V

    iput-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->handlerCallback:Landroid/os/Handler$Callback;

    .line 703
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object p1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)Lcom/nuance/swype/input/IME;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method private handleChineseLanguage(Landroid/view/KeyEvent;I)Z
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "primaryCode"    # I

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x3ed

    .line 476
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_6b

    iget v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticLowerCase(I)Z

    move-result v2

    if-nez v2, :cond_23

    iget v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 477
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 478
    :cond_23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_6b

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 480
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 501
    :cond_37
    :goto_37
    return v1

    .line 483
    :cond_38
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_37

    .line 485
    iget v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 486
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    add-int/lit8 v3, v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 490
    .local v0, "msg":Landroid/os/Message;
    :goto_56
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_37

    .line 488
    .end local v0    # "msg":Landroid/os/Message;
    :cond_5e
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_56

    .line 494
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6b
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_37

    .line 497
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_8b

    iget v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 499
    iget v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 501
    :cond_8b
    const/4 v1, 0x0

    goto :goto_37
.end method

.method public static hasNoModifiers(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 726
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isAlphabeticLowerCase(I)Z
    .registers 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 659
    const/16 v0, 0x61

    if-lt p1, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isAlphabeticUpperCase(I)Z
    .registers 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 668
    const/16 v0, 0x41

    if-lt p1, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isAltPressed(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isCapsLockOn(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isCtrlPressed(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 710
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isKoreanDoubleJamoKey(I)Z
    .registers 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 663
    const/16 v0, 0x51

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x57

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x45

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x54

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x50

    if-ne p1, v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isNumLockOn(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 755
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isShiftPressed(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static normalizeMetaState(I)I
    .registers 2
    .param p0, "metaState"    # I

    .prologue
    .line 730
    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_6

    .line 731
    or-int/lit8 p0, p0, 0x1

    .line 733
    :cond_6
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_c

    .line 734
    or-int/lit8 p0, p0, 0x2

    .line 736
    :cond_c
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_12

    .line 737
    or-int/lit16 p0, p0, 0x1000

    .line 739
    :cond_12
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1a

    .line 740
    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    .line 742
    :cond_1a
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_21

    .line 743
    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    .line 745
    :cond_21
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_27

    .line 746
    or-int/lit8 p0, p0, 0x2

    .line 748
    :cond_27
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_2d

    .line 749
    or-int/lit8 p0, p0, 0x4

    .line 751
    :cond_2d
    const v0, 0x7770ff

    and-int/2addr v0, p0

    return v0
.end method

.method private onHardKeyEventLatinMultiple(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method private parseKeyMapping(Ljava/lang/String;)[I
    .registers 11
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

    if-lez v7, :cond_18

    .line 299
    add-int/lit8 v1, v1, 0x1

    .line 300
    :goto_a
    const-string/jumbo v7, ","

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_18

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 304
    :cond_18
    new-array v6, v1, [I

    .line 305
    .local v6, "values":[I
    const/4 v1, 0x0

    .line 306
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v7, ","

    invoke-direct {v4, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_23
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_46

    .line 309
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, "token":Ljava/lang/String;
    :try_start_31
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_38} :catch_3f

    move-result v0

    .line 319
    .local v0, "chr":I
    :goto_39
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput v0, v6, v1

    move v1, v2

    .line 321
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_23

    .line 316
    .end local v0    # "chr":I
    :catch_3f
    move-exception v7

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "chr":I
    goto :goto_39

    .line 322
    .end local v0    # "chr":I
    .end local v5    # "token":Ljava/lang/String;
    :cond_46
    return-object v6
.end method


# virtual methods
.method public onHardKeyEventLatinDown(Landroid/view/KeyEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 505
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 506
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v7

    if-eqz v7, :cond_1a

    instance-of v7, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;

    if-eqz v7, :cond_1a

    move-object v7, v1

    .line 507
    check-cast v7, Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 509
    :cond_1a
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    .line 510
    iget-boolean v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    if-eqz v7, :cond_4a

    .line 511
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_47

    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_2c
    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 515
    :goto_2f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 516
    .local v2, "keyCode":I
    sparse-switch v2, :sswitch_data_254

    .line 569
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    .line 571
    .local v4, "primaryCode":I
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->removeHardKeyboardRecaptureCandidates()Z

    .line 572
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v7

    if-nez v7, :cond_45

    if-nez v4, :cond_100

    .line 573
    :cond_45
    const/4 v7, 0x0

    .line 651
    .end local v4    # "primaryCode":I
    :goto_46
    return v7

    .line 511
    .end local v2    # "keyCode":I
    :cond_47
    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_2c

    .line 513
    :cond_4a
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_56

    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_52
    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_2f

    :cond_56
    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_52

    .line 518
    .restart local v2    # "keyCode":I
    :sswitch_59
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    .line 519
    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    const/4 v10, 0x0

    .line 518
    invoke-static {v7, v10}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 520
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_70

    .line 521
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyBackspace(I)Z

    move-result v7

    goto :goto_46

    .line 523
    :cond_70
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyDelete(I)Z

    move-result v7

    goto :goto_46

    .line 525
    :sswitch_76
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyBackspace(I)Z

    move-result v7

    goto :goto_46

    .line 528
    :sswitch_7c
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isShowingAddToDictionaryTip()Z

    move-result v7

    if-eqz v7, :cond_8d

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isAddToDictionaryTipHighlighted()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 529
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->addHardKeyOOVToDictionary()Z

    .line 530
    const/4 v7, 0x1

    goto :goto_46

    .line 532
    :cond_8d
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardkeyEnter()Z

    .line 533
    const/4 v7, 0x1

    goto :goto_46

    .line 536
    :sswitch_92
    const/4 v7, 0x0

    goto :goto_46

    .line 538
    :sswitch_94
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_b5

    const/4 v7, 0x1

    :goto_9b
    iput-boolean v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    .line 539
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 540
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-boolean v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    invoke-virtual {v7, v10}, Lcom/nuance/swype/input/IME;->showCapLockState(Z)V

    .line 542
    :cond_ae
    iget-boolean v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardKeyCapsLock(Z)Z

    .line 543
    const/4 v7, 0x1

    goto :goto_46

    .line 538
    :cond_b5
    const/4 v7, 0x0

    goto :goto_9b

    .line 545
    :sswitch_b7
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isShowingAddToDictionaryTip()Z

    move-result v7

    if-eqz v7, :cond_c9

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isAddToDictionaryTipHighlighted()Z

    move-result v7

    if-eqz v7, :cond_c9

    .line 546
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->addHardKeyOOVToDictionary()Z

    .line 547
    const/4 v7, 0x1

    goto/16 :goto_46

    .line 549
    :cond_c9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 550
    .local v8, "when":J
    iget-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    const-wide/16 v12, 0x2ee

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_e0

    const/4 v5, 0x1

    .line 551
    .local v5, "quickPressed":Z
    :goto_d7
    iput-wide v8, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    .line 552
    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeySpace(ZI)Z

    move-result v7

    goto/16 :goto_46

    .line 550
    .end local v5    # "quickPressed":Z
    :cond_e0
    const/4 v5, 0x0

    goto :goto_d7

    .line 556
    .end local v8    # "when":J
    :sswitch_e2
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView;->handleHardKeyDirectionKey(I)Z

    move-result v7

    goto/16 :goto_46

    .line 558
    :sswitch_e8
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView;->handleHardKeyDirectionKey(I)Z

    move-result v7

    goto/16 :goto_46

    .line 560
    :sswitch_ee
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyHomeKey()Z

    move-result v7

    goto/16 :goto_46

    .line 562
    :sswitch_f4
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyEndKey()Z

    move-result v7

    goto/16 :goto_46

    .line 564
    :sswitch_fa
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyEscapeKey()Z

    move-result v7

    goto/16 :goto_46

    .line 576
    .restart local v4    # "primaryCode":I
    :cond_100
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v7

    if-eqz v7, :cond_121

    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->standardQwertyKeyCodeScanCodeMapping:Landroid/util/SparseIntArray;

    .line 577
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-lez v7, :cond_121

    .line 578
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v7

    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->standardQwertyKeyCodeScanCodeMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-eq v7, v10, :cond_121

    .line 579
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isNonQwertyPhisicalKeyboardLayoutSet:Z

    .line 582
    :cond_121
    iget-boolean v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isNonQwertyPhisicalKeyboardLayoutSet:Z

    if-nez v7, :cond_156

    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v7

    if-eqz v7, :cond_156

    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentMap:Landroid/util/SparseArray;

    if-eqz v7, :cond_156

    .line 583
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentLatinMode:Ljava/lang/String;

    const-string/jumbo v10, "AZERTY_LATIN"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_149

    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentLatinMode:Ljava/lang/String;

    const-string/jumbo v10, "QWERTZ_LATIN"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_156

    .line 584
    :cond_149
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 586
    .local v0, "convertedKeyCode":[I
    if-eqz v0, :cond_156

    .line 587
    const/4 v7, 0x0

    aget v4, v0, v7

    .line 591
    .end local v0    # "convertedKeyCode":[I
    :cond_156
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticLowerCase(I)Z

    move-result v7

    if-nez v7, :cond_162

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v7

    if-eqz v7, :cond_1a3

    :cond_162
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_1a3

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_1a3

    .line 593
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3ed

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_17b

    .line 594
    const/4 v7, 0x1

    goto/16 :goto_46

    .line 596
    :cond_17b
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3ed

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_1a0

    .line 597
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v7

    if-eqz v7, :cond_18d

    .line 598
    add-int/lit8 v4, v4, 0x20

    .line 600
    :cond_18d
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3ed

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 601
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 603
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1a0
    const/4 v7, 0x1

    goto/16 :goto_46

    .line 605
    :cond_1a3
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3ed

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1b0

    .line 606
    const/4 v7, 0x1

    goto/16 :goto_46

    .line 609
    :cond_1b0
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v7

    if-eqz v7, :cond_1c3

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_1c3

    .line 610
    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 612
    add-int/lit8 v4, v4, 0x20

    .line 614
    :cond_1c3
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticLowerCase(I)Z

    move-result v7

    if-eqz v7, :cond_1cc

    .line 615
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->setHardKeyboardSystemSettings()V

    .line 617
    :cond_1cc
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v7

    if-eqz v7, :cond_1dc

    const/16 v7, 0x3b

    if-ne v4, v7, :cond_1dc

    .line 618
    const/16 v4, 0x30fc

    .line 620
    :cond_1dc
    const/16 v7, 0x900

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->setHardkeyLayoutID(I)V

    .line 621
    iget-boolean v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    if-eqz v7, :cond_22b

    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v7

    if-eqz v7, :cond_22b

    .line 622
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_225

    .line 623
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v4

    .line 624
    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 636
    :cond_1fe
    :goto_1fe
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_246

    .line 637
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 639
    .restart local v8    # "when":J
    iget-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_244

    const/4 v7, 0x1

    .line 640
    :goto_20f
    if-nez v7, :cond_222

    .line 641
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual {v1, v4, v7, v10}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v7

    if-nez v7, :cond_21d

    .line 642
    const/4 v7, 0x0

    invoke-virtual {v1, v4, p1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V

    .line 644
    :cond_21d
    const-wide/16 v10, 0xc8

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    .line 651
    .end local v8    # "when":J
    :cond_222
    :goto_222
    const/4 v7, 0x1

    goto/16 :goto_46

    .line 626
    :cond_225
    iget-boolean v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputView;->handleHardKeyCapsLock(Z)Z

    goto :goto_1fe

    .line 628
    :cond_22b
    iget-object v7, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v7

    if-eqz v7, :cond_1fe

    .line 629
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v6

    .line 630
    .local v6, "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    if-eqz v6, :cond_1fe

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v7

    if-eqz v7, :cond_1fe

    .line 632
    const/4 v7, 0x0

    goto/16 :goto_46

    .line 639
    .end local v6    # "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    .restart local v8    # "when":J
    :cond_244
    const/4 v7, 0x0

    goto :goto_20f

    .line 647
    .end local v8    # "when":J
    :cond_246
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-virtual {v1, v4, v7, v10}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v7

    if-nez v7, :cond_222

    .line 648
    const/4 v7, 0x0

    invoke-virtual {v1, v4, p1, v7}, Lcom/nuance/swype/input/InputView;->handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V

    goto :goto_222

    .line 516
    nop

    :sswitch_data_254
    .sparse-switch
        0x13 -> :sswitch_e2
        0x14 -> :sswitch_e8
        0x15 -> :sswitch_e2
        0x16 -> :sswitch_e2
        0x3b -> :sswitch_92
        0x3c -> :sswitch_92
        0x3e -> :sswitch_b7
        0x42 -> :sswitch_7c
        0x43 -> :sswitch_76
        0x6f -> :sswitch_fa
        0x70 -> :sswitch_59
        0x73 -> :sswitch_94
        0x7a -> :sswitch_ee
        0x7b -> :sswitch_f4
        0xa0 -> :sswitch_7c
    .end sparse-switch
.end method

.method public onHardKeyEventLatinUp(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method public onHardKeyEventSpecialDown(Landroid/view/KeyEvent;)Z
    .registers 16
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

    if-eqz v10, :cond_1e

    .line 328
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v7

    .line 329
    .local v7, "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    if-eqz v7, :cond_2c

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 331
    const/4 v10, 0x0

    .line 472
    .end local v7    # "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    :goto_1d
    return v10

    .line 333
    :cond_1e
    instance-of v10, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-eqz v10, :cond_2c

    .line 334
    iget-boolean v10, v1, Lcom/nuance/swype/input/InputView;->gridCandidateTableVisible:Z

    if-eqz v10, :cond_2c

    move-object v10, v1

    .line 335
    check-cast v10, Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v10}, Lcom/nuance/swype/input/chinese/ChineseInputView;->closeGridCandidatesView()V

    .line 339
    :cond_2c
    instance-of v10, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-eqz v10, :cond_45

    .line 340
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    .line 341
    iget-boolean v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    if-eqz v10, :cond_6a

    .line 342
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_67

    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_42
    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 347
    :cond_45
    :goto_45
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 348
    .local v2, "keyCode":I
    sparse-switch v2, :sswitch_data_252

    .line 400
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputView;->removeHardKeyboardRecaptureCandidates()Z

    .line 401
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v10

    iput v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 402
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v10

    if-nez v10, :cond_65

    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    if-nez v10, :cond_114

    .line 403
    :cond_65
    const/4 v10, 0x0

    goto :goto_1d

    .line 342
    .end local v2    # "keyCode":I
    :cond_67
    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_42

    .line 344
    :cond_6a
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_76

    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_72
    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_45

    :cond_76
    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_72

    .line 350
    .restart local v2    # "keyCode":I
    :sswitch_79
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    .line 351
    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    const/4 v11, 0x0

    .line 350
    invoke-static {v10, v11}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 352
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_90

    .line 353
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->handleHardkeyBackspace(I)Z

    move-result v10

    goto :goto_1d

    .line 355
    :cond_90
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->handleHardkeyDelete(I)Z

    move-result v10

    goto :goto_1d

    .line 357
    :sswitch_96
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->handleHardkeyBackspace(I)Z

    move-result v10

    goto :goto_1d

    .line 360
    :sswitch_9c
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardkeyEnter()Z

    .line 361
    const/4 v10, 0x1

    goto/16 :goto_1d

    .line 364
    :sswitch_a2
    instance-of v10, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-eqz v10, :cond_ae

    .line 365
    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 366
    const/4 v10, 0x0

    goto/16 :goto_1d

    .line 368
    :cond_ae
    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 369
    .local v6, "state":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_bc

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_c8

    .line 370
    :cond_bc
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_ca

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_ca

    .line 371
    :cond_c8
    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 373
    :cond_ca
    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/InputView;->handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 374
    const/4 v10, 0x0

    goto/16 :goto_1d

    .line 377
    .end local v6    # "state":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :sswitch_d0
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_e1

    const/4 v10, 0x1

    :goto_d7
    iput-boolean v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    .line 378
    iget-boolean v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLocked:Z

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->handleHardKeyCapsLock(Z)Z

    .line 379
    const/4 v10, 0x1

    goto/16 :goto_1d

    .line 377
    :cond_e1
    const/4 v10, 0x0

    goto :goto_d7

    .line 381
    :sswitch_e3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 382
    .local v8, "when":J
    iget-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    const-wide/16 v12, 0x2ee

    add-long/2addr v10, v12

    cmp-long v10, v8, v10

    if-gez v10, :cond_fa

    const/4 v5, 0x1

    .line 383
    .local v5, "quickPressed":Z
    :goto_f1
    iput-wide v8, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    .line 384
    const/4 v10, 0x1

    invoke-virtual {v1, v5, v10}, Lcom/nuance/swype/input/InputView;->handleHardkeySpace(ZI)Z

    move-result v10

    goto/16 :goto_1d

    .line 382
    .end local v5    # "quickPressed":Z
    :cond_fa
    const/4 v5, 0x0

    goto :goto_f1

    .line 389
    .end local v8    # "when":J
    :sswitch_fc
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView;->handleHardKeyDirectionKey(I)Z

    move-result v10

    goto/16 :goto_1d

    .line 391
    :sswitch_102
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyHomeKey()Z

    move-result v10

    goto/16 :goto_1d

    .line 393
    :sswitch_108
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyEndKey()Z

    move-result v10

    goto/16 :goto_1d

    .line 395
    :sswitch_10e
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->handleHardKeyEscapeKey()Z

    move-result v10

    goto/16 :goto_1d

    .line 406
    :cond_114
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v10

    if-eqz v10, :cond_129

    .line 407
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, p1, v10}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->handleChineseLanguage(Landroid/view/KeyEvent;I)Z

    move-result v10

    if-eqz v10, :cond_129

    .line 408
    const/4 v10, 0x1

    goto/16 :goto_1d

    .line 412
    :cond_129
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v10

    if-eqz v10, :cond_185

    .line 414
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCapsLockOn(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_147

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_147

    .line 415
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v10

    iput v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 417
    :cond_147
    instance-of v10, v1, Lcom/nuance/swype/input/korean/KoreanInputView;

    if-eqz v10, :cond_185

    .line 418
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v10

    sget-object v11, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v10, v11, :cond_167

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_167

    .line 419
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v10

    iput v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    move-object v10, v1

    .line 420
    check-cast v10, Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v10}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleShiftKey()V

    .line 422
    :cond_167
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, v10}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v10

    if-eqz v10, :cond_185

    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-direct {p0, v10}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isKoreanDoubleJamoKey(I)Z

    move-result v10

    if-nez v10, :cond_185

    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v10, v10, Lcom/nuance/swype/input/BilingualLanguage;

    if-nez v10, :cond_185

    .line 425
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    add-int/lit8 v10, v10, 0x20

    iput v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 430
    :cond_185
    iget v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 432
    .local v3, "lastPrimaryCode":I
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentMap:Landroid/util/SparseArray;

    iget v11, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 434
    .local v0, "convertedKeyCode":[I
    if-eqz v0, :cond_198

    .line 435
    const/4 v10, 0x0

    aget v10, v0, v10

    iput v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    .line 438
    :cond_198
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v10

    if-eqz v10, :cond_1ef

    .line 439
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticLowerCase(I)Z

    move-result v10

    if-nez v10, :cond_1b4

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isKoreanDoubleJamoKey(I)Z

    move-result v10

    if-eqz v10, :cond_1ef

    .line 440
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAlphabeticUpperCase(I)Z

    move-result v10

    if-eqz v10, :cond_1ef

    .line 441
    :cond_1b4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    if-lez v10, :cond_1ef

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_1ef

    .line 443
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x3ed

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_1cd

    .line 444
    const/4 v10, 0x1

    goto/16 :goto_1d

    .line 446
    :cond_1cd
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x3ed

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_1ec

    .line 447
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x3ed

    iget v12, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 448
    .local v4, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v4, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 450
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1ec
    const/4 v10, 0x1

    goto/16 :goto_1d

    .line 453
    :cond_1ef
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x3ed

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_1fc

    .line 454
    const/4 v10, 0x1

    goto/16 :goto_1d

    .line 456
    :cond_1fc
    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v10

    if-eqz v10, :cond_21f

    iget-object v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v10, v10, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v10, v10, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v10, :cond_21f

    .line 458
    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_21f

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isKoreanDoubleJamoKey(I)Z

    move-result v10

    if-eqz v10, :cond_21f

    .line 459
    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 461
    :cond_21f
    const/16 v10, 0x900

    invoke-virtual {v1, v10}, Lcom/nuance/swype/input/InputView;->setHardkeyLayoutID(I)V

    .line 462
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    if-lez v10, :cond_247

    .line 463
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 464
    .restart local v8    # "when":J
    iget-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    cmp-long v10, v8, v10

    if-gez v10, :cond_245

    const/4 v10, 0x1

    .line 465
    :goto_235
    if-nez v10, :cond_242

    .line 466
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v0, p1, v11}, Lcom/nuance/swype/input/InputView;->handleHardkeyCharKey(I[ILandroid/view/KeyEvent;Z)V

    .line 467
    const-wide/16 v10, 0xc8

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mLastKeyTime:J

    .line 472
    .end local v8    # "when":J
    :cond_242
    :goto_242
    const/4 v10, 0x1

    goto/16 :goto_1d

    .line 464
    .restart local v8    # "when":J
    :cond_245
    const/4 v10, 0x0

    goto :goto_235

    .line 470
    .end local v8    # "when":J
    :cond_247
    iget v10, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->primaryUniCode:I

    invoke-static {p1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v11

    invoke-virtual {v1, v10, v0, p1, v11}, Lcom/nuance/swype/input/InputView;->handleHardkeyCharKey(I[ILandroid/view/KeyEvent;Z)V

    goto :goto_242

    .line 348
    nop

    :sswitch_data_252
    .sparse-switch
        0x13 -> :sswitch_fc
        0x14 -> :sswitch_fc
        0x15 -> :sswitch_fc
        0x16 -> :sswitch_fc
        0x3b -> :sswitch_a2
        0x3c -> :sswitch_a2
        0x3e -> :sswitch_e3
        0x42 -> :sswitch_9c
        0x43 -> :sswitch_96
        0x6f -> :sswitch_10e
        0x70 -> :sswitch_79
        0x73 -> :sswitch_d0
        0x7a -> :sswitch_102
        0x7b -> :sswitch_108
        0xa0 -> :sswitch_9c
    .end sparse-switch
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 25
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    const/4 v8, 0x0

    .line 149
    .local v8, "inputView":Lcom/nuance/swype/input/InputView;
    :goto_9
    if-nez v8, :cond_19

    .line 150
    const/16 v18, 0x0

    .line 291
    :goto_d
    return v18

    .line 148
    .end local v8    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v8

    goto :goto_9

    .line 153
    .restart local v8    # "inputView":Lcom/nuance/swype/input/InputView;
    :cond_19
    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v17

    .line 154
    .local v17, "switcher":Lcom/nuance/swype/input/KeyboardSwitcher;
    if-eqz v17, :cond_2d

    .line 155
    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v18

    if-nez v18, :cond_28

    .line 157
    const/16 v18, 0x0

    goto :goto_d

    .line 159
    :cond_28
    sget-object v18, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual/range {v17 .. v18}, Lcom/nuance/swype/input/KeyboardSwitcher;->setKeyboardEntryLayerType(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 162
    :cond_2d
    iget-object v0, v8, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    move-object/from16 v18, v0

    if-eqz v18, :cond_44

    iget-object v0, v8, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    move-object/from16 v18, v0

    .line 163
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v18

    if-eqz v18, :cond_44

    .line 164
    iget-object v0, v8, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/SpeechWrapper;->stopSpeech()V

    .line 166
    :cond_44
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_344

    .line 167
    invoke-static/range {p2 .. p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isCtrlPressed(Landroid/view/KeyEvent;)Z

    move-result v18

    if-eqz v18, :cond_87

    invoke-static/range {p2 .. p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v18

    if-eqz v18, :cond_87

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 169
    .local v5, "handler":Landroid/os/Handler;
    const/16 v18, 0x73

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    const/16 v18, 0x73

    const-wide/16 v20, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    const/16 v18, 0x69

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    const/16 v18, 0x69

    const-wide/16 v20, 0xa

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    const/16 v18, 0x1

    goto :goto_d

    .line 175
    .end local v5    # "handler":Landroid/os/Handler;
    :cond_87
    invoke-static/range {p2 .. p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAltPressed(Landroid/view/KeyEvent;)Z

    move-result v18

    if-eqz v18, :cond_c2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    const/16 v19, 0x3e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c2

    .line 176
    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v18

    if-eqz v18, :cond_be

    .line 177
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    move/from16 v18, v0

    if-nez v18, :cond_ba

    .line 178
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/nuance/swype/input/IME;->showLanguagePopupMenu(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 181
    :cond_ba
    const/16 v18, 0x1

    goto/16 :goto_d

    .line 183
    :cond_be
    const/16 v18, 0x0

    goto/16 :goto_d

    .line 187
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v18

    if-nez v18, :cond_f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v18

    if-nez v18, :cond_f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v18, v0

    .line 188
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v18

    if-eqz v18, :cond_344

    .line 189
    :cond_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->supportedInputModes:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_131

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/nuance/swype/input/R$array;->supported_input_modes:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 192
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_11b
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_131

    aget-object v14, v19, v18

    .line 193
    .local v14, "modeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->supportedInputModes:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v18, v18, 0x1

    goto :goto_11b

    .line 196
    .end local v14    # "modeName":Ljava/lang/String;
    :cond_131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v18

    if-eqz v18, :cond_18d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->standardQwertyKeyCodeScanCodeMapping:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    .line 197
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    move-result v18

    if-nez v18, :cond_18d

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/nuance/swype/input/R$array;->KEYCODE_SCANCODE_QWERTY:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, "keyMap":[Ljava/lang/String;
    const/4 v9, 0x1

    .local v9, "item":I
    :goto_160
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_18d

    .line 201
    aget-object v18, v10, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->parseKeyMapping(Ljava/lang/String;)[I

    move-result-object v4

    .line 202
    .local v4, "chars":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->standardQwertyKeyCodeScanCodeMapping:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v4, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x1

    aget v20, v4, v20

    invoke-virtual/range {v18 .. v20}, Landroid/util/SparseIntArray;->put(II)V

    .line 200
    add-int/lit8 v9, v9, 0x1

    goto :goto_160

    .line 206
    .end local v4    # "chars":[I
    .end local v9    # "item":I
    .end local v10    # "keyMap":[Ljava/lang/String;
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 207
    .local v11, "languageID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 209
    .local v12, "mode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v18

    if-eqz v18, :cond_2ac

    .line 210
    const-string/jumbo v18, "national"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1f6

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/nuance/swype/input/InputMethods$Language;->defaultGlobalInputMode:Ljava/lang/String;

    .line 212
    if-nez v12, :cond_1f6

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 219
    :cond_1f6
    const-string/jumbo v18, "AZERTY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_297

    .line 220
    const-string/jumbo v16, "AZERTY_LATIN"

    .line 226
    .local v16, "possibleMode":Ljava/lang/String;
    :goto_204
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentLatinMode:Ljava/lang/String;

    .line 230
    :goto_20a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->supportedInputModes:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_373

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->supportedInputModes:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 232
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->specialKeyMappings:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 233
    .local v13, "modeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-nez v13, :cond_340

    .line 234
    new-instance v13, Landroid/util/SparseArray;

    .end local v13    # "modeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 235
    .restart local v13    # "modeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget-object v19, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->resourceIDs:[I

    aget v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 237
    .restart local v10    # "keyMap":[Ljava/lang/String;
    const-string/jumbo v18, "0"

    const/16 v19, 0x0

    aget-object v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_302

    .line 238
    const/4 v9, 0x1

    .restart local v9    # "item":I
    :goto_25f
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_333

    .line 239
    aget-object v18, v10, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->parseKeyMapping(Ljava/lang/String;)[I

    move-result-object v4

    .line 240
    .restart local v4    # "chars":[I
    array-length v0, v4

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2de

    .line 241
    array-length v0, v4

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    new-array v15, v0, [I

    .line 242
    .local v15, "multiChars":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_285
    array-length v0, v4

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v6, v0, :cond_2ca

    .line 243
    add-int/lit8 v18, v6, 0x1

    aget v18, v4, v18

    aput v18, v15, v6

    .line 242
    add-int/lit8 v6, v6, 0x1

    goto :goto_285

    .line 221
    .end local v4    # "chars":[I
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v9    # "item":I
    .end local v10    # "keyMap":[Ljava/lang/String;
    .end local v13    # "modeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v15    # "multiChars":[I
    .end local v16    # "possibleMode":Ljava/lang/String;
    :cond_297
    const-string/jumbo v18, "QWERTZ"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a7

    .line 222
    const-string/jumbo v16, "QWERTZ_LATIN"

    .restart local v16    # "possibleMode":Ljava/lang/String;
    goto/16 :goto_204

    .line 224
    .end local v16    # "possibleMode":Ljava/lang/String;
    :cond_2a7
    const-string/jumbo v16, "QWERTY_LATIN"

    .restart local v16    # "possibleMode":Ljava/lang/String;
    goto/16 :goto_204

    .line 228
    .end local v16    # "possibleMode":Ljava/lang/String;
    :cond_2ac
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "possibleMode":Ljava/lang/String;
    goto/16 :goto_20a

    .line 245
    .restart local v4    # "chars":[I
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    .restart local v9    # "item":I
    .restart local v10    # "keyMap":[Ljava/lang/String;
    .restart local v13    # "modeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v15    # "multiChars":[I
    :cond_2ca
    const/16 v18, 0x0

    aget v18, v4, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    .end local v6    # "i":I
    .end local v15    # "multiChars":[I
    :goto_2db
    add-int/lit8 v9, v9, 0x1

    goto :goto_25f

    .line 247
    :cond_2de
    const/16 v18, 0x0

    aget v18, v4, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    aget v21, v4, v21

    aput v21, v19, v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2db

    .line 252
    .end local v4    # "chars":[I
    .end local v9    # "item":I
    :cond_302
    const-string/jumbo v18, "1"

    const/16 v19, 0x0

    aget-object v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_333

    .line 253
    const/4 v9, 0x1

    .restart local v9    # "item":I
    :goto_310
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_333

    .line 254
    aget-object v18, v10, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->parseKeyMapping(Ljava/lang/String;)[I

    move-result-object v4

    .line 255
    .restart local v4    # "chars":[I
    add-int/lit8 v18, v9, 0x60

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    add-int/lit8 v9, v9, 0x1

    goto :goto_310

    .line 258
    .end local v4    # "chars":[I
    .end local v9    # "item":I
    :cond_333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->specialKeyMappings:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v10    # "keyMap":[Ljava/lang/String;
    :cond_340
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentMap:Landroid/util/SparseArray;

    .line 271
    .end local v7    # "index":I
    .end local v11    # "languageID":Ljava/lang/String;
    .end local v12    # "mode":Ljava/lang/String;
    .end local v13    # "modeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v16    # "possibleMode":Ljava/lang/String;
    :cond_344
    :goto_344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v18

    if-nez v18, :cond_368

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v18

    if-eqz v18, :cond_3ab

    .line 272
    :cond_368
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_3c0

    .line 281
    const/16 v18, 0x0

    goto/16 :goto_d

    .line 261
    .restart local v11    # "languageID":Ljava/lang/String;
    .restart local v12    # "mode":Ljava/lang/String;
    .restart local v16    # "possibleMode":Ljava/lang/String;
    :cond_373
    const-string/jumbo v18, "QWERTY_LATIN"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_389

    .line 262
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->currentMap:Landroid/util/SparseArray;

    goto :goto_344

    .line 266
    :cond_389
    const/16 v18, 0x0

    goto/16 :goto_d

    .line 274
    .end local v11    # "languageID":Ljava/lang/String;
    .end local v12    # "mode":Ljava/lang/String;
    .end local v16    # "possibleMode":Ljava/lang/String;
    :pswitch_38d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->onHardKeyEventLatinDown(Landroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_d

    .line 276
    :pswitch_397
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->onHardKeyEventLatinUp(Landroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_d

    .line 278
    :pswitch_3a1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->onHardKeyEventLatinMultiple(Landroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_d

    .line 283
    :cond_3ab
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_3ca

    .line 291
    const/16 v18, 0x0

    goto/16 :goto_d

    .line 285
    :pswitch_3b6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->onHardKeyEventSpecialDown(Landroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_d

    .line 272
    :pswitch_data_3c0
    .packed-switch 0x0
        :pswitch_38d
        :pswitch_397
        :pswitch_3a1
    .end packed-switch

    .line 283
    :pswitch_data_3ca
    .packed-switch 0x0
        :pswitch_3b6
    .end packed-switch
.end method
