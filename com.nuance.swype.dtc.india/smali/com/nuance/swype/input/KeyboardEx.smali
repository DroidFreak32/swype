.class public Lcom/nuance/swype/input/KeyboardEx;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/KeyboardEx$KeyboardTraits;,
        Lcom/nuance/swype/input/KeyboardEx$Key;,
        Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;,
        Lcom/nuance/swype/input/KeyboardEx$Row;,
        Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;,
        Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;,
        Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;,
        Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_SPLIT_LEFT:I = 0x10

.field public static final EDGE_SPLIT_RIGHT:I = 0x20

.field public static final EDGE_TOP:I = 0x4

.field public static final GESTURE_KEYCODE_CASE_EDIT:I = -0x6e

.field public static final GESTURE_KEYCODE_GOOGLE_MAPS:I = -0x6b

.field public static final GESTURE_KEYCODE_HIDE_KEYBOARD:I = -0x6c

.field public static final GESTURE_KEYCODE_LAST_LANGUAGE:I = -0x6f

.field public static final GESTURE_KEYCODE_SEARCH:I = -0x70

.field public static final GESTURE_KEYCODE_SUPPRESS_AUTOSPACE:I = -0x6a

.field public static final GESTURE_KEYCODE_WWW:I = -0x6d

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYBOARDMODE_EMAIL_RESID:I = 0x2

.field public static final KEYBOARDMODE_IM_RESID:I = 0x4

.field public static final KEYBOARDMODE_NORMAL_RESID:I = 0x1

.field public static final KEYBOARDMODE_NUMBER_RESID:I = 0x8

.field public static final KEYBOARD_SCALE_MAX:F = 1.2f

.field public static final KEYBOARD_SCALE_MIN:F = 0.8f

.field public static final KEYC0DE_FULLWIDTH_PERIOD:I = 0x3002

.field public static final KEYCODE_ABC_LAYER:I = 0xfee

.field public static final KEYCODE_ACTIONONKEYBOARD_MENU:I = 0x192e

.field public static final KEYCODE_ALTPOPUP:I = -0xc8

.field public static final KEYCODE_ARROW_DOWN:I = 0xfdc

.field public static final KEYCODE_ARROW_LEFT:I = 0xfbd

.field public static final KEYCODE_ARROW_RIGHT:I = 0xfdb

.field public static final KEYCODE_ARROW_UP:I = 0xfcd

.field public static final KEYCODE_BACK:I = 0x8

.field public static final KEYCODE_CANGJIE_WILDCARD:I = 0xff1f

.field public static final KEYCODE_CLEAR_WORD:I = 0xfe1

.field public static final KEYCODE_COPY:I = 0xb52

.field public static final KEYCODE_CUT:I = 0xb51

.field public static final KEYCODE_DELETE:I = 0x8

.field public static final KEYCODE_DELETE_WORD:I = 0x191f

.field public static final KEYCODE_DELIMITER:I = 0x27

.field public static final KEYCODE_DOT_COM:I = 0xaa3d

.field public static final KEYCODE_DPAD_LEFT:I = 0xfdd

.field public static final KEYCODE_DPAD_RIGHT:I = 0xfde

.field public static final KEYCODE_EDIT_LAYER:I = 0x192c

.field public static final KEYCODE_EMOTICON:I = 0xfea

.field public static final KEYCODE_ENTER:I = 0xa

.field public static final KEYCODE_FULLWIDTH_QUESTIONMARK:I = 0xff1f

.field public static final KEYCODE_HANDWRITING:I = 0xb79

.field public static final KEYCODE_HIRACYCLE:I = 0xaa3a

.field public static final KEYCODE_INPUTMODE_MENU:I = 0x192f

.field public static final KEYCODE_INVALID:I = 0xfdf

.field public static final KEYCODE_KANACONVERT:I = 0xaa39

.field public static final KEYCODE_KEYBOARD:I = 0xb78

.field public static final KEYCODE_KEYBOARD_RESIZE:I = 0xb54

.field public static final KEYCODE_LANGUAGE_MENU:I = 0xff7

.field public static final KEYCODE_LANGUAGE_QUICK_SWITCH:I = 0xb7b

.field public static final KEYCODE_MODE_BACK:I = 0xaa38

.field public static final KEYCODE_MODE_CHANGE:I = 0x193e

.field public static final KEYCODE_MULTITAP_DEADKEY:I = 0xb7e

.field public static final KEYCODE_MULTITAP_TOGGLE:I = 0xb7c

.field public static final KEYCODE_NUM:I = 0xff5

.field public static final KEYCODE_PASTE:I = 0xb53

.field public static final KEYCODE_PHONE_PAUSE:I = 0xfe7

.field public static final KEYCODE_PHONE_WAIT:I = 0x191e

.field public static final KEYCODE_RANGE_CONVERT:I = -0x2b

.field public static final KEYCODE_RESIZE_FULL_SCREEN:I = -0x71

.field public static final KEYCODE_RESIZE_MINILEFT_SCREEN:I = -0x72

.field public static final KEYCODE_RESIZE_MINIMOVABLE_SCREEN:I = -0x75

.field public static final KEYCODE_RESIZE_MINIRIGHT_SCREEN:I = -0x73

.field public static final KEYCODE_RESIZE_SPLIT_SCREEN:I = -0x74

.field public static final KEYCODE_SEGMENTATION:I = 0xaa3c

.field public static final KEYCODE_SELECT:I = 0xaa39

.field public static final KEYCODE_SELECT_ALL:I = 0xb50

.field public static final KEYCODE_SETTINGS:I = 0xb7a

.field public static final KEYCODE_SHIFT:I = 0xfe4

.field public static final KEYCODE_SHIFT_RIGHT:I = 0x192d

.field public static final KEYCODE_SMILE_NO_RESIZE:I = -0x76

.field public static final KEYCODE_SPACE:I = 0x20

.field public static final KEYCODE_SPEECH:I = 0x193f

.field public static final KEYCODE_SPEECH_APP:I = 0xb7f

.field public static final KEYCODE_SWITCH_WRITE_SCREEN:I = 0xaa3b

.field public static final KEYCODE_SWYPE:I = 0xaa37

.field public static final KEYCODE_SYM_LAYER:I = 0xfed

.field public static final KEYCODE_TAB:I = 0x9

.field public static final KEYCODE_TONE1:I = 0xb1

.field public static final KEYCODE_TONE2:I = 0xb2

.field public static final KEYCODE_TONE3:I = 0xb3

.field public static final KEYCODE_TONE4:I = 0xb4

.field public static final KEYCODE_TONE5:I = 0xb5

.field public static final KEYCODE_XT9_LANGUAGE_CYCLING:I = 0xb7d

.field public static final KEYCODE_ZERO_KEYPAD:I = 0x31

.field public static final KEY_TYPE_FUNCTION:I = 0x4

.field public static final KEY_TYPE_NONREGIONAL:I = 0x1

.field public static final KEY_TYPE_REGIONAL:I = 0x0

.field public static final KEY_TYPE_SMART_PUNCT:I = 0x2

.field public static final KEY_TYPE_TEXT:I = 0x3

.field public static final KEY_TYPE_UNSPECIFIED:I = -0x1

.field public static final ROW_TYPE_NONNUMBER:I = 0x0

.field public static final ROW_TYPE_NUMBER:I = 0x1

.field private static final SEARCH_DISTANCE:F = 1.4f

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "KeyboardEx"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field public background:Landroid/graphics/drawable/Drawable;

.field bottomMostKeyLocation:I

.field private canSwypePopupCharacters:Z

.field protected final context:Landroid/content/Context;

.field private defaultKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private forcedSwypeable:Z

.field private iBot:I

.field private iLeft:I

.field private iRight:I

.field private iTop:I

.field private invalidDockModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
            ">;"
        }
    .end annotation
.end field

.field private keyGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;>;"
        }
    .end annotation
.end field

.field private keyboardSettings:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;",
            ">;"
        }
    .end annotation
.end field

.field keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

.field leftMostKeyLocation:I

.field private letterLanguageCategory:I

.field private mCellHeight:I

.field private mCellWidth:I

.field public final mDisplayHeight:I

.field mDisplayWidth:I

.field private mForceBackgroundFromResource:Z

.field private mForcedHeight:I

.field private mGridNeighbors:[[I

.field private mHasNumRow:Z

.field protected mIsPopup:Z

.field private mKdbId:I

.field private mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field mKeyboardLayout:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyboardModeId:I

.field protected final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field private mTotalHeight:I

.field private mTotalWidth:I

.field rightMostKeyLocation:I

.field private sanitizeFont:Z

.field protected final shiftKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "KeyboardEx"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "fillScreen"    # Z
    .param p5, "forceBackgroundFromResource"    # Z

    .prologue
    .line 1722
    const/4 v5, 0x0

    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZZLcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;Z)V

    .line 1723
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZLcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "fillScreen"    # Z
    .param p5, "isPopup"    # Z
    .param p6, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .param p7, "forceBackgroundFromResource"    # Z

    .prologue
    .line 1739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 549
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mPrimaryKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 562
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mIsPopup:Z

    .line 565
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nuance/swype/input/KeyboardEx;->sanitizeFont:Z

    .line 567
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    .line 3120
    const-class v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->keyboardSettings:Ljava/util/EnumSet;

    .line 1741
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    .line 1742
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1743
    .local v2, "res":Landroid/content/res/Resources;
    iput-object p6, p0, Lcom/nuance/swype/input/KeyboardEx;->mPrimaryKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1744
    iput-boolean p7, p0, Lcom/nuance/swype/input/KeyboardEx;->mForceBackgroundFromResource:Z

    .line 1746
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1747
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1750
    sget-object p6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1771
    :cond_0
    :goto_0
    iput-object p6, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1773
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1776
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardScaledWidth(Landroid/content/res/Resources;)I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    .line 1777
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    .line 1778
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    .line 1779
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    .line 1780
    iput p3, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardModeId:I

    .line 1781
    iput p2, p0, Lcom/nuance/swype/input/KeyboardEx;->mKdbId:I

    .line 1782
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    invoke-direct {p0, v3, v4, p4}, Lcom/nuance/swype/input/KeyboardEx;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Z)V

    .line 1783
    return-void

    .line 1752
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_1
    if-eqz p5, :cond_0

    .line 1753
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1754
    .local v1, "orientation":I
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p6, v3, :cond_4

    .line 1755
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v3, v2, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1756
    sget-object p6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1767
    :cond_2
    :goto_1
    iput-boolean p5, p0, Lcom/nuance/swype/input/KeyboardEx;->mIsPopup:Z

    goto :goto_0

    .line 1758
    :cond_3
    sget-object p6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    goto :goto_1

    .line 1760
    :cond_4
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p6, v3, :cond_2

    .line 1761
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v3, v2, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1762
    sget-object p6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    goto :goto_1

    .line 1764
    :cond_5
    sget-object p6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;IIIIZ)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "extraKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p5, "idxDefault"    # I
    .param p6, "gravity"    # I
    .param p7, "columns"    # I
    .param p8, "horizontalPadding"    # I
    .param p9, "forceBackgroundFromResource"    # Z

    .prologue
    .line 1906
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IZZ)V

    .line 1909
    const/16 v22, 0x0

    .line 1910
    .local v22, "y":I
    const/4 v7, 0x0

    .line 1911
    .local v7, "column":I
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 1913
    const/4 v6, 0x0

    .line 1915
    .local v6, "chDefault":Ljava/lang/Character;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v23, v0

    sget v24, Lcom/nuance/swype/input/R$attr;->keyWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0xa

    invoke-virtual/range {v23 .. v26}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v20

    .line 1918
    .local v20, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    move/from16 v24, v0

    const/16 v25, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx;->getKeyHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v9

    .line 1920
    .local v9, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v23, v0

    sget v24, Lcom/nuance/swype/input/R$attr;->horizontalGap:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v10

    .line 1923
    .local v10, "horizontalGap":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v23, v0

    sget v24, Lcom/nuance/swype/input/R$attr;->verticalGap:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v19

    .line 1926
    .local v19, "verticalGap":I
    and-int/lit8 v8, p6, 0x7

    .line 1929
    .local v8, "hGrav":I
    const/16 v23, 0x5

    move/from16 v0, v23

    if-eq v8, v0, :cond_0

    const v23, 0x800005

    move/from16 v0, v23

    if-ne v8, v0, :cond_8

    :cond_0
    const/4 v12, 0x1

    .line 1931
    .local v12, "isGravityRight":Z
    :goto_0
    new-instance v16, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1932
    .local v16, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 1937
    if-eqz p4, :cond_9

    .line 1939
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1940
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1941
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 1942
    move/from16 v0, v20

    move-object/from16 v1, p4

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 1943
    move-object/from16 v0, p4

    iput v9, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 1944
    move-object/from16 v0, p4

    iput v10, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 1945
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v23, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/nuance/swype/input/KeyboardEx;->initKeyStyleValues(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardStyle;)V

    .line 1947
    add-int/lit8 v7, v7, 0x1

    .line 1948
    add-int v23, v20, v10

    add-int/lit8 v21, v23, 0x0

    .line 1949
    .local v21, "x":I
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 1950
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;->addKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1952
    const/16 v23, -0x1

    move/from16 v0, v23

    move/from16 v1, p5

    if-ne v0, v1, :cond_1

    .line 1954
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx;->defaultKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1961
    .end local v21    # "x":I
    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    .line 1962
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1963
    .local v18, "slideMenuBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1964
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1965
    add-int/lit8 v23, p5, 0x1

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 1966
    add-int/lit8 v23, p5, 0x1

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v24

    move-object/from16 v0, p3

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1969
    :cond_2
    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    .line 1971
    .end local v18    # "slideMenuBuilder":Ljava/lang/StringBuilder;
    :cond_3
    const/16 v23, -0x1

    move/from16 v0, p7

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    const v15, 0x7fffffff

    .line 1973
    .local v15, "maxColumns":I
    :goto_2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v11, v0, :cond_d

    .line 1974
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1975
    .local v5, "c":C
    if-lt v7, v15, :cond_5

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1979
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_4

    .line 1980
    if-eqz v12, :cond_b

    .line 1982
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nuance/swype/input/KeyboardEx$Key;

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1988
    :cond_4
    :goto_4
    new-instance v16, Lcom/nuance/swype/input/KeyboardEx$Row;

    .end local v16    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1989
    .restart local v16    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 1990
    const/4 v7, 0x0

    .line 1992
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Lcom/nuance/swype/input/KeyboardEx;->createCharKey(Lcom/nuance/swype/input/KeyboardStyle;C)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v14

    .line 1993
    .local v14, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1994
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/KeyboardEx$Row;->addKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1995
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1996
    if-eqz v12, :cond_c

    .line 1998
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 2004
    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 2006
    if-eqz v6, :cond_7

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 2008
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nuance/swype/input/KeyboardEx;->defaultKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1973
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1929
    .end local v5    # "c":C
    .end local v11    # "i":I
    .end local v12    # "isGravityRight":Z
    .end local v14    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v15    # "maxColumns":I
    .end local v16    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1956
    .restart local v12    # "isGravityRight":Z
    .restart local v16    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_9
    const/16 v23, -0x1

    move/from16 v0, p5

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 1958
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    goto/16 :goto_1

    :cond_a
    move/from16 v15, p7

    .line 1971
    goto/16 :goto_2

    .line 1985
    .restart local v5    # "c":C
    .restart local v11    # "i":I
    .restart local v15    # "maxColumns":I
    :cond_b
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nuance/swype/input/KeyboardEx$Key;

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    goto/16 :goto_4

    .line 2001
    .restart local v14    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_c
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    goto :goto_5

    .line 2012
    .end local v5    # "c":C
    .end local v14    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/KeyboardEx$Row;->keyCount()I

    move-result v23

    if-lez v23, :cond_e

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2014
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_e

    .line 2015
    if-eqz v12, :cond_f

    .line 2017
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nuance/swype/input/KeyboardEx$Key;

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 2029
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v17

    .line 2032
    .local v17, "rows":I
    if-eqz v12, :cond_10

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 2035
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_7

    .line 2020
    .end local v17    # "rows":I
    :cond_f
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nuance/swype/input/KeyboardEx$Key;

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    goto :goto_6

    .line 2038
    .restart local v17    # "rows":I
    :cond_10
    const/4 v11, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v11, v0, :cond_12

    .line 2039
    const/16 v21, 0x0

    .line 2040
    .restart local v21    # "x":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_11

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2042
    .restart local v14    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move/from16 v0, v21

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 2043
    move/from16 v0, v22

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 2044
    move/from16 v0, v20

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2045
    iput v9, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 2046
    iput v10, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 2047
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->isMiniKeyboardKey:Z

    .line 2048
    iget v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move/from16 v23, v0

    iget v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int v21, v21, v23

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2050
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 2040
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 2052
    .end local v14    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_11
    add-int v23, v19, v9

    add-int v22, v22, v23

    .line 2038
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 2054
    .end local v13    # "j":I
    .end local v21    # "x":I
    :cond_12
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    .line 2057
    if-eqz v8, :cond_13

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v8, v2}, Lcom/nuance/swype/input/KeyboardEx;->justifyRows(Ljava/util/List;II)V

    .line 2060
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->updateIconLevels()V

    .line 2061
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;II)V
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p4, "width"    # I
    .param p5, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;",
            ">;>;II)V"
        }
    .end annotation

    .prologue
    .line 2178
    .local p3, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;>;"
    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IZZ)V

    .line 2181
    const/16 v26, 0x0

    .line 2182
    .local v26, "y":I
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    move/from16 v28, v0

    const/16 v29, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx;->getKeyHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v16

    .line 2185
    .local v16, "keyHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->verticalGap:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    move/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v23

    .line 2188
    .local v23, "verticalGap":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->keyTextSize:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v19

    .line 2189
    .local v19, "keyTextSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->keyTextColor:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 2190
    .local v17, "keyTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->candidateComponent:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v11

    .line 2191
    .local v11, "componentkeyTextColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->defaultStrokeCandidateColor:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v12

    .line 2192
    .local v12, "defaultStrokeCandidateColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->keyContentBaseline:I

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v16

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v10

    .line 2194
    .local v10, "baseline":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->altTextSize:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v9

    .line 2195
    .local v9, "altTextSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->altTextColor:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v7

    .line 2196
    .local v7, "altTextColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->tertiaryTextColor:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v22

    .line 2197
    .local v22, "tertiaryTextColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->keyTextColorPressed:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v18

    .line 2198
    .local v18, "keyTextColorPressed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->altTextGravity:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v8

    .line 2199
    .local v8, "altTextGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->altIconSize:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v6

    .line 2200
    .local v6, "altIconSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->altIconGravity:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v5

    .line 2201
    .local v5, "altIconGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->keyFontTypeface:I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v15

    .line 2202
    .local v15, "keyFontTypeface":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v27, v0

    sget v28, Lcom/nuance/swype/input/R$attr;->keyBackground:I

    invoke-virtual/range {v27 .. v28}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 2203
    .local v14, "keyBackground":Landroid/graphics/drawable/Drawable;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    .line 2204
    .local v21, "rowKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    new-instance v20, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2205
    .local v20, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 2206
    const/16 v28, 0xc

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 2208
    const/16 v25, 0x0

    .line 2209
    .local v25, "x":I
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 2211
    add-int v28, v23, v16

    add-int v26, v26, v28

    .line 2213
    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 2214
    .local v24, "wordKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    new-instance v13, Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V

    .line 2215
    .local v13, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move/from16 v0, v25

    iput v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 2216
    move/from16 v0, v26

    iput v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 2217
    move-object/from16 v0, v24

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2218
    move/from16 v0, v16

    iput v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 2219
    const/16 v29, 0x0

    move/from16 v0, v29

    iput v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 2220
    move/from16 v0, v19

    iput v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 2221
    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 2222
    iput v11, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 2223
    iput v12, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 2224
    iput v10, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 2225
    iput v9, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 2226
    iput v7, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 2227
    move/from16 v0, v22

    iput v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 2228
    move/from16 v0, v18

    iput v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 2229
    iput v8, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 2230
    iput v6, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    .line 2231
    iput v5, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 2232
    iput v15, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 2233
    iput-object v14, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 2235
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->text:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 2236
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->text:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 2237
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput v31, v29, v30

    move-object/from16 v0, v29

    iput-object v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 2238
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 2239
    iget v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move/from16 v29, v0

    iget v0, v13, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    move/from16 v30, v0

    add-int v29, v29, v30

    add-int v25, v25, v29

    .line 2241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v29, v0

    move/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto/16 :goto_1

    .line 2245
    .end local v13    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v24    # "wordKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    :cond_1
    add-int v28, v26, v16

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    goto/16 :goto_0

    .line 2247
    .end local v20    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v21    # "rowKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v25    # "x":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;IIII)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p4, "gravity"    # I
    .param p5, "width"    # I
    .param p6, "minHeight"    # I
    .param p7, "horizontalPadding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;IIII)V"
        }
    .end annotation

    .prologue
    .line 2066
    .local p3, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;IIIILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 2067
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;IIIILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 39
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p4, "gravity"    # I
    .param p5, "width"    # I
    .param p6, "minHeight"    # I
    .param p7, "horizontalPadding"    # I
    .param p8, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;IIII",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2071
    .local p3, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v9}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZZLcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;Z)V

    .line 2073
    const/16 v37, 0x0

    .line 2074
    .local v37, "x":I
    const/16 v38, 0x0

    .line 2075
    .local v38, "y":I
    const/16 v16, 0x0

    .line 2076
    .local v16, "column":I
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/16 v4, 0x32

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeyHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v24

    .line 2080
    .local v24, "keyHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->horizontalGap:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v20

    .line 2083
    .local v20, "horizontalGap":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->verticalGap:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v34

    .line 2086
    .local v34, "verticalGap":I
    new-instance v31, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2087
    .local v31, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move/from16 v0, v34

    move-object/from16 v1, v31

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 2088
    const/16 v2, 0xc

    move-object/from16 v0, v31

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 2090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v27

    .line 2091
    .local v27, "keyTextSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v25

    .line 2092
    .local v25, "keyTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->candidateComponent:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v18

    .line 2093
    .local v18, "componentkeyTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->defaultStrokeCandidateColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v19

    .line 2094
    .local v19, "defaultStrokeCandidateColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyContentBaseline:I

    const/4 v4, 0x0

    move/from16 v0, v24

    invoke-virtual {v2, v3, v0, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v15

    .line 2096
    .local v15, "baseline":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v14

    .line 2097
    .local v14, "altTextSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v12

    .line 2098
    .local v12, "altTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->tertiaryTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v33

    .line 2099
    .local v33, "tertiaryTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextColorPressed:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v26

    .line 2100
    .local v26, "keyTextColorPressed":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextGravity:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    .line 2101
    .local v13, "altTextGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altIconSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v11

    .line 2102
    .local v11, "altIconSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altIconGravity:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v10

    .line 2103
    .local v10, "altIconGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyFontTypeface:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v23

    .line 2104
    .local v23, "keyFontTypeface":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyBackground:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 2106
    .local v22, "keyBackground":Landroid/graphics/drawable/Drawable;
    new-instance v30, Landroid/graphics/Paint;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Paint;-><init>()V

    .line 2107
    .local v30, "paint":Landroid/graphics/Paint;
    move/from16 v0, v27

    int-to-float v2, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2108
    mul-int v2, p5, p6

    .line 2109
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    mul-int v3, v3, v24

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v4, Lcom/nuance/swype/input/R$attr;->keyWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    div-int/lit8 v6, v6, 0xa

    .line 2110
    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v3

    .line 2108
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 2114
    .local v28, "keyWidth":I
    const/16 v32, 0x0

    .line 2115
    .local v32, "singleWordLength":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2116
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v3, v2

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    div-int v32, v3, v2

    .line 2119
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 2120
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v36

    .line 2121
    .local v36, "wordLength":I
    mul-int v2, v36, v32

    move/from16 v0, v28

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 2122
    goto :goto_0

    .line 2124
    .end local v36    # "wordLength":I
    :cond_1
    const/4 v2, 0x1

    add-int v3, v28, v20

    div-int v3, p5, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2125
    .local v17, "columnCount":I
    div-int v28, p5, v17

    .line 2126
    rem-int v29, p5, v17

    .line 2127
    .local v29, "overhang":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/CharSequence;

    .line 2128
    .local v35, "word":Ljava/lang/CharSequence;
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    add-int v3, v37, v28

    add-int v3, v3, p7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    if-le v3, v4, :cond_3

    .line 2130
    :cond_2
    const/16 v37, 0x0

    .line 2131
    add-int v3, v34, v24

    add-int v38, v38, v3

    .line 2132
    const/16 v16, 0x0

    .line 2135
    :cond_3
    new-instance v21, Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V

    .line 2136
    .local v21, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move/from16 v0, v37

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 2137
    move/from16 v0, v38

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 2138
    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2139
    move/from16 v0, v24

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 2140
    move/from16 v0, v20

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 2141
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 2142
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 2143
    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 2144
    move/from16 v0, v19

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 2145
    move-object/from16 v0, v21

    iput v15, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 2146
    move-object/from16 v0, v21

    iput v14, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 2147
    move-object/from16 v0, v21

    iput v12, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 2148
    move/from16 v0, v33

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 2149
    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 2150
    move-object/from16 v0, v21

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 2151
    move-object/from16 v0, v21

    iput v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    .line 2152
    move-object/from16 v0, v21

    iput v10, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 2153
    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 2154
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 2156
    move-object/from16 v0, v35

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 2157
    move-object/from16 v0, v35

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 2158
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 2159
    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput-boolean v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 2160
    add-int/lit8 v16, v16, 0x1

    .line 2161
    move-object/from16 v0, v21

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    add-int/2addr v3, v4

    add-int v37, v37, v3

    .line 2164
    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 2165
    add-int/lit8 v37, v37, 0x1

    .line 2166
    move-object/from16 v0, v21

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v21

    iput v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2169
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2171
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v0, v37

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto/16 :goto_1

    .line 2173
    .end local v21    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v35    # "word":Ljava/lang/CharSequence;
    :cond_5
    add-int v2, v38, v24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    .line 2174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;IILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p4, "width"    # I
    .param p5, "minHeight"    # I
    .param p6, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;",
            ">;>;II",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2252
    .local p3, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;IILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;Z)V

    .line 2253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;IILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;Z)V
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p4, "width"    # I
    .param p5, "minHeight"    # I
    .param p6, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .param p7, "scalePreCreatedRows"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;",
            ">;>;II",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2258
    .local p3, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZZLcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;Z)V

    .line 2261
    const/16 v31, 0x0

    .line 2262
    .local v31, "y":I
    if-eqz p7, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    :goto_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 2264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/16 v4, 0x32

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeyHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v21

    .line 2265
    .local v21, "keyHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->verticalGap:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v28

    .line 2268
    .local v28, "verticalGap":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v24

    .line 2269
    .local v24, "keyTextSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v22

    .line 2270
    .local v22, "keyTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->candidateComponent:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v16

    .line 2271
    .local v16, "componentkeyTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->defaultStrokeCandidateColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v17

    .line 2272
    .local v17, "defaultStrokeCandidateColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyContentBaseline:I

    const/4 v4, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v3, v0, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v15

    .line 2274
    .local v15, "baseline":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v14

    .line 2275
    .local v14, "altTextSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v12

    .line 2276
    .local v12, "altTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->tertiaryTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v27

    .line 2277
    .local v27, "tertiaryTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextColorPressed:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v23

    .line 2278
    .local v23, "keyTextColorPressed":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextGravity:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    .line 2279
    .local v13, "altTextGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altIconSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v11

    .line 2280
    .local v11, "altIconSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altIconGravity:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v10

    .line 2281
    .local v10, "altIconGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyFontTypeface:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v20

    .line 2282
    .local v20, "keyFontTypeface":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyBackground:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 2283
    .local v19, "keyBackground":Landroid/graphics/drawable/Drawable;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    .line 2284
    .local v26, "rowKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    new-instance v25, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2285
    .local v25, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 2286
    const/16 v3, 0xc

    move-object/from16 v0, v25

    iput v3, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 2288
    const/16 v30, 0x0

    .line 2289
    .local v30, "x":I
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v26

    if-eq v0, v3, :cond_0

    .line 2291
    add-int v3, v28, v21

    add-int v31, v31, v3

    .line 2293
    :cond_0
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 2294
    .local v29, "wordKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    new-instance v18, Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V

    .line 2295
    .local v18, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move/from16 v0, v30

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 2296
    move/from16 v0, v31

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 2297
    move-object/from16 v0, v29

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    mul-int/2addr v4, v5

    div-int v4, v4, p4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2298
    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 2299
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 2300
    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 2301
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 2302
    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 2303
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 2304
    move-object/from16 v0, v18

    iput v15, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 2305
    move-object/from16 v0, v18

    iput v14, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 2306
    move-object/from16 v0, v18

    iput v12, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 2307
    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 2308
    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 2309
    move-object/from16 v0, v18

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 2310
    move-object/from16 v0, v18

    iput v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    .line 2311
    move-object/from16 v0, v18

    iput v10, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 2312
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 2313
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 2315
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 2316
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 2317
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 2318
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 2319
    move-object/from16 v0, v18

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    add-int/2addr v4, v5

    add-int v30, v30, v4

    .line 2321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2323
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto/16 :goto_2

    .end local v10    # "altIconGravity":I
    .end local v11    # "altIconSize":I
    .end local v12    # "altTextColor":I
    .end local v13    # "altTextGravity":I
    .end local v14    # "altTextSize":I
    .end local v15    # "baseline":I
    .end local v16    # "componentkeyTextColor":I
    .end local v17    # "defaultStrokeCandidateColor":I
    .end local v18    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v19    # "keyBackground":Landroid/graphics/drawable/Drawable;
    .end local v20    # "keyFontTypeface":I
    .end local v21    # "keyHeight":I
    .end local v22    # "keyTextColor":Landroid/content/res/ColorStateList;
    .end local v23    # "keyTextColorPressed":I
    .end local v24    # "keyTextSize":I
    .end local v25    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v26    # "rowKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v27    # "tertiaryTextColor":I
    .end local v28    # "verticalGap":I
    .end local v29    # "wordKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    .end local v30    # "x":I
    :cond_1
    move/from16 v2, p4

    .line 2262
    goto/16 :goto_0

    .line 2325
    .restart local v10    # "altIconGravity":I
    .restart local v11    # "altIconSize":I
    .restart local v12    # "altTextColor":I
    .restart local v13    # "altTextGravity":I
    .restart local v14    # "altTextSize":I
    .restart local v15    # "baseline":I
    .restart local v16    # "componentkeyTextColor":I
    .restart local v17    # "defaultStrokeCandidateColor":I
    .restart local v19    # "keyBackground":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "keyFontTypeface":I
    .restart local v21    # "keyHeight":I
    .restart local v22    # "keyTextColor":Landroid/content/res/ColorStateList;
    .restart local v23    # "keyTextColorPressed":I
    .restart local v24    # "keyTextSize":I
    .restart local v25    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .restart local v26    # "rowKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .restart local v27    # "tertiaryTextColor":I
    .restart local v28    # "verticalGap":I
    .restart local v30    # "x":I
    :cond_2
    add-int v3, v31, v21

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    goto/16 :goto_1

    .line 2327
    .end local v25    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v26    # "rowKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v30    # "x":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "fillScreen"    # Z
    .param p4, "forceBackgroundFromResource"    # Z

    .prologue
    .line 1707
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZZ)V

    .line 1708
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "fillScreen"    # Z
    .param p4, "isPopup"    # Z
    .param p5, "forceBackgroundFromResource"    # Z

    .prologue
    .line 1695
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZZLcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;Z)V

    .line 1696
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;II)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardEx;->getKeyHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "x2"    # Landroid/content/res/Resources;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardEx;->getKeyTextSize(Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "x2"    # Landroid/content/res/Resources;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardEx;->getAlternateTextSize(Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "x2"    # Landroid/content/res/Resources;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardEx;->getAlternateIconSize(Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method private adjustHeight(I)I
    .locals 8
    .param p1, "height"    # I

    .prologue
    .line 3029
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 3030
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/util/DrawingUtils;->getKeyboardScale(Landroid/content/Context;)F

    move-result v2

    .line 3032
    .local v2, "keyboardScale":F
    const v3, 0x3f333333    # 0.7f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    const v3, 0x3fa66667    # 1.3000001f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 3033
    int-to-float v3, p1

    mul-float/2addr v3, v2

    float-to-int p1, v3

    .line 3035
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3036
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p1, v3, :cond_1

    .line 3037
    iget p1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3041
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3042
    int-to-double v4, p1

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int p1, v4

    .line 3044
    :cond_2
    return p1
.end method

.method private static adjustKeyWidths(Lcom/nuance/swype/input/KeyboardEx$Row;I)V
    .locals 1
    .param p0, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p1, "extra"    # I

    .prologue
    .line 2754
    invoke-static {p0}, Lcom/nuance/swype/input/KeyboardEx;->getVisibleKeys(Lcom/nuance/swype/input/KeyboardEx$Row;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nuance/swype/input/KeyboardEx;->allocateSpace(Ljava/util/List;I)V

    .line 2755
    return-void
.end method

.method private static allocateKeySpaceToOtherKeys(Lcom/nuance/swype/input/KeyboardEx$Key;Ljava/util/List;)V
    .locals 2
    .param p0, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2702
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/nuance/swype/input/KeyboardEx;->allocateSpace(Ljava/util/List;I)V

    .line 2703
    return-void
.end method

.method private static allocateSpace(Ljava/util/List;I)V
    .locals 9
    .param p1, "extra"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2711
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 2712
    .local v2, "count":I
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 2732
    :cond_0
    return-void

    .line 2715
    :cond_1
    if-lez p1, :cond_3

    const/4 v5, 0x1

    .line 2716
    .local v5, "unit":I
    :goto_0
    div-int v1, p1, v2

    .line 2719
    .local v1, "add":I
    rem-int v7, p1, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 2720
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    add-int/lit8 v8, v2, -0x1

    div-int/2addr v8, v2

    add-int v6, v7, v8

    .line 2721
    .local v6, "weight":I
    const/4 v0, 0x0

    .line 2723
    .local v0, "accum":I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 2724
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2725
    .local v4, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v7, v1

    iput v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2726
    add-int/2addr v0, v6

    .line 2727
    const/16 v7, 0x64

    if-lt v0, v7, :cond_2

    .line 2728
    iget v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v7, v5

    iput v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2729
    add-int/lit8 v0, v0, -0x64

    .line 2723
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2715
    .end local v0    # "accum":I
    .end local v1    # "add":I
    .end local v3    # "idx":I
    .end local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v5    # "unit":I
    .end local v6    # "weight":I
    :cond_3
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private changeKeys(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Row;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1535
    .local p1, "keyboardLayout":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    .line 1536
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1537
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1539
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1540
    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1541
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1543
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1547
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    return-void
.end method

.method private computeNearestNeighbors()V
    .locals 17

    .prologue
    .line 2360
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v13

    add-int/lit8 v13, v13, 0xa

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0xa

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    .line 2361
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v13

    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0x5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    .line 2363
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3fb33333    # 1.4f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    .line 2364
    mul-int v9, v13, v13

    .line 2365
    .local v9, "proximityThreshold":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2366
    .local v10, "visibleKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2367
    .local v8, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v14, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v14, :cond_0

    .line 2368
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2371
    .end local v8    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    sget-object v13, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "computeNearestNeighbors...mKeys.size(): "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "visibleKeys.size(): "

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 2372
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 2371
    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2373
    const/16 v13, 0x32

    new-array v13, v13, [[I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    .line 2374
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    new-array v7, v13, [I

    .line 2375
    .local v7, "indices":[I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    mul-int/lit8 v5, v13, 0xa

    .line 2376
    .local v5, "gridWidth":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    mul-int/lit8 v4, v13, 0x5

    .line 2377
    .local v4, "gridHeight":I
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_1
    if-ge v11, v5, :cond_6

    .line 2378
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_2
    if-ge v12, v4, :cond_5

    .line 2379
    const/4 v2, 0x0

    .line 2380
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    .line 2381
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2382
    .restart local v8    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {v8, v11, v12}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v13

    if-lt v13, v9, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v13, v11

    add-int/lit8 v13, v13, -0x1

    .line 2383
    invoke-virtual {v8, v13, v12}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v13

    if-lt v13, v9, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v13, v11

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v14, v12

    add-int/lit8 v14, v14, -0x1

    .line 2384
    invoke-virtual {v8, v13, v14}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v13

    if-lt v13, v9, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v13, v12

    add-int/lit8 v13, v13, -0x1

    .line 2386
    invoke-virtual {v8, v11, v13}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v13

    if-ge v13, v9, :cond_3

    .line 2387
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    aput v6, v7, v2

    move v2, v3

    .line 2380
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2390
    .end local v8    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4
    new-array v1, v2, [I

    .line 2391
    .local v1, "cell":[I
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v13, v1, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    div-int v14, v12, v14

    mul-int/lit8 v14, v14, 0xa

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    div-int v15, v11, v15

    add-int/2addr v14, v15

    aput-object v1, v13, v14

    .line 2378
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v12, v13

    goto :goto_2

    .line 2377
    .end local v1    # "cell":[I
    .end local v2    # "count":I
    .end local v6    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v11, v13

    goto :goto_1

    .line 2396
    .end local v12    # "y":I
    :cond_6
    return-void
.end method

.method protected static createCharKey(Lcom/nuance/swype/input/KeyboardStyle;C)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 3
    .param p0, "keyboardStyle"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p1, "ch"    # C

    .prologue
    .line 1827
    invoke-static {p0}, Lcom/nuance/swype/input/KeyboardEx;->createKey(Lcom/nuance/swype/input/KeyboardStyle;)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1828
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1829
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1830
    return-object v0
.end method

.method protected static createIconKey(Lcom/nuance/swype/input/KeyboardStyle;Landroid/graphics/drawable/Drawable;I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 4
    .param p0, "keyboardStyle"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 1834
    invoke-static {p0}, Lcom/nuance/swype/input/KeyboardEx;->createKey(Lcom/nuance/swype/input/KeyboardStyle;)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1835
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1836
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1837
    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1838
    iput-object p1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 1839
    iput-object p1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1840
    return-object v0
.end method

.method protected static createKey(Lcom/nuance/swype/input/KeyboardStyle;)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 2
    .param p0, "keyboardStyle"    # Lcom/nuance/swype/input/KeyboardStyle;

    .prologue
    .line 1819
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V

    .line 1820
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz p0, :cond_0

    .line 1821
    invoke-static {v0, p0}, Lcom/nuance/swype/input/KeyboardEx;->initKeyStyleValues(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardStyle;)V

    .line 1823
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 1824
    return-object v0
.end method

.method private fillKeyGaps(Ljava/util/List;IZ)V
    .locals 12
    .param p2, "gravity"    # I
    .param p3, "fillScreen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Row;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 2762
    .local p1, "keyboardLayout":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    if-eqz p3, :cond_1

    iget v5, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    .line 2764
    .local v5, "targetWidth":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 2768
    iget v9, p0, Lcom/nuance/swype/input/KeyboardEx;->mForcedHeight:I

    if-lez v9, :cond_2

    .line 2769
    iget v9, p0, Lcom/nuance/swype/input/KeyboardEx;->mForcedHeight:I

    iget v10, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    sub-int v8, v9, v10

    .line 2773
    .local v8, "vTotalAdjustment":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    div-int v7, v8, v9

    .line 2774
    .local v7, "vHeightAdjustment":I
    const/4 v6, 0x0

    .line 2775
    .local v6, "vAdjustment":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 2776
    .local v2, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    iget-object v10, v2, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2785
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-nez v11, :cond_0

    .line 2787
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardEx;->isGroupedKeyVisible(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v11

    .line 2788
    if-nez v11, :cond_0

    .line 2790
    invoke-direct {p0, v2, v0}, Lcom/nuance/swype/input/KeyboardEx;->getVisibleDependents(Lcom/nuance/swype/input/KeyboardEx$Row;Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/util/List;

    move-result-object v1

    .line 2791
    .local v1, "resizeKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 2792
    invoke-static {v0, v1}, Lcom/nuance/swype/input/KeyboardEx;->allocateKeySpaceToOtherKeys(Lcom/nuance/swype/input/KeyboardEx$Key;Ljava/util/List;)V

    .line 2796
    .end local v1    # "resizeKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_0
    iget v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    add-int/2addr v11, v6

    iput v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 2797
    iget v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v11, v7

    iput v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    goto :goto_3

    .line 2762
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v2    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v5    # "targetWidth":I
    .end local v6    # "vAdjustment":I
    .end local v7    # "vHeightAdjustment":I
    .end local v8    # "vTotalAdjustment":I
    :cond_1
    iget v5, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto :goto_0

    .line 2771
    .restart local v5    # "targetWidth":I
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "vTotalAdjustment":I
    goto :goto_1

    .line 2799
    .restart local v2    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .restart local v6    # "vAdjustment":I
    .restart local v7    # "vHeightAdjustment":I
    :cond_3
    add-int/2addr v6, v7

    .line 2812
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardEx;->updateKeyPositions(Lcom/nuance/swype/input/KeyboardEx$Row;)I

    move-result v3

    .line 2814
    .local v3, "rowWidth":I
    sub-int v4, v5, v3

    .line 2816
    .local v4, "space":I
    if-gez v4, :cond_4

    .line 2818
    invoke-static {v2, v4}, Lcom/nuance/swype/input/KeyboardEx;->adjustKeyWidths(Lcom/nuance/swype/input/KeyboardEx$Row;I)V

    .line 2827
    :cond_4
    if-eqz p3, :cond_5

    .line 2828
    invoke-direct {p0, v2, p2, v5}, Lcom/nuance/swype/input/KeyboardEx;->justifyRow(Lcom/nuance/swype/input/KeyboardEx$Row;II)V

    goto :goto_2

    .line 2831
    :cond_5
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardEx;->updateKeyPositions(Lcom/nuance/swype/input/KeyboardEx$Row;)I

    goto :goto_2

    .line 2837
    .end local v2    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v3    # "rowWidth":I
    .end local v4    # "space":I
    :cond_6
    sub-int v6, v8, v6

    .line 2838
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 2839
    iget-object v9, v9, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2840
    iget v11, v9, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v11, v6

    iput v11, v9, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    goto :goto_4

    .line 2843
    :cond_7
    iget v9, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    .line 2846
    .end local v6    # "vAdjustment":I
    .end local v7    # "vHeightAdjustment":I
    .end local v8    # "vTotalAdjustment":I
    :cond_8
    iput v5, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 2847
    return-void
.end method

.method private getAlternateIconSize(Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I
    .locals 2
    .param p1, "style"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 3056
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$attr;->altIconSize:I

    invoke-virtual {v0, p2, v1, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getTextSize(Landroid/content/res/Resources;ILcom/nuance/swype/input/KeyboardStyle;)I

    move-result v0

    return v0
.end method

.method private getAlternateTextSize(Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I
    .locals 2
    .param p1, "style"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 3061
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$attr;->altTextSize:I

    invoke-virtual {v0, p2, v1, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getTextSize(Landroid/content/res/Resources;ILcom/nuance/swype/input/KeyboardStyle;)I

    move-result v0

    return v0
.end method

.method private getBackground(Lcom/nuance/swype/input/KeyboardStyle;II)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "style"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2903
    sget-object v7, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Getting background.. force from resources? "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mForceBackgroundFromResource:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2905
    iget-boolean v7, p0, Lcom/nuance/swype/input/KeyboardEx;->mForceBackgroundFromResource:Z

    if-eqz v7, :cond_1

    .line 2906
    sget-object v7, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "Force loading from the resources"

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2907
    sget v7, Lcom/nuance/swype/input/R$attr;->background:I

    invoke-virtual {p1, v7}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2928
    :cond_0
    :goto_0
    return-object v2

    .line 2910
    :cond_1
    const/4 v2, 0x0

    .line 2911
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2912
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    .line 2913
    .local v1, "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v5, v7, Landroid/content/res/Configuration;->orientation:I

    .line 2914
    .local v5, "orientation":I
    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v6

    .line 2915
    .local v6, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    .line 2916
    .local v3, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v3, :cond_0

    .line 2917
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getKeyboardBackgroundManager()Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    move-result-object v4

    .line 2918
    .local v4, "kbm":Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->shouldLoadFromDisk(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2919
    invoke-virtual {v4}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2920
    if-eqz v2, :cond_2

    .line 4269
    iget-boolean v7, v4, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mReloadRequiredFromResources:Z

    .line 2920
    if-eqz v7, :cond_0

    .line 2921
    :cond_2
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    invoke-virtual {v4, v7, v1, v5, v8}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->loadDrawableFromResource(Ljava/lang/String;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;ILcom/nuance/swype/input/KeyboardStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 5211
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 5212
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$2;

    invoke-direct {v8, v4, p2, p3}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$2;-><init>(Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;II)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5218
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 5220
    :cond_3
    sget-object v7, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Cannot save the bitmap as width is: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " and height is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2925
    :cond_4
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    invoke-virtual {v4, v7, v1, v5, v8}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->loadDrawableFromResource(Ljava/lang/String;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;ILcom/nuance/swype/input/KeyboardStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private static getJustifiedOffset(III)I
    .locals 3
    .param p0, "rowWidth"    # I
    .param p1, "totalWidth"    # I
    .param p2, "gravity"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 3070
    const/4 v0, 0x0

    .line 3071
    .local v0, "xRow":I
    and-int/lit8 v1, p2, 0x7

    sparse-switch v1, :sswitch_data_0

    .line 3073
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "WARNING: default to LEFT justification (unrecognized gravity)"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 3086
    :goto_0
    :sswitch_0
    return v0

    .line 3078
    :sswitch_1
    sub-int v1, p1, p0

    div-int/lit8 v0, v1, 0x2

    .line 3079
    goto :goto_0

    .line 3082
    :sswitch_2
    sub-int v0, p1, p0

    goto :goto_0

    .line 3071
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_2
    .end sparse-switch
.end method

.method private getKeyHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I
    .locals 3
    .param p1, "style"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "displayHeight"    # I
    .param p3, "defValue"    # I

    .prologue
    .line 2999
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v1, v2, :cond_1

    .line 3003
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3004
    sget v1, Lcom/nuance/swype/input/R$attr;->miniModeKeyHeight:I

    invoke-virtual {p1, v1, p2, p3}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v0

    .line 3011
    .local v0, "height":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardEx;->adjustHeight(I)I

    move-result v1

    .line 3012
    return v1

    .line 3008
    .end local v0    # "height":I
    :cond_1
    sget v1, Lcom/nuance/swype/input/R$attr;->keyHeight:I

    invoke-virtual {p1, v1, p2, p3}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method private getKeyTextSize(Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I
    .locals 2
    .param p1, "style"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 3052
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$attr;->keyTextSize:I

    invoke-virtual {v0, p2, v1, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getTextSize(Landroid/content/res/Resources;ILcom/nuance/swype/input/KeyboardStyle;)I

    move-result v0

    return v0
.end method

.method private getKeyboardDockModeKeyCode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I
    .locals 3
    .param p1, "kbdDockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 3242
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq p1, v1, :cond_3

    .line 3244
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p1, v1, :cond_0

    .line 3245
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->keycode_resize_minileft_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3255
    .local v0, "keyCode":I
    :goto_0
    return v0

    .line 3246
    .end local v0    # "keyCode":I
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p1, v1, :cond_1

    .line 3247
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->keycode_resize_miniright_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .restart local v0    # "keyCode":I
    goto :goto_0

    .line 3248
    .end local v0    # "keyCode":I
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p1, v1, :cond_2

    .line 3249
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->keycode_resize_minimovable_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .restart local v0    # "keyCode":I
    goto :goto_0

    .line 3250
    .end local v0    # "keyCode":I
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p1, v1, :cond_3

    .line 3251
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->keycode_resize_split_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .restart local v0    # "keyCode":I
    goto :goto_0

    .line 3253
    .end local v0    # "keyCode":I
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->keycode_resize_full_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .restart local v0    # "keyCode":I
    goto :goto_0
.end method

.method private getKeyboardHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I
    .locals 3
    .param p1, "style"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "displayHeight"    # I
    .param p3, "defValue"    # I

    .prologue
    const/4 v2, -0x1

    .line 3016
    sget v1, Lcom/nuance/swype/input/R$attr;->keyboardForcedHeight:I

    invoke-virtual {p1, v1, p2, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v0

    .line 3017
    .local v0, "height":I
    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v1, v2, :cond_1

    .line 3021
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3022
    sget v2, Lcom/nuance/swype/input/R$dimen;->mini_keyboard_forced_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3024
    :cond_1
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardEx;->adjustHeight(I)I

    move-result v1

    .line 3025
    return v1
.end method

.method private getVisibleDependents(Lcom/nuance/swype/input/KeyboardEx$Row;Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/util/List;
    .locals 6
    .param p1, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/KeyboardEx$Row;",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2679
    .local v0, "deps":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    iget-object v2, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 2681
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2682
    .local v1, "other":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v3, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    iget-object v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2683
    iget v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    if-nez v3, :cond_1

    .line 2685
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 2687
    :cond_1
    iget-boolean v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v3, :cond_0

    .line 2688
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2693
    .end local v1    # "other":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    return-object v0
.end method

.method private static getVisibleKeys(Lcom/nuance/swype/input/KeyboardEx$Row;)Ljava/util/List;
    .locals 5
    .param p0, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/KeyboardEx$Row;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2738
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2739
    .local v3, "visibleKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2740
    .local v2, "totalKeyCount":I
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2741
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2742
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v4, :cond_0

    .line 2743
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2740
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2746
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    return-object v3
.end method

.method private horizontalSplitLeft(FLcom/nuance/swype/input/KeyboardEx$Row;Z)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 7
    .param p1, "xScale"    # F
    .param p2, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p3, "isSplitPhone"    # Z

    .prologue
    .line 1616
    iget-object v2, p2, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    .line 1617
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v3, 0x0

    .line 1618
    .local v3, "rightMostKeyBeforeSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    const/4 v5, 0x0

    .line 1620
    .local v5, "x":I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1621
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1623
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_1

    .line 1627
    iget-boolean v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v6, :cond_0

    .line 1628
    invoke-direct {p0, v1, p1}, Lcom/nuance/swype/input/KeyboardEx;->scaleX(Lcom/nuance/swype/input/KeyboardEx$Key;F)V

    .line 1630
    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    add-int/2addr v5, v6

    .line 1631
    iput v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1632
    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v5, v6

    .line 1633
    move-object v3, v1

    .line 1620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1637
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    return-object v3
.end method

.method private horizontalSplitRight(FLcom/nuance/swype/input/KeyboardEx$Row;Z)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 7
    .param p1, "xScale"    # F
    .param p2, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p3, "isSplitPhone"    # Z

    .prologue
    .line 1642
    iget-object v2, p2, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    .line 1644
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1646
    iget-object v5, p2, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1647
    iget-boolean v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-nez v5, :cond_0

    .line 1644
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1651
    :cond_0
    iget v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 1652
    .local v4, "x":I
    const/4 v3, 0x0

    .line 1654
    .local v3, "leftMostKeyAfterSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 1655
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1657
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_4

    .line 1658
    iget-object v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    iget v5, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    if-le v5, v6, :cond_2

    .line 1659
    iget-boolean v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->supportFullSpaceSplit:Z

    if-eqz v5, :cond_3

    .line 1661
    iget v5, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    sub-int/2addr v5, v6

    iput v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 1679
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    :goto_2
    return-object v3

    .line 1664
    .restart local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_3
    iget v5, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    iput v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    goto :goto_2

    .line 1670
    :cond_4
    iget-boolean v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v5, :cond_1

    .line 1671
    invoke-direct {p0, v1, p1}, Lcom/nuance/swype/input/KeyboardEx;->scaleX(Lcom/nuance/swype/input/KeyboardEx$Key;F)V

    .line 1672
    iget v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    sub-int/2addr v4, v5

    .line 1673
    iput v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1674
    iget v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    sub-int/2addr v4, v5

    .line 1675
    move-object v3, v1

    goto :goto_1
.end method

.method private iSplitAbleRow(Lcom/nuance/swype/input/KeyboardEx$Row;I)Z
    .locals 3
    .param p1, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p2, "flag"    # I

    .prologue
    .line 1683
    const/4 v0, 0x0

    .line 1684
    .local v0, "splitAble":Z
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1685
    iget v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    .line 1686
    const/4 v0, 0x1

    .line 1691
    :cond_1
    return v0
.end method

.method protected static initKeyStyleValues(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardStyle;)V
    .locals 3
    .param p0, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p1, "keyboardStyle"    # Lcom/nuance/swype/input/KeyboardStyle;

    .prologue
    const/4 v2, 0x0

    .line 1799
    sget v0, Lcom/nuance/swype/input/R$attr;->keyTextSize:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 1800
    sget v0, Lcom/nuance/swype/input/R$attr;->keyTextColor:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 1801
    sget v0, Lcom/nuance/swype/input/R$attr;->candidateComponent:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 1802
    sget v0, Lcom/nuance/swype/input/R$attr;->keyContentBaseline:I

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 1804
    sget v0, Lcom/nuance/swype/input/R$attr;->altTextSize:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 1805
    sget v0, Lcom/nuance/swype/input/R$attr;->altTextColor:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 1806
    sget v0, Lcom/nuance/swype/input/R$attr;->tertiaryTextColor:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 1807
    sget v0, Lcom/nuance/swype/input/R$attr;->keyTextColorPressed:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 1808
    sget v0, Lcom/nuance/swype/input/R$attr;->altTextGravity:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 1809
    sget v0, Lcom/nuance/swype/input/R$attr;->altIconSize:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    .line 1810
    sget v0, Lcom/nuance/swype/input/R$attr;->altIconGravity:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 1811
    sget v0, Lcom/nuance/swype/input/R$attr;->keyBackground:I

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 1812
    sget v0, Lcom/nuance/swype/input/R$attr;->keyFontTypeface:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 1814
    sget v0, Lcom/nuance/swype/input/R$attr;->defaultStrokeCandidateColor:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 1816
    return-void
.end method

.method public static isArrowKeys(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 2944
    const/16 v0, 0xfdc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xfcd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xfbd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xfdb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xfdd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xfde

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChangeKeyboardLayerKey(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 2948
    const/16 v0, 0x192c

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff5

    if-eq p0, v0, :cond_0

    const/16 v0, 0xfed

    if-eq p0, v0, :cond_0

    const/16 v0, 0xfee

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGroupedKeyVisible(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 7
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2659
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2661
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2662
    .local v2, "keyGroup":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2663
    .local v1, "index":I
    if-nez v1, :cond_2

    .line 2664
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2665
    iget-boolean v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v3, :cond_0

    move v3, v4

    .line 2674
    .end local v1    # "index":I
    .end local v2    # "keyGroup":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :goto_1
    return v3

    .restart local v1    # "index":I
    .restart local v2    # "keyGroup":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_1
    move v3, v5

    .line 2669
    goto :goto_1

    .line 2670
    :cond_2
    if-lez v1, :cond_3

    move v3, v4

    .line 2671
    goto :goto_1

    .line 2659
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "index":I
    .end local v2    # "keyGroup":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_4
    move v3, v5

    .line 2674
    goto :goto_1
.end method

.method public static isShiftKey(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 2940
    const/16 v0, 0xfe4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x192d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private justifyRow(Lcom/nuance/swype/input/KeyboardEx$Row;II)V
    .locals 7
    .param p1, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p2, "gravity"    # I
    .param p3, "totalWidth"    # I

    .prologue
    .line 3090
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 3106
    :cond_0
    return-void

    .line 3094
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardEx;->updateKeyPositions(Lcom/nuance/swype/input/KeyboardEx$Row;)I

    move-result v5

    .line 3095
    invoke-static {v5, p3, p2}, Lcom/nuance/swype/input/KeyboardEx;->getJustifiedOffset(III)I

    move-result v4

    .line 3098
    .local v4, "xRow":I
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3099
    iget v3, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 3101
    .local v3, "xFirst":I
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 3102
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3103
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3104
    .local v2, "rowKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    sub-int/2addr v5, v3

    add-int/2addr v5, v4

    iput v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 3102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private justifyRows(Ljava/util/List;II)V
    .locals 3
    .param p2, "gravity"    # I
    .param p3, "totalWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Row;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 3114
    .local p1, "keyboardLayout":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 3115
    .local v0, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    invoke-direct {p0, v0, p2, p3}, Lcom/nuance/swype/input/KeyboardEx;->justifyRow(Lcom/nuance/swype/input/KeyboardEx$Row;II)V

    goto :goto_0

    .line 3117
    .end local v0    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_0
    return-void
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Z)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "fillScreen"    # Z

    .prologue
    .line 2590
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    .line 2593
    new-instance v1, Lcom/nuance/swype/input/KeyboardStyle;

    sget v2, Lcom/nuance/swype/input/R$style;->SwypeReference:I

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    .line 2595
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2596
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v11}, Lcom/nuance/swype/input/KeyboardEx;->loadKeyboardIter(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/XmlResourceParser;ZZZIILcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardEx$Row;)I

    move-result v14

    .line 2599
    .local v14, "y":I
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardStyle;->clearKey()V

    .line 2601
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v2, Lcom/nuance/swype/input/R$attr;->verticalGap:I

    iget v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v12

    .line 2603
    .local v12, "defaultVerticalGap":I
    sub-int v1, v14, v12

    iput v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    .line 2605
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardEx;->updateKeyVisibilities()V

    .line 2607
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    const/4 v2, 0x1

    move/from16 v0, p3

    invoke-direct {p0, v1, v2, v0}, Lcom/nuance/swype/input/KeyboardEx;->fillKeyGaps(Ljava/util/List;IZ)V

    .line 2609
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iRight:I

    .line 2610
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iLeft:I

    .line 2611
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iBot:I

    .line 2612
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iTop:I

    .line 2614
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 2615
    .local v13, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    invoke-virtual {v13}, Lcom/nuance/swype/input/KeyboardEx$Row;->calcBounds()V

    .line 2616
    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx;->iLeft:I

    invoke-virtual {v13}, Lcom/nuance/swype/input/KeyboardEx$Row;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/KeyboardEx;->iLeft:I

    .line 2617
    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx;->iRight:I

    invoke-virtual {v13}, Lcom/nuance/swype/input/KeyboardEx$Row;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/KeyboardEx;->iRight:I

    .line 2618
    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx;->iTop:I

    invoke-virtual {v13}, Lcom/nuance/swype/input/KeyboardEx$Row;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/KeyboardEx;->iTop:I

    .line 2619
    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx;->iBot:I

    invoke-virtual {v13}, Lcom/nuance/swype/input/KeyboardEx$Row;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/KeyboardEx;->iBot:I

    goto :goto_0

    .line 2622
    .end local v13    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardEx;->updateIconLevels()V

    .line 2623
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v1, v2, :cond_1

    .line 2624
    invoke-direct/range {p0 .. p1}, Lcom/nuance/swype/input/KeyboardEx;->makeSplitKeyboard(Landroid/content/Context;)V

    .line 2627
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v2, Lcom/nuance/swype/input/R$attr;->sanitizeFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx;->sanitizeFont:Z

    .line 2629
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v2, Lcom/nuance/swype/input/R$attr;->hasNumRow:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mHasNumRow:Z

    .line 2630
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Keyboard has number row: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mHasNumRow:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2631
    return-void
.end method

.method private loadKeyboardIter(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/XmlResourceParser;ZZZIILcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardEx$Row;)I
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "inKey"    # Z
    .param p5, "inRow"    # Z
    .param p6, "inInclude"    # Z
    .param p7, "x"    # I
    .param p8, "y"    # I
    .param p9, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p10, "currentRow"    # Lcom/nuance/swype/input/KeyboardEx$Row;

    .prologue
    .line 2487
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "memory loadKeyboardIter start parse xml"

    aput-object v7, v5, v6

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2488
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2491
    .local v4, "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v19

    .local v19, "event":I
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_e

    .line 2492
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    .line 2493
    .local v22, "tag":Ljava/lang/String;
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_c

    .line 2494
    const-string/jumbo v3, "Row"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p5, :cond_2

    .line 2495
    const/16 p5, 0x1

    .line 2496
    const/16 p7, 0x0

    .line 2497
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardEx;->createRowFromXml(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/nuance/swype/input/KeyboardEx$Row;

    move-result-object p10

    .line 2498
    move-object/from16 v0, p10

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 2499
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2500
    const/16 p5, 0x0

    goto :goto_0

    .line 2502
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getShowNumberRow()Z

    move-result p5

    goto :goto_0

    .line 2505
    :cond_2
    const-string/jumbo v3, "Key"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p5, :cond_8

    .line 2507
    invoke-virtual/range {p2 .. p3}, Lcom/nuance/swype/input/KeyboardStyle;->loadKey(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v3, p0

    move-object/from16 v5, p10

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p2

    .line 2508
    invoke-virtual/range {v3 .. v8}, Lcom/nuance/swype/input/KeyboardEx;->createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx$Row;IILcom/nuance/swype/input/KeyboardStyle;)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object p9

    .line 2510
    const/16 p4, 0x1

    .line 2512
    invoke-static/range {p9 .. p9}, Lcom/nuance/swype/input/KeyboardEx$Key;->access$400(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 2513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-static/range {p9 .. p9}, Lcom/nuance/swype/input/KeyboardEx$Key;->access$400(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 2514
    .local v20, "group":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-nez v20, :cond_3

    .line 2515
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2516
    .restart local v20    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-static/range {p9 .. p9}, Lcom/nuance/swype/input/KeyboardEx$Key;->access$400(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2518
    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, p9

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2522
    .end local v20    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v16

    .line 2523
    .local v16, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2525
    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v17

    .line 2526
    .local v17, "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v3

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v3, v5, :cond_5

    .line 2527
    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2528
    move-object/from16 v0, p9

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v5, 0x192e

    if-ne v3, v5, :cond_5

    .line 2529
    const/16 v3, 0xfdf

    move-object/from16 v0, p9

    iput v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 2530
    const/4 v3, 0x0

    move-object/from16 v0, p9

    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 2534
    .end local v17    # "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v0, p9

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2535
    move-object/from16 v0, p9

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-static {v3}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    move-object/from16 v0, p9

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2539
    :cond_6
    move-object/from16 v0, p10

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;->addKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2569
    .end local v16    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v19    # "event":I
    .end local v22    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 2570
    .local v18, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v5, "Parse error"

    move-object/from16 v0, v18

    invoke-interface {v3, v5, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2573
    if-eqz p3, :cond_7

    .line 2574
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2577
    .end local v18    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_1
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "memory loadKeyboardIter end"

    aput-object v7, v5, v6

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2578
    return p8

    .line 2541
    .restart local v19    # "event":I
    .restart local v22    # "tag":Ljava/lang/String;
    :cond_8
    :try_start_2
    const-string/jumbo v3, "KeyboardEx"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2542
    if-nez p6, :cond_a

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/KeyboardStyle;->loadKeyboard(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 2543
    invoke-virtual/range {p0 .. p2}, Lcom/nuance/swype/input/KeyboardEx;->parseKeyboardAttributes(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardStyle;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 2573
    .end local v19    # "event":I
    .end local v22    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz p3, :cond_9

    .line 2574
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v3

    .line 2542
    .restart local v19    # "event":I
    .restart local v22    # "tag":Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    .line 2544
    :cond_b
    :try_start_3
    const-string/jumbo v3, "include"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2545
    sget v3, Lcom/nuance/swype/input/R$styleable;->KeyboardEx_include_src:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v5}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v21

    .line 2547
    .local v21, "includeId":I
    if-eqz v21, :cond_0

    .line 2548
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 2549
    .local v8, "includeParser":Landroid/content/res/XmlResourceParser;
    const/4 v11, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v5 .. v15}, Lcom/nuance/swype/input/KeyboardEx;->loadKeyboardIter(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/XmlResourceParser;ZZZIILcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardEx$Row;)I

    move-result p8

    goto/16 :goto_0

    .line 2554
    .end local v8    # "includeParser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "includeId":I
    :cond_c
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_0

    .line 2555
    const-string/jumbo v3, "Key"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz p4, :cond_d

    if-eqz p9, :cond_d

    .line 2556
    const/16 p4, 0x0

    .line 2557
    move-object/from16 v0, p9

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    move-object/from16 v0, p9

    iget v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v3, v5

    add-int p7, p7, v3

    .line 2558
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v0, p7

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto/16 :goto_0

    .line 2559
    :cond_d
    const-string/jumbo v3, "Row"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p5, :cond_0

    if-eqz p10, :cond_0

    .line 2561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v0, p10

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2562
    const/16 p5, 0x0

    .line 2563
    move-object/from16 v0, p10

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    add-int p8, p8, v3

    .line 2564
    move-object/from16 v0, p9

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int p8, p8, v3

    goto/16 :goto_0

    .line 2573
    .end local v22    # "tag":Ljava/lang/String;
    :cond_e
    if-eqz p3, :cond_7

    .line 2574
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1
.end method

.method private makeSplitKeyboard(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v17, v0

    div-int/lit8 v9, v17, 0x2

    .line 1427
    .local v9, "mid":I
    move v6, v9

    .line 1428
    .local v6, "leftShortestRowWidth":I
    move v11, v9

    .line 1430
    .local v11, "rightLongestRowWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1432
    .local v14, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    const/4 v15, 0x0

    .line 1433
    .local v15, "splitFound":Z
    iget v0, v14, Lcom/nuance/swype/input/KeyboardEx$Row;->visibleKeyCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    div-int/lit8 v2, v18, 0x2

    .line 1434
    .local v2, "halfCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v0, v14, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_0

    if-nez v15, :cond_0

    .line 1435
    iget-object v0, v14, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1441
    .local v4, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v0, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    iget v0, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v0, v9, :cond_6

    iget v0, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    move/from16 v18, v0

    iget v0, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    if-gt v9, v0, :cond_6

    .line 1444
    move/from16 v16, v3

    .line 1446
    .local v16, "splitIndex":I
    iget-object v0, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 1447
    iget v0, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->visibleIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v2, :cond_1

    if-lez v3, :cond_1

    .line 1448
    add-int/lit8 v16, v3, -0x1

    .line 1449
    iget-object v0, v14, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1451
    .restart local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    move-object v5, v4

    .line 1452
    .local v5, "leftKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v0, v14, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    add-int/lit8 v19, v16, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1462
    .local v10, "rightKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_1
    iget v0, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x20

    move/from16 v0, v18

    iput v0, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1468
    iget v0, v10, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v10, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1469
    const/4 v15, 0x1

    .line 1482
    .end local v5    # "leftKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v10    # "rightKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v16    # "splitIndex":I
    :cond_2
    :goto_2
    if-eqz v15, :cond_4

    .line 1483
    iget v0, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    move/from16 v18, v0

    iget v0, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move/from16 v19, v0

    add-int v8, v18, v19

    .line 1484
    .local v8, "leftWidth":I
    if-le v6, v8, :cond_3

    .line 1485
    move v6, v8

    .line 1487
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v18, v0

    sub-int v13, v18, v8

    .line 1488
    .local v13, "rightWidth":I
    if-ge v11, v13, :cond_4

    .line 1489
    move v11, v13

    .line 1434
    .end local v8    # "leftWidth":I
    .end local v13    # "rightWidth":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1455
    .restart local v16    # "splitIndex":I
    :cond_5
    move-object v5, v4

    .line 1456
    .restart local v5    # "leftKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v0, v14, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    add-int/lit8 v19, v3, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$Key;

    .restart local v10    # "rightKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    goto :goto_1

    .line 1471
    .end local v5    # "leftKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v10    # "rightKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v16    # "splitIndex":I
    :cond_6
    iget v0, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x20

    if-eqz v18, :cond_2

    .line 1474
    const/4 v15, 0x1

    goto :goto_2

    .line 1495
    .end local v2    # "halfCount":I
    .end local v3    # "i":I
    .end local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v14    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v15    # "splitFound":Z
    :cond_7
    int-to-float v0, v9

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 1496
    .local v7, "leftSplitScale":F
    int-to-float v0, v9

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 1498
    .local v12, "rightSplitScale":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/nuance/swype/input/R$bool;->split_keyboard_for_phone:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v12, v1}, Lcom/nuance/swype/input/KeyboardEx;->split(FFZ)V

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx;->changeKeys(Ljava/util/List;)V

    .line 1500
    return-void
.end method

.method private scaleX(Lcom/nuance/swype/input/KeyboardEx$Key;F)V
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "xScale"    # F

    .prologue
    .line 1551
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 1552
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 1553
    return-void
.end method

.method public static shouldEnableSpeechKey(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2952
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2994
    :cond_0
    :goto_0
    return v6

    .line 2955
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/UserPreferences;->isShowVoiceKeyEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2959
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 2960
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v8

    const/16 v9, 0x63

    if-eq v8, v9, :cond_0

    .line 2964
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    .line 2965
    .local v3, "ime":Lcom/nuance/swype/input/IME;
    if-nez v3, :cond_2

    move v6, v7

    .line 2966
    goto :goto_0

    .line 2967
    :cond_2
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v4

    .line 2968
    .local v4, "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isVoiceDisabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2972
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isNoMicrophone()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2976
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v2

    .line 2977
    .local v2, "currentSpeechProvider":I
    if-nez v2, :cond_7

    .line 2978
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    .line 2979
    .local v5, "inputMethod":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 2980
    .local v1, "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCoreLanguage()Z

    move-result v8

    if-nez v8, :cond_5

    .line 2981
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/nuance/swype/input/InputMethods;->findCoreInputLanguage(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 2983
    :cond_5
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechConfig()Lcom/nuance/speech/SpeechConfig;

    move-result-object v8

    iget-object v9, v1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/nuance/speech/SpeechConfig;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .end local v1    # "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v5    # "inputMethod":Lcom/nuance/swype/input/InputMethods;
    :cond_6
    move v6, v7

    .line 2994
    goto :goto_0

    .line 2987
    :cond_7
    if-ne v2, v7, :cond_6

    .line 2990
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IME;->isTalkBackOn()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_0
.end method

.method private split(FFZ)V
    .locals 11
    .param p1, "leftSplitScale"    # F
    .param p2, "rightSplitScale"    # F
    .param p3, "isSplitPhone"    # Z

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x0

    .line 1570
    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx;->rightMostKeyLocation:I

    .line 1571
    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx;->leftMostKeyLocation:I

    .line 1572
    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    .line 1573
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1575
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1580
    .local v3, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    invoke-direct {p0, v3, v10}, Lcom/nuance/swype/input/KeyboardEx;->iSplitAbleRow(Lcom/nuance/swype/input/KeyboardEx$Row;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x10

    .line 1581
    invoke-direct {p0, v3, v6}, Lcom/nuance/swype/input/KeyboardEx;->iSplitAbleRow(Lcom/nuance/swype/input/KeyboardEx$Row;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1583
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1584
    invoke-virtual {v6, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getScale(Landroid/content/res/Resources;)F

    move-result v4

    .line 1586
    .local v4, "splitKeyboardWidthScale":F
    :goto_1
    mul-float v6, v4, p1

    invoke-direct {p0, v6, v3, p3}, Lcom/nuance/swype/input/KeyboardEx;->horizontalSplitLeft(FLcom/nuance/swype/input/KeyboardEx$Row;Z)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v2

    .line 1589
    .local v2, "rightMostKeyBeforeSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    mul-float v6, v4, p2

    invoke-direct {p0, v6, v3, p3}, Lcom/nuance/swype/input/KeyboardEx;->horizontalSplitRight(FLcom/nuance/swype/input/KeyboardEx$Row;Z)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1592
    .local v0, "leftMostKeyAfterSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v9

    if-ne v6, v10, :cond_1

    iget-boolean v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->supportFullSpaceSplit:Z

    if-nez v6, :cond_0

    .line 1593
    :cond_1
    iget v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/nuance/swype/input/KeyboardEx;->rightMostKeyLocation:I

    if-le v6, v7, :cond_2

    .line 1594
    iget v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/nuance/swype/input/KeyboardEx;->rightMostKeyLocation:I

    .line 1597
    :cond_2
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->leftMostKeyLocation:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->leftMostKeyLocation:I

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v8, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_4

    .line 1599
    :cond_3
    iget v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/nuance/swype/input/KeyboardEx;->leftMostKeyLocation:I

    .line 1601
    :cond_4
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    iget v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v8, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_6

    .line 1603
    :cond_5
    iget v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    .line 1605
    :cond_6
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v8, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 1607
    :cond_7
    iget v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    goto/16 :goto_0

    .line 1584
    .end local v0    # "leftMostKeyAfterSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v2    # "rightMostKeyBeforeSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v4    # "splitKeyboardWidthScale":F
    :cond_8
    sget-object v6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v6, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getScale(Landroid/content/res/Resources;)F

    move-result v4

    goto :goto_1

    .line 1612
    .end local v3    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_9
    return-void
.end method

.method protected static swapAltCharKeyboardKeyData(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 6
    .param p0, "lhs"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p1, "rhs"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 1853
    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1854
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1855
    .local v1, "codes":[I
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 1856
    .local v0, "altCode":I
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1857
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 1859
    .local v4, "shiftedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1860
    iget v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    iput v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 1861
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1862
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 1863
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    iput-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1865
    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1866
    iput-object v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1867
    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 1868
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1869
    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 1870
    return-void
.end method

.method private updateIconLevels()V
    .locals 8

    .prologue
    .line 2852
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getIconLevel(Ljava/util/EnumSet;)I

    move-result v1

    .line 2853
    .local v1, "level":I
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 2854
    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2855
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v4, :cond_1

    .line 2856
    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 2857
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "updateIconLevels...level: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2858
    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 2859
    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 2860
    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 2866
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    return-void
.end method

.method private updateKeyVisibilities()V
    .locals 18

    .prologue
    .line 3129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v8

    .line 3130
    .local v8, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-static {v14, v8}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->current(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)Ljava/util/EnumSet;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardSettings:Ljava/util/EnumSet;

    .line 3132
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    .line 3135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3136
    .local v7, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardSettings:Ljava/util/EnumSet;

    iget-object v0, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->keyboardSettings:Ljava/util/EnumSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 3137
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 3141
    :cond_1
    iget v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->modeFlags:I

    if-eqz v15, :cond_0

    iget v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->modeFlags:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardModeId:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-nez v15, :cond_0

    .line 3142
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    goto :goto_0

    .line 3146
    .end local v7    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3147
    .restart local v7    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v15, :cond_3

    .line 3148
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v15

    array-length v10, v15

    .line 3149
    .local v10, "modeCount":I
    const/4 v3, 0x0

    .local v3, "count":I
    :goto_1
    if-ge v3, v10, :cond_3

    .line 3150
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v15

    aget-object v4, v15, v3

    .line 3151
    .local v4, "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockModeKeyCode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I

    move-result v11

    .line 3152
    .local v11, "modeKeyCode":I
    iget-object v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ne v15, v11, :cond_4

    .line 3153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-static {v15}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    .line 3154
    invoke-static {v15}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 3155
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    .line 3149
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3157
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardEx;->mPrimaryKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v4, v15, :cond_6

    .line 3158
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    goto :goto_2

    .line 3160
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 3161
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    .line 3160
    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v15

    if-nez v15, :cond_4

    .line 3162
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    goto :goto_2

    .line 3171
    .end local v3    # "count":I
    .end local v4    # "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .end local v7    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v10    # "modeCount":I
    .end local v11    # "modeKeyCode":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 3172
    .local v5, "groupCount":I
    const/4 v6, 0x0

    .local v6, "groupIndex":I
    :goto_3
    if-ge v6, v5, :cond_c

    .line 3174
    const/4 v1, 0x0

    .line 3175
    .local v1, "bestKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    const/4 v2, -0x1

    .line 3177
    .local v2, "bestMatchCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_8
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3180
    .restart local v7    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v15, :cond_8

    .line 3185
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 3188
    iget-object v15, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->keyboardSettings:Ljava/util/EnumSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardSettings:Ljava/util/EnumSet;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->matchCount(Ljava/util/EnumSet;Ljava/util/EnumSet;)I

    move-result v9

    .line 3190
    .local v9, "matchCount":I
    if-eqz v1, :cond_9

    if-le v9, v2, :cond_8

    .line 3191
    :cond_9
    move-object v1, v7

    .line 3192
    move v2, v9

    goto :goto_4

    .line 3197
    .end local v7    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v9    # "matchCount":I
    :cond_a
    if-eqz v1, :cond_b

    .line 3198
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 3172
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3202
    .end local v1    # "bestKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v2    # "bestMatchCount":I
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 3203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_d
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 3204
    .local v12, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    const/4 v15, 0x0

    iput v15, v12, Lcom/nuance/swype/input/KeyboardEx$Row;->visibleKeyCount:I

    .line 3205
    iget-object v15, v12, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_e
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3206
    .restart local v7    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v0, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 3207
    iget v0, v12, Lcom/nuance/swype/input/KeyboardEx$Row;->visibleKeyCount:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    iput v0, v12, Lcom/nuance/swype/input/KeyboardEx$Row;->visibleKeyCount:I

    move/from16 v0, v16

    iput v0, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->visibleIndex:I

    goto :goto_6

    .line 3210
    .end local v7    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nuance/swype/input/KeyboardEx;->updateKeyPositions(Lcom/nuance/swype/input/KeyboardEx$Row;)I

    move-result v13

    .line 3212
    .local v13, "rowWidth":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    if-ge v15, v13, :cond_d

    .line 3213
    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto :goto_5

    .line 3217
    .end local v12    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v13    # "rowWidth":I
    :cond_10
    return-void
.end method


# virtual methods
.method public canSwypePopupCharacters()Z
    .locals 1

    .prologue
    .line 2427
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx;->canSwypePopupCharacters:Z

    return v0
.end method

.method public clearStickyKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2932
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2933
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iput-boolean v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 2934
    iput-boolean v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    .line 2935
    iput-boolean v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    goto :goto_0

    .line 2937
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_0
    return-void
.end method

.method public constrainInternalBoundsX(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 2649
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->iLeft:I

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iRight:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public constrainInternalBoundsY(I)I
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 2653
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->iTop:I

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iBot:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx$Row;IILcom/nuance/swype/input/KeyboardStyle;)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "style"    # Lcom/nuance/swype/input/KeyboardStyle;

    .prologue
    .line 2481
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx$Row;IILcom/nuance/swype/input/KeyboardStyle;)V

    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Lcom/nuance/swype/input/KeyboardEx$Row;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 2477
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$Row;

    invoke-direct {v0, p1, p0, p2}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardEx;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public findKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 4
    .param p1, "code"    # I

    .prologue
    .line 3274
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 3275
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3276
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p1, :cond_0

    .line 3280
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3258
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getCurrentIconLevel()I
    .locals 2

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getIconLevel(Ljava/util/EnumSet;)I

    move-result v0

    return v0
.end method

.method protected getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->defaultKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method public getDisplayWidth()I
    .locals 1

    .prologue
    .line 2351
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 2343
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    return v0
.end method

.method public getInvalidDockModes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3269
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    return-object v0
.end method

.method public getKeyboardScaledWidth(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 3048
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getKeyboardWidth(Landroid/content/res/Resources;)I

    move-result v0

    .line 3049
    return v0
.end method

.method public getKeyboardSettings()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->keyboardSettings:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getLayoutRowCount()I
    .locals 1

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 2347
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    return v0
.end method

.method public getModeId()I
    .locals 1

    .prologue
    .line 2355
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardModeId:I

    return v0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2410
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    .line 2411
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardEx;->computeNearestNeighbors()V

    .line 2413
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 2414
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    div-int v1, p2, v1

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 2415
    .local v0, "index":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 2416
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    .line 2419
    .end local v0    # "index":I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public getShiftKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    return-object v0
.end method

.method public hasNumRow()Z
    .locals 1

    .prologue
    .line 3287
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mHasNumRow:Z

    return v0
.end method

.method public isBamarLetterCategory()Z
    .locals 2

    .prologue
    .line 2468
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->letterLanguageCategory:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForcedSwypeable()Z
    .locals 1

    .prologue
    .line 2423
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx;->forcedSwypeable:Z

    return v0
.end method

.method public isGULetterCategory()Z
    .locals 2

    .prologue
    .line 2458
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->letterLanguageCategory:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndianLetterCategory()Z
    .locals 2

    .prologue
    .line 2432
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->letterLanguageCategory:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKMLetterCategory()Z
    .locals 2

    .prologue
    .line 2453
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->letterLanguageCategory:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKNLetterCategory()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2448
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->letterLanguageCategory:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isKeyWidthReducedDockMode()Z
    .locals 2

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isKeyboardFullDockMode()Z
    .locals 2

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isKeyboardMiniDockMode()Z
    .locals 2

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMLLetterCategory()Z
    .locals 2

    .prologue
    .line 2438
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->letterLanguageCategory:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNearOrBeyondBounds(III)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "wiggle"    # I

    .prologue
    const/4 v0, 0x1

    .line 2639
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iLeft:I

    add-int/2addr v1, p3

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iRight:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p3

    if-le p1, v1, :cond_1

    .line 2645
    :cond_0
    :goto_0
    return v0

    .line 2642
    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iTop:I

    add-int/2addr v1, p3

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iBot:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_0

    .line 2645
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRussianOrUkrainLetterCategory()Z
    .locals 2

    .prologue
    .line 2463
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->letterLanguageCategory:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSanitizeFont()Z
    .locals 1

    .prologue
    .line 3284
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx;->sanitizeFont:Z

    return v0
.end method

.method public isTALetterCategory()Z
    .locals 2

    .prologue
    .line 2443
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->letterLanguageCategory:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTHLetterCategory()Z
    .locals 2

    .prologue
    .line 2473
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->letterLanguageCategory:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseKeyboardAttributes(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardStyle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # Lcom/nuance/swype/input/KeyboardStyle;

    .prologue
    const/4 v2, 0x0

    .line 2875
    sget v1, Lcom/nuance/swype/input/R$attr;->invalidDockModes:I

    invoke-virtual {p2, v1, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->from(I)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    .line 2876
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 2877
    .local v0, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v5, v6}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2878
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 2876
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2882
    .end local v0    # "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2883
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mIsPopup:Z

    if-eqz v1, :cond_2

    .line 2884
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v3, :cond_2

    .line 2886
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v1, v3, :cond_3

    .line 2890
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 2894
    :cond_3
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/4 v3, -0x1

    invoke-direct {p0, p2, v1, v3}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mForcedHeight:I

    .line 2896
    sget v1, Lcom/nuance/swype/input/R$attr;->keyboardForcedSwypeable:I

    invoke-virtual {p2, v1, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx;->forcedSwypeable:Z

    .line 2897
    sget v1, Lcom/nuance/swype/input/R$attr;->canSwypePopupCharacters:I

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx;->canSwypePopupCharacters:Z

    .line 2898
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    iget v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mForcedHeight:I

    invoke-direct {p0, p2, v1, v3}, Lcom/nuance/swype/input/KeyboardEx;->getBackground(Lcom/nuance/swype/input/KeyboardStyle;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->background:Landroid/graphics/drawable/Drawable;

    .line 2899
    sget v1, Lcom/nuance/swype/input/R$attr;->letterLanguageCategory:I

    invoke-virtual {p2, v1, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardEx;->letterLanguageCategory:I

    .line 2900
    return-void
.end method

.method protected setDefaultKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 0
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardEx;->defaultKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1796
    return-void
.end method

.method public setKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 4
    .param p1, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 1522
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq p1, v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1524
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1525
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardEx;->mPrimaryKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1526
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardScaledWidth(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    .line 1527
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    .line 1528
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1529
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1530
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx;->mKdbId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Z)V

    .line 1532
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method protected updateKeyPositions(Lcom/nuance/swype/input/KeyboardEx$Row;)I
    .locals 6
    .param p1, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;

    .prologue
    const/4 v3, 0x0

    .line 3226
    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 3237
    :goto_0
    return v3

    .line 3229
    :cond_0
    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 3230
    .local v2, "xRow":I
    move v1, v2

    .line 3231
    .local v1, "xNextKey":I
    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3232
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v4, :cond_1

    .line 3233
    iput v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 3234
    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    iget v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    goto :goto_1

    .line 3237
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    sub-int v3, v1, v2

    goto :goto_0
.end method
