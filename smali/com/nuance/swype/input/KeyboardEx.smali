.class public Lcom/nuance/swype/input/KeyboardEx;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field public static final KEYBOARDMODE_URL_RESID:I = 0x10

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

.field public static final KEYCODE_CLEAR_WORD:I = -0x19

.field public static final KEYCODE_COPY:I = 0xb52

.field public static final KEYCODE_CUT:I = 0xb51

.field public static final KEYCODE_DELETE:I = 0x8

.field public static final KEYCODE_DELETE_WORD:I = 0x191f

.field public static final KEYCODE_DELIMITER:I = 0x27

.field public static final KEYCODE_DOT_COM:I = 0x18

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

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

.field public static final KEYCODE_SEGMENTATION:I = 0x17

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

.field public static final KEYCODE_SYMBOL_RETURN:I = -0x1a

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

.field keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

.field leftMostKeyLocation:I

.field private letterLanguageCategory:I

.field private mCellHeight:I

.field private mCellWidth:I

.field public final mDisplayHeight:I

.field mDisplayWidth:I

.field private mForcedHeight:I

.field private mGridNeighbors:[[I

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
    .line 80
    const-string v0, "KeyboardEx"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "fillScreen"    # Z

    .prologue
    .line 1706
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

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZZLcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 1707
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZLcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "fillScreen"    # Z
    .param p5, "isPopup"    # Z
    .param p6, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 1723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 535
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mPrimaryKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 548
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mIsPopup:Z

    .line 551
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/swype/input/KeyboardEx;->sanitizeFont:Z

    .line 553
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    .line 1725
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    .line 1726
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1727
    .local v3, "res":Landroid/content/res/Resources;
    iput-object p6, p0, Lcom/nuance/swype/input/KeyboardEx;->mPrimaryKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1729
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1730
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1733
    sget-object p6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1754
    :cond_0
    :goto_0
    iput-object p6, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1756
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1759
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardScaledWidth(Landroid/content/res/Resources;)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    .line 1760
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    .line 1761
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    .line 1762
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    .line 1763
    iput p3, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardModeId:I

    .line 1764
    iput p2, p0, Lcom/nuance/swype/input/KeyboardEx;->mKdbId:I

    .line 1765
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    invoke-direct {p0, p1, v4, p4}, Lcom/nuance/swype/input/KeyboardEx;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Z)V

    .line 1766
    return-void

    .line 1735
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_1
    if-eqz p5, :cond_0

    .line 1736
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 1737
    .local v2, "orientation":I
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p6, v4, :cond_4

    .line 1738
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v4, v3, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1739
    sget-object p6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1750
    :cond_2
    :goto_1
    iput-boolean p5, p0, Lcom/nuance/swype/input/KeyboardEx;->mIsPopup:Z

    goto :goto_0

    .line 1741
    :cond_3
    sget-object p6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    goto :goto_1

    .line 1743
    :cond_4
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p6, v4, :cond_2

    .line 1744
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v4, v3, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1745
    sget-object p6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    goto :goto_1

    .line 1747
    :cond_5
    sget-object p6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;IIII)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "extraKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p5, "idxDefault"    # I
    .param p6, "gravity"    # I
    .param p7, "columns"    # I
    .param p8, "horizontalPadding"    # I

    .prologue
    .line 1888
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IZ)V

    .line 1890
    const/16 v21, 0x0

    .line 1891
    .local v21, "x":I
    const/16 v22, 0x0

    .line 1892
    .local v22, "y":I
    const/4 v6, 0x0

    .line 1893
    .local v6, "column":I
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 1895
    const/4 v5, 0x0

    .line 1897
    .local v5, "chDefault":Ljava/lang/Character;
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

    .line 1900
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

    move-result v8

    .line 1902
    .local v8, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v23, v0

    sget v24, Lcom/nuance/swype/input/R$attr;->horizontalGap:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v9

    .line 1905
    .local v9, "horizontalGap":I
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

    .line 1908
    .local v19, "verticalGap":I
    and-int/lit8 v7, p6, 0x7

    .line 1910
    .local v7, "hGrav":I
    const/16 v23, 0x5

    move/from16 v0, v23

    if-ne v7, v0, :cond_7

    const/4 v12, 0x1

    .line 1912
    .local v12, "isGravityRight":Z
    :goto_0
    new-instance v16, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1913
    .local v16, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 1918
    if-eqz p4, :cond_8

    .line 1920
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1921
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1922
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 1923
    move/from16 v0, v20

    move-object/from16 v1, p4

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 1924
    move-object/from16 v0, p4

    iput v8, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 1925
    move-object/from16 v0, p4

    iput v9, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 1926
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v23, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/nuance/swype/input/KeyboardEx;->initKeyStyleValues(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardStyle;)V

    .line 1928
    add-int/lit8 v6, v6, 0x1

    .line 1929
    add-int v23, v20, v9

    add-int/lit8 v21, v23, 0x0

    .line 1930
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 1931
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;->addKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1933
    const/16 v23, -0x1

    move/from16 v0, v23

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    .line 1935
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx;->defaultKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1942
    :cond_0
    :goto_1
    if-eqz v5, :cond_2

    .line 1943
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1944
    .local v18, "slideMenuBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1945
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v23

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1946
    add-int/lit8 v23, p5, 0x1

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 1947
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

    .line 1950
    :cond_1
    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    .line 1952
    .end local v18    # "slideMenuBuilder":Ljava/lang/StringBuilder;
    :cond_2
    const/16 v23, -0x1

    move/from16 v0, p7

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    const v15, 0x7fffffff

    .line 1954
    .local v15, "maxColumns":I
    :goto_2
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_c

    .line 1955
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1956
    .local v4, "c":C
    if-lt v6, v15, :cond_4

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1960
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_3

    .line 1961
    if-eqz v12, :cond_a

    .line 1963
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

    .line 1969
    :cond_3
    :goto_4
    new-instance v16, Lcom/nuance/swype/input/KeyboardEx$Row;

    .end local v16    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1970
    .restart local v16    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 1971
    const/4 v6, 0x0

    .line 1973
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/nuance/swype/input/KeyboardEx;->createCharKey(Lcom/nuance/swype/input/KeyboardStyle;C)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v14

    .line 1974
    .local v14, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1975
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/KeyboardEx$Row;->addKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1976
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 1977
    if-eqz v12, :cond_b

    .line 1979
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1985
    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 1987
    if-eqz v5, :cond_6

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1989
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nuance/swype/input/KeyboardEx;->defaultKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1954
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1910
    .end local v4    # "c":C
    .end local v10    # "i":I
    .end local v12    # "isGravityRight":Z
    .end local v14    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v15    # "maxColumns":I
    .end local v16    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1937
    .restart local v12    # "isGravityRight":Z
    .restart local v16    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_8
    const/16 v23, -0x1

    move/from16 v0, p5

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 1939
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto/16 :goto_1

    :cond_9
    move/from16 v15, p7

    .line 1952
    goto/16 :goto_2

    .line 1966
    .restart local v4    # "c":C
    .restart local v10    # "i":I
    .restart local v15    # "maxColumns":I
    :cond_a
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

    .line 1982
    .restart local v14    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_b
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    goto :goto_5

    .line 1993
    .end local v4    # "c":C
    .end local v14    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_c
    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/KeyboardEx$Row;->keyCount()I

    move-result v23

    if-lez v23, :cond_d

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1995
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_d

    .line 1996
    if-eqz v12, :cond_e

    .line 1998
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

    .line 2010
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v17

    .line 2013
    .local v17, "rows":I
    if-eqz v12, :cond_f

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 2016
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_7

    .line 2001
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "rows":I
    :cond_e
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

    .line 2019
    .restart local v17    # "rows":I
    :cond_f
    const/4 v10, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v10, v0, :cond_11

    .line 2020
    const/16 v21, 0x0

    .line 2021
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_10

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2023
    .restart local v14    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move/from16 v0, v21

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 2024
    move/from16 v0, v22

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 2025
    move/from16 v0, v20

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2026
    iput v8, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 2027
    iput v9, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 2028
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->isMiniKeyboardKey:Z

    .line 2029
    iget v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move/from16 v23, v0

    iget v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int v21, v21, v23

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2031
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

    .line 2021
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 2033
    .end local v14    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_10
    add-int v23, v19, v8

    add-int v22, v22, v23

    .line 2019
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 2035
    .end local v13    # "j":I
    :cond_11
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    .line 2038
    if-eqz v7, :cond_12

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v7, v2}, Lcom/nuance/swype/input/KeyboardEx;->justifyRows(Ljava/util/List;II)V

    .line 2041
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->updateIconLevels()V

    .line 2042
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
    .line 2158
    .local p3, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;>;"
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IZ)V

    .line 2160
    const/16 v26, 0x0

    .line 2161
    .local v26, "x":I
    const/16 v27, 0x0

    .line 2162
    .local v27, "y":I
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    move/from16 v29, v0

    const/16 v30, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx;->getKeyHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v17

    .line 2165
    .local v17, "keyHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->verticalGap:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    move/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v28 .. v31}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v24

    .line 2168
    .local v24, "verticalGap":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->keyTextSize:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v20

    .line 2169
    .local v20, "keyTextSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->keyTextColor:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v18

    .line 2170
    .local v18, "keyTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->candidateComponent:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v10

    .line 2171
    .local v10, "componentkeyTextColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->defaultStrokeCandidateColor:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v11

    .line 2172
    .local v11, "defaultStrokeCandidateColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->keyContentBaseline:I

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v17

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v9

    .line 2174
    .local v9, "baseline":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->altTextSize:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v8

    .line 2175
    .local v8, "altTextSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->altTextColor:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v6

    .line 2176
    .local v6, "altTextColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->tertiaryTextColor:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v23

    .line 2177
    .local v23, "tertiaryTextColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->keyTextColorPressed:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v19

    .line 2178
    .local v19, "keyTextColorPressed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->altTextGravity:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v7

    .line 2179
    .local v7, "altTextGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->altIconSize:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v5

    .line 2180
    .local v5, "altIconSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->altIconGravity:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v4

    .line 2181
    .local v4, "altIconGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->keyFontTypeface:I

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v16

    .line 2182
    .local v16, "keyFontTypeface":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v28, v0

    sget v29, Lcom/nuance/swype/input/R$attr;->keyBackground:I

    invoke-virtual/range {v28 .. v29}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 2183
    .local v15, "keyBackground":Landroid/graphics/drawable/Drawable;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    .line 2184
    .local v22, "rowKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    new-instance v21, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2185
    .local v21, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move/from16 v0, v24

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 2186
    const/16 v28, 0xc

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 2188
    const/16 v26, 0x0

    .line 2189
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 2191
    add-int v28, v24, v17

    add-int v27, v27, v28

    .line 2193
    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 2194
    .local v25, "wordKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    new-instance v14, Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V

    .line 2195
    .local v14, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move/from16 v0, v26

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 2196
    move/from16 v0, v27

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 2197
    move-object/from16 v0, v25

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2198
    move/from16 v0, v17

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 2199
    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 2200
    move/from16 v0, v20

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 2201
    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 2202
    iput v10, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 2203
    iput v11, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 2204
    iput v9, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 2205
    iput v8, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 2206
    iput v6, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 2207
    move/from16 v0, v23

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 2208
    move/from16 v0, v19

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 2209
    iput v7, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 2210
    iput v5, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    .line 2211
    iput v4, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 2212
    move/from16 v0, v16

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 2213
    iput-object v15, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 2215
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->text:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 2216
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->text:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 2217
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    move-object/from16 v0, v28

    iput-object v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 2218
    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 2219
    iget v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move/from16 v28, v0

    iget v0, v14, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int v26, v26, v28

    .line 2221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto/16 :goto_1

    .line 2225
    .end local v14    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v25    # "wordKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    :cond_1
    add-int v28, v27, v17

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    goto/16 :goto_0

    .line 2227
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v21    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v22    # "rowKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
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
    .line 2046
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

    .line 2047
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
    .line 2051
    .local p3, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZZLcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 2053
    const/16 v37, 0x0

    .line 2054
    .local v37, "x":I
    const/16 v38, 0x0

    .line 2055
    .local v38, "y":I
    const/4 v15, 0x0

    .line 2056
    .local v15, "column":I
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 2058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/16 v4, 0x32

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeyHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v24

    .line 2060
    .local v24, "keyHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->horizontalGap:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v19

    .line 2063
    .local v19, "horizontalGap":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->verticalGap:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v34

    .line 2066
    .local v34, "verticalGap":I
    new-instance v31, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2067
    .local v31, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move/from16 v0, v34

    move-object/from16 v1, v31

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 2068
    const/16 v2, 0xc

    move-object/from16 v0, v31

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 2070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v27

    .line 2071
    .local v27, "keyTextSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v25

    .line 2072
    .local v25, "keyTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->candidateComponent:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v17

    .line 2073
    .local v17, "componentkeyTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->defaultStrokeCandidateColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v18

    .line 2074
    .local v18, "defaultStrokeCandidateColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyContentBaseline:I

    const/4 v4, 0x0

    move/from16 v0, v24

    invoke-virtual {v2, v3, v0, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v14

    .line 2076
    .local v14, "baseline":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v13

    .line 2077
    .local v13, "altTextSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v11

    .line 2078
    .local v11, "altTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->tertiaryTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v33

    .line 2079
    .local v33, "tertiaryTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextColorPressed:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v26

    .line 2080
    .local v26, "keyTextColorPressed":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextGravity:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v12

    .line 2081
    .local v12, "altTextGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altIconSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v10

    .line 2082
    .local v10, "altIconSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altIconGravity:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    .line 2083
    .local v9, "altIconGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyFontTypeface:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v23

    .line 2084
    .local v23, "keyFontTypeface":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyBackground:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 2086
    .local v22, "keyBackground":Landroid/graphics/drawable/Drawable;
    new-instance v30, Landroid/graphics/Paint;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Paint;-><init>()V

    .line 2087
    .local v30, "paint":Landroid/graphics/Paint;
    move/from16 v0, v27

    int-to-float v2, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2088
    mul-int v2, p5, p6

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

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 2094
    .local v28, "keyWidth":I
    const/16 v32, 0x0

    .line 2095
    .local v32, "singleWordLength":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2096
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

    .line 2099
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 2100
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v36

    .line 2101
    .local v36, "wordLength":I
    mul-int v2, v36, v32

    move/from16 v0, v28

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 2102
    goto :goto_0

    .line 2104
    .end local v36    # "wordLength":I
    :cond_1
    const/4 v2, 0x1

    add-int v3, v28, v19

    div-int v3, p5, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 2105
    .local v16, "columnCount":I
    div-int v28, p5, v16

    .line 2106
    rem-int v29, p5, v16

    .line 2107
    .local v29, "overhang":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/CharSequence;

    .line 2108
    .local v35, "word":Ljava/lang/CharSequence;
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    add-int v2, v37, v28

    add-int v2, v2, p7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    if-le v2, v3, :cond_3

    .line 2110
    :cond_2
    const/16 v37, 0x0

    .line 2111
    add-int v2, v34, v24

    add-int v38, v38, v2

    .line 2112
    const/4 v15, 0x0

    .line 2115
    :cond_3
    new-instance v21, Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V

    .line 2116
    .local v21, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move/from16 v0, v37

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 2117
    move/from16 v0, v38

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 2118
    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2119
    move/from16 v0, v24

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 2120
    move/from16 v0, v19

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 2121
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 2122
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 2123
    move/from16 v0, v17

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 2124
    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 2125
    move-object/from16 v0, v21

    iput v14, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 2126
    move-object/from16 v0, v21

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 2127
    move-object/from16 v0, v21

    iput v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 2128
    move/from16 v0, v33

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 2129
    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 2130
    move-object/from16 v0, v21

    iput v12, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 2131
    move-object/from16 v0, v21

    iput v10, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    .line 2132
    move-object/from16 v0, v21

    iput v9, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 2133
    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 2134
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 2136
    move-object/from16 v0, v35

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 2137
    move-object/from16 v0, v35

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 2138
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 2139
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 2140
    add-int/lit8 v15, v15, 0x1

    .line 2141
    move-object/from16 v0, v21

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move-object/from16 v0, v21

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    add-int/2addr v2, v3

    add-int v37, v37, v2

    .line 2144
    move/from16 v0, v29

    if-ge v15, v0, :cond_4

    .line 2145
    add-int/lit8 v37, v37, 0x1

    .line 2146
    move-object/from16 v0, v21

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2149
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2151
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v0, v37

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto/16 :goto_1

    .line 2153
    .end local v21    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v35    # "word":Ljava/lang/CharSequence;
    :cond_5
    add-int v2, v38, v24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    .line 2154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;IILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 33
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
    .line 2231
    .local p3, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZZLcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 2233
    const/16 v31, 0x0

    .line 2234
    .local v31, "x":I
    const/16 v32, 0x0

    .line 2235
    .local v32, "y":I
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 2237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/16 v4, 0x32

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeyHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v22

    .line 2238
    .local v22, "keyHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->verticalGap:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v29

    .line 2241
    .local v29, "verticalGap":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v25

    .line 2242
    .local v25, "keyTextSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v23

    .line 2243
    .local v23, "keyTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->candidateComponent:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v15

    .line 2244
    .local v15, "componentkeyTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->defaultStrokeCandidateColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v16

    .line 2245
    .local v16, "defaultStrokeCandidateColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyContentBaseline:I

    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v14

    .line 2247
    .local v14, "baseline":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v13

    .line 2248
    .local v13, "altTextSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v11

    .line 2249
    .local v11, "altTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->tertiaryTextColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v28

    .line 2250
    .local v28, "tertiaryTextColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyTextColorPressed:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v24

    .line 2251
    .local v24, "keyTextColorPressed":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altTextGravity:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v12

    .line 2252
    .local v12, "altTextGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altIconSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v10

    .line 2253
    .local v10, "altIconSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->altIconGravity:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    .line 2254
    .local v9, "altIconGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyFontTypeface:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v21

    .line 2255
    .local v21, "keyFontTypeface":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->keyBackground:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 2256
    .local v20, "keyBackground":Landroid/graphics/drawable/Drawable;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    .line 2257
    .local v27, "rowKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    new-instance v26, Lcom/nuance/swype/input/KeyboardEx$Row;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2258
    .local v26, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    move/from16 v0, v29

    move-object/from16 v1, v26

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 2259
    const/16 v2, 0xc

    move-object/from16 v0, v26

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 2261
    const/16 v31, 0x0

    .line 2262
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v27

    if-eq v0, v2, :cond_0

    .line 2264
    add-int v2, v29, v22

    add-int v32, v32, v2

    .line 2266
    :cond_0
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 2267
    .local v30, "wordKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    new-instance v19, Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V

    .line 2268
    .local v19, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move/from16 v0, v31

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 2269
    move/from16 v0, v32

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 2270
    move-object/from16 v0, v30

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    move-object/from16 v0, v19

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2271
    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 2272
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 2273
    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 2274
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 2275
    move-object/from16 v0, v19

    iput v15, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 2276
    move/from16 v0, v16

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 2277
    move-object/from16 v0, v19

    iput v14, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 2278
    move-object/from16 v0, v19

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 2279
    move-object/from16 v0, v19

    iput v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 2280
    move/from16 v0, v28

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 2281
    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 2282
    move-object/from16 v0, v19

    iput v12, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 2283
    move-object/from16 v0, v19

    iput v10, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    .line 2284
    move-object/from16 v0, v19

    iput v9, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 2285
    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 2286
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 2288
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 2289
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 2290
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 2291
    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 2292
    move-object/from16 v0, v19

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move-object/from16 v0, v19

    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    add-int/2addr v2, v3

    add-int v31, v31, v2

    .line 2294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2296
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v0, v31

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto/16 :goto_1

    .line 2298
    .end local v19    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v30    # "wordKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    :cond_1
    add-int v2, v32, v22

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    goto/16 :goto_0

    .line 2300
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v26    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v27    # "rowKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "fillScreen"    # Z

    .prologue
    .line 1691
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZ)V

    .line 1692
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "fillScreen"    # Z
    .param p4, "isPopup"    # Z

    .prologue
    .line 1679
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

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZZLcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 1680
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;II)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
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
    .line 78
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
    .line 78
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
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardEx;->getAlternateIconSize(Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method private adjustHeight(I)I
    .locals 8
    .param p1, "height"    # I

    .prologue
    .line 2945
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 2946
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 2947
    .local v3, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 2949
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v2

    .line 2954
    .local v2, "keyboardScale":F
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v4, v5, :cond_1

    .line 2958
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2961
    :cond_1
    const v4, 0x3f333333    # 0.7f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    const v4, 0x3fa66667    # 1.3000001f

    cmpg-float v4, v2, v4

    if-gez v4, :cond_2

    .line 2962
    int-to-float v4, p1

    mul-float/2addr v4, v2

    float-to-int p1, v4

    .line 2964
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2965
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p1, v4, :cond_3

    .line 2966
    iget p1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2970
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2971
    int-to-double v4, p1

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int p1, v4

    .line 2973
    :cond_4
    return p1

    .line 2951
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "keyboardScale":F
    :cond_5
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v2

    .restart local v2    # "keyboardScale":F
    goto :goto_0
.end method

.method private static adjustKeyWidths(Lcom/nuance/swype/input/KeyboardEx$Row;I)V
    .locals 1
    .param p0, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p1, "extra"    # I

    .prologue
    .line 2712
    invoke-static {p0}, Lcom/nuance/swype/input/KeyboardEx;->getVisibleKeys(Lcom/nuance/swype/input/KeyboardEx$Row;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nuance/swype/input/KeyboardEx;->allocateSpace(Ljava/util/List;I)V

    .line 2713
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
    .line 2660
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/nuance/swype/input/KeyboardEx;->allocateSpace(Ljava/util/List;I)V

    .line 2661
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
    .line 2669
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 2670
    .local v2, "count":I
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 2690
    :cond_0
    return-void

    .line 2673
    :cond_1
    if-lez p1, :cond_3

    const/4 v5, 0x1

    .line 2674
    .local v5, "unit":I
    :goto_0
    div-int v1, p1, v2

    .line 2677
    .local v1, "add":I
    rem-int v7, p1, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 2678
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    add-int/lit8 v8, v2, -0x1

    div-int/2addr v8, v2

    add-int v6, v7, v8

    .line 2679
    .local v6, "weight":I
    const/4 v0, 0x0

    .line 2681
    .local v0, "accum":I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 2682
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2683
    .local v4, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v7, v1

    iput v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2684
    add-int/2addr v0, v6

    .line 2685
    const/16 v7, 0x64

    if-lt v0, v7, :cond_2

    .line 2686
    iget v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v7, v5

    iput v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 2687
    add-int/lit8 v0, v0, -0x64

    .line 2681
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2673
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
    .line 1521
    .local p1, "keyboardLayout":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    .line 1522
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1523
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1525
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1526
    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1527
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    iget-object v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1529
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1533
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    return-void
.end method

.method private computeNearestNeighbors()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 2332
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v11

    add-int/lit8 v11, v11, 0xa

    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v11, v11, 0xa

    iput v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    .line 2333
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v11

    add-int/lit8 v11, v11, 0x5

    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v11, v11, 0x5

    iput v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    .line 2335
    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    iget v12, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3fb33333    # 1.4f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 2336
    mul-int v8, v11, v11

    .line 2338
    .local v8, "proximityThreshold":I
    const/16 v11, 0x32

    new-array v11, v11, [[I

    iput-object v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    .line 2339
    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v6, v11, [I

    .line 2340
    .local v6, "indices":[I
    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    mul-int/lit8 v4, v11, 0xa

    .line 2341
    .local v4, "gridWidth":I
    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    mul-int/lit8 v3, v11, 0x5

    .line 2342
    .local v3, "gridHeight":I
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_0
    if-ge v9, v4, :cond_4

    .line 2343
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_1
    if-ge v10, v3, :cond_3

    .line 2344
    const/4 v1, 0x0

    .line 2345
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_2

    .line 2346
    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2347
    .local v7, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {v7, v9, v10}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v11

    if-lt v11, v8, :cond_0

    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v11, v10}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v11

    if-lt v11, v8, :cond_0

    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v12, v10

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v11, v12}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v11

    if-lt v11, v8, :cond_0

    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v9, v11}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v11

    if-ge v11, v8, :cond_1

    .line 2352
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput v5, v6, v1

    move v1, v2

    .line 2345
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2355
    .end local v7    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    new-array v0, v1, [I

    .line 2356
    .local v0, "cell":[I
    invoke-static {v6, v14, v0, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2357
    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    iget v12, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    div-int v12, v10, v12

    mul-int/lit8 v12, v12, 0xa

    iget v13, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    div-int v13, v9, v13

    add-int/2addr v12, v13

    aput-object v0, v11, v12

    .line 2343
    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v10, v11

    goto :goto_1

    .line 2342
    .end local v0    # "cell":[I
    .end local v1    # "count":I
    .end local v5    # "i":I
    :cond_3
    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v9, v11

    goto :goto_0

    .line 2361
    .end local v10    # "y":I
    :cond_4
    return-void
.end method

.method protected static createCharKey(Lcom/nuance/swype/input/KeyboardStyle;C)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 3
    .param p0, "keyboardStyle"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p1, "ch"    # C

    .prologue
    .line 1810
    invoke-static {p0}, Lcom/nuance/swype/input/KeyboardEx;->createKey(Lcom/nuance/swype/input/KeyboardStyle;)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1811
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1812
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1813
    return-object v0
.end method

.method protected static createIconKey(Lcom/nuance/swype/input/KeyboardStyle;Landroid/graphics/drawable/Drawable;I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 4
    .param p0, "keyboardStyle"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 1817
    invoke-static {p0}, Lcom/nuance/swype/input/KeyboardEx;->createKey(Lcom/nuance/swype/input/KeyboardStyle;)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1818
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1819
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1820
    iput-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1821
    iput-object p1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 1822
    iput-object p1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1823
    return-object v0
.end method

.method protected static createKey(Lcom/nuance/swype/input/KeyboardStyle;)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 2
    .param p0, "keyboardStyle"    # Lcom/nuance/swype/input/KeyboardStyle;

    .prologue
    .line 1802
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V

    .line 1803
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz p0, :cond_0

    .line 1804
    invoke-static {v0, p0}, Lcom/nuance/swype/input/KeyboardEx;->initKeyStyleValues(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardStyle;)V

    .line 1806
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 1807
    return-object v0
.end method

.method private fillKeyGaps(Ljava/util/List;IZ)V
    .locals 13
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
    .line 2720
    .local p1, "keyboardLayout":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    if-eqz p3, :cond_1

    iget v7, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    .line 2722
    .local v7, "targetWidth":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 2726
    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mForcedHeight:I

    if-lez v11, :cond_2

    .line 2727
    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mForcedHeight:I

    iget v12, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    sub-int v10, v11, v12

    .line 2731
    .local v10, "vTotalAdjustment":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    div-int v9, v10, v11

    .line 2732
    .local v9, "vHeightAdjustment":I
    const/4 v8, 0x0

    .line 2733
    .local v8, "vAdjustment":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 2734
    .local v4, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    iget-object v11, v4, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2743
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v11, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-nez v11, :cond_0

    .line 2745
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/KeyboardEx;->isGroupedKeyVisible(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v11

    .line 2746
    if-nez v11, :cond_0

    .line 2748
    invoke-direct {p0, v4, v2}, Lcom/nuance/swype/input/KeyboardEx;->getVisibleDependents(Lcom/nuance/swype/input/KeyboardEx$Row;Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/util/List;

    move-result-object v3

    .line 2749
    .local v3, "resizeKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 2750
    invoke-static {v2, v3}, Lcom/nuance/swype/input/KeyboardEx;->allocateKeySpaceToOtherKeys(Lcom/nuance/swype/input/KeyboardEx$Key;Ljava/util/List;)V

    .line 2754
    .end local v3    # "resizeKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_0
    iget v11, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    add-int/2addr v11, v8

    iput v11, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 2755
    iget v11, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v11, v9

    iput v11, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    goto :goto_3

    .line 2720
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v4    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v7    # "targetWidth":I
    .end local v8    # "vAdjustment":I
    .end local v9    # "vHeightAdjustment":I
    .end local v10    # "vTotalAdjustment":I
    :cond_1
    iget v7, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto :goto_0

    .line 2729
    .restart local v7    # "targetWidth":I
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "vTotalAdjustment":I
    goto :goto_1

    .line 2757
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .restart local v8    # "vAdjustment":I
    .restart local v9    # "vHeightAdjustment":I
    :cond_3
    add-int/2addr v8, v9

    .line 2767
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/KeyboardEx;->updateKeyPositions(Lcom/nuance/swype/input/KeyboardEx$Row;)I

    move-result v5

    .line 2772
    .local v5, "rowWidth":I
    sub-int v6, v7, v5

    .line 2774
    .local v6, "space":I
    if-gez v6, :cond_5

    .line 2776
    invoke-static {v4, v6}, Lcom/nuance/swype/input/KeyboardEx;->adjustKeyWidths(Lcom/nuance/swype/input/KeyboardEx$Row;I)V

    .line 2785
    :cond_4
    :goto_4
    if-eqz p3, :cond_6

    .line 2786
    invoke-direct {p0, v4, p2, v7}, Lcom/nuance/swype/input/KeyboardEx;->justifyRow(Lcom/nuance/swype/input/KeyboardEx$Row;II)V

    goto :goto_2

    .line 2777
    :cond_5
    if-lez v6, :cond_4

    .line 2778
    if-gtz v6, :cond_4

    .line 2780
    invoke-static {v4, v6}, Lcom/nuance/swype/input/KeyboardEx;->adjustKeyWidths(Lcom/nuance/swype/input/KeyboardEx$Row;I)V

    goto :goto_4

    .line 2789
    :cond_6
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/KeyboardEx;->updateKeyPositions(Lcom/nuance/swype/input/KeyboardEx$Row;)I

    goto :goto_2

    .line 2795
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v5    # "rowWidth":I
    .end local v6    # "space":I
    :cond_7
    sub-int v8, v10, v8

    .line 2796
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 2797
    iget-object v11, v11, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2798
    iget v12, v11, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v12, v8

    iput v12, v11, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    goto :goto_5

    .line 2801
    :cond_8
    iget v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    add-int/2addr v11, v10

    iput v11, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    .line 2804
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v8    # "vAdjustment":I
    .end local v9    # "vHeightAdjustment":I
    .end local v10    # "vTotalAdjustment":I
    :cond_9
    iput v7, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 2805
    return-void
.end method

.method private getAlternateIconSize(Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I
    .locals 2
    .param p1, "style"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 2992
    sget v1, Lcom/nuance/swype/input/R$attr;->altIconSize:I

    invoke-virtual {p1, v1}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(I)I

    move-result v0

    .line 2995
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 2996
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardEx;->getAlternateTextSize(Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I

    move-result v1

    .line 2999
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getTextSize(Landroid/content/res/Resources;I)I

    move-result v1

    goto :goto_0
.end method

.method private getAlternateTextSize(Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I
    .locals 2
    .param p1, "style"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 3004
    sget v1, Lcom/nuance/swype/input/R$attr;->altTextSize:I

    invoke-virtual {p1, v1}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(I)I

    move-result v0

    .line 3007
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 3008
    sget v0, Lcom/nuance/swype/input/R$dimen;->alt_text_size:I

    .line 3011
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getTextSize(Landroid/content/res/Resources;I)I

    move-result v1

    return v1
.end method

.method private static getJustifiedOffset(III)I
    .locals 3
    .param p0, "rowWidth"    # I
    .param p1, "totalWidth"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 3019
    const/4 v0, 0x0

    .line 3020
    .local v0, "xRow":I
    and-int/lit8 v1, p2, 0x7

    packed-switch v1, :pswitch_data_0

    .line 3022
    :pswitch_0
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "WARNING: default to LEFT justification (unrecognized gravity)"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 3033
    :goto_0
    :pswitch_1
    return v0

    .line 3026
    :pswitch_2
    sub-int v1, p1, p0

    div-int/lit8 v0, v1, 0x2

    .line 3027
    goto :goto_0

    .line 3029
    :pswitch_3
    sub-int v0, p1, p0

    goto :goto_0

    .line 3020
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getKeyHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I
    .locals 3
    .param p1, "style"    # Lcom/nuance/swype/input/KeyboardStyle;
    .param p2, "displayHeight"    # I
    .param p3, "defValue"    # I

    .prologue
    .line 2917
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

    .line 2921
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2922
    sget v2, Lcom/nuance/swype/input/R$dimen;->mini_key_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2927
    .local v0, "height":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardEx;->adjustHeight(I)I

    move-result v1

    .line 2928
    return v1

    .line 2924
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
    .line 2981
    sget v1, Lcom/nuance/swype/input/R$attr;->keyTextSize:I

    invoke-virtual {p1, v1}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(I)I

    move-result v0

    .line 2984
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 2985
    sget v0, Lcom/nuance/swype/input/R$dimen;->key_text_size:I

    .line 2988
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getTextSize(Landroid/content/res/Resources;I)I

    move-result v1

    return v1
.end method

.method private getKeyboardDockModeKeyCode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I
    .locals 3
    .param p1, "kbdDockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 3180
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq p1, v1, :cond_3

    .line 3182
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p1, v1, :cond_0

    .line 3184
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->keycode_resize_minileft_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3194
    .local v0, "keyCode":I
    :goto_0
    return v0

    .line 3185
    .end local v0    # "keyCode":I
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p1, v1, :cond_1

    .line 3186
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->keycode_resize_miniright_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .restart local v0    # "keyCode":I
    goto :goto_0

    .line 3187
    .end local v0    # "keyCode":I
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p1, v1, :cond_2

    .line 3188
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->keycode_resize_minimovable_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .restart local v0    # "keyCode":I
    goto :goto_0

    .line 3189
    .end local v0    # "keyCode":I
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p1, v1, :cond_3

    .line 3190
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->keycode_resize_split_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .restart local v0    # "keyCode":I
    goto :goto_0

    .line 3192
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

    .line 2932
    sget v1, Lcom/nuance/swype/input/R$attr;->keyboardForcedHeight:I

    invoke-virtual {p1, v1, p2, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v0

    .line 2933
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

    .line 2937
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2938
    sget v2, Lcom/nuance/swype/input/R$dimen;->mini_keyboard_forced_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2940
    :cond_1
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/KeyboardEx;->adjustHeight(I)I

    move-result v1

    .line 2941
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
    .line 2636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2637
    .local v0, "deps":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    iget-object v3, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 2639
    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2640
    .local v2, "other":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v3, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2641
    iget v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    if-nez v3, :cond_1

    .line 2643
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 2645
    :cond_1
    iget-boolean v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v3, :cond_0

    .line 2646
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2651
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "other":Lcom/nuance/swype/input/KeyboardEx$Key;
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
    .line 2696
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2697
    .local v3, "visibleKeys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2698
    .local v2, "totalKeyCount":I
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2699
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2700
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v4, :cond_0

    .line 2701
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2698
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2704
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
    .line 1600
    iget-object v2, p2, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    .line 1601
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v3, 0x0

    .line 1602
    .local v3, "rightMostKeyBeforeSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    const/4 v5, 0x0

    .line 1604
    .local v5, "x":I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1605
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1607
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_1

    .line 1608
    iget-boolean v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v6, :cond_0

    .line 1612
    invoke-direct {p0, v1, p1}, Lcom/nuance/swype/input/KeyboardEx;->scaleX(Lcom/nuance/swype/input/KeyboardEx$Key;F)V

    .line 1614
    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    add-int/2addr v5, v6

    .line 1615
    iput v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1616
    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v5, v6

    .line 1617
    move-object v3, v1

    .line 1604
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1621
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
    .line 1626
    iget-object v2, p2, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    .line 1627
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1630
    iget-object v5, p2, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1631
    iget-boolean v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-nez v5, :cond_0

    .line 1632
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1635
    :cond_0
    iget v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 1636
    .local v4, "x":I
    const/4 v3, 0x0

    .line 1638
    .local v3, "leftMostKeyAfterSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 1639
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1641
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_4

    .line 1642
    iget-object v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    iget v5, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    if-le v5, v6, :cond_2

    .line 1643
    iget-boolean v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->supportFullSpaceSplit:Z

    if-eqz v5, :cond_3

    .line 1645
    iget v5, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    sub-int/2addr v5, v6

    iput v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 1663
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    :goto_2
    return-object v3

    .line 1648
    .restart local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_3
    iget v5, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    iput v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    goto :goto_2

    .line 1654
    :cond_4
    iget-boolean v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v5, :cond_1

    .line 1655
    invoke-direct {p0, v1, p1}, Lcom/nuance/swype/input/KeyboardEx;->scaleX(Lcom/nuance/swype/input/KeyboardEx$Key;F)V

    .line 1656
    iget v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    sub-int/2addr v4, v5

    .line 1657
    iput v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1658
    iget v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    sub-int/2addr v4, v5

    .line 1659
    move-object v3, v1

    goto :goto_1
.end method

.method private iSplitAbleRow(Lcom/nuance/swype/input/KeyboardEx$Row;I)Z
    .locals 3
    .param p1, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p2, "flag"    # I

    .prologue
    .line 1667
    const/4 v1, 0x0

    .line 1668
    .local v1, "splitAble":Z
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1669
    iget v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    .line 1670
    const/4 v1, 0x1

    .line 1675
    :cond_1
    return v1
.end method

.method protected static initKeyStyleValues(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardStyle;)V
    .locals 3
    .param p0, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p1, "keyboardStyle"    # Lcom/nuance/swype/input/KeyboardStyle;

    .prologue
    const/4 v2, 0x0

    .line 1782
    sget v0, Lcom/nuance/swype/input/R$attr;->keyTextSize:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 1783
    sget v0, Lcom/nuance/swype/input/R$attr;->keyTextColor:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 1784
    sget v0, Lcom/nuance/swype/input/R$attr;->candidateComponent:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 1785
    sget v0, Lcom/nuance/swype/input/R$attr;->keyContentBaseline:I

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 1787
    sget v0, Lcom/nuance/swype/input/R$attr;->altTextSize:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 1788
    sget v0, Lcom/nuance/swype/input/R$attr;->altTextColor:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 1789
    sget v0, Lcom/nuance/swype/input/R$attr;->tertiaryTextColor:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 1790
    sget v0, Lcom/nuance/swype/input/R$attr;->keyTextColorPressed:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 1791
    sget v0, Lcom/nuance/swype/input/R$attr;->altTextGravity:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 1792
    sget v0, Lcom/nuance/swype/input/R$attr;->altIconSize:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    .line 1793
    sget v0, Lcom/nuance/swype/input/R$attr;->altIconGravity:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 1794
    sget v0, Lcom/nuance/swype/input/R$attr;->keyBackground:I

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 1795
    sget v0, Lcom/nuance/swype/input/R$attr;->keyFontTypeface:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 1797
    sget v0, Lcom/nuance/swype/input/R$attr;->defaultStrokeCandidateColor:I

    invoke-virtual {p1, v0, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 1799
    return-void
.end method

.method private isGroupedKeyVisible(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 7
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2617
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2619
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2620
    .local v3, "keyGroup":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2621
    .local v2, "index":I
    if-nez v2, :cond_2

    .line 2622
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2623
    iget-boolean v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 2632
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v3    # "keyGroup":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :goto_1
    return v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "index":I
    .restart local v3    # "keyGroup":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_1
    move v4, v6

    .line 2627
    goto :goto_1

    .line 2628
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    if-lez v2, :cond_3

    move v4, v5

    .line 2629
    goto :goto_1

    .line 2617
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2    # "index":I
    .end local v3    # "keyGroup":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_4
    move v4, v6

    .line 2632
    goto :goto_1
.end method

.method public static isShiftKey(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 2869
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
    .line 3037
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 3053
    :cond_0
    return-void

    .line 3041
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardEx;->updateKeyPositions(Lcom/nuance/swype/input/KeyboardEx$Row;)I

    move-result v5

    .line 3042
    invoke-static {v5, p3, p2}, Lcom/nuance/swype/input/KeyboardEx;->getJustifiedOffset(III)I

    move-result v4

    .line 3045
    .local v4, "xRow":I
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3046
    iget v3, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 3048
    .local v3, "xFirst":I
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 3049
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3050
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3051
    .local v2, "rowKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    sub-int/2addr v5, v3

    add-int/2addr v5, v4

    iput v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 3049
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
    .line 3061
    .local p1, "keyboardLayout":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Row;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 3062
    .local v1, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    invoke-direct {p0, v1, p2, p3}, Lcom/nuance/swype/input/KeyboardEx;->justifyRow(Lcom/nuance/swype/input/KeyboardEx$Row;II)V

    goto :goto_0

    .line 3064
    .end local v1    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_0
    return-void
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Z)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "fillScreen"    # Z

    .prologue
    .line 2543
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    .line 2554
    new-instance v2, Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$style;->SwypeReference:I

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/nuance/swype/input/KeyboardStyle;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    .line 2556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 2557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v12}, Lcom/nuance/swype/input/KeyboardEx;->loadKeyboardIter(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/XmlResourceParser;ZZZIILcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardEx$Row;)I

    move-result v16

    .line 2560
    .local v16, "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardStyle;->clearKey()V

    .line 2562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->verticalGap:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v13

    .line 2564
    .local v13, "defaultVerticalGap":I
    sub-int v2, v16, v13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalHeight:I

    .line 2566
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->updateKeyVisibilities()V

    .line 2568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v3, v1}, Lcom/nuance/swype/input/KeyboardEx;->fillKeyGaps(Ljava/util/List;IZ)V

    .line 2570
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iRight:I

    .line 2571
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iLeft:I

    .line 2572
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iBot:I

    .line 2573
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iTop:I

    .line 2575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 2576
    .local v15, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    invoke-virtual {v15}, Lcom/nuance/swype/input/KeyboardEx$Row;->calcBounds()V

    .line 2577
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iLeft:I

    invoke-virtual {v15}, Lcom/nuance/swype/input/KeyboardEx$Row;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iLeft:I

    .line 2578
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iRight:I

    invoke-virtual {v15}, Lcom/nuance/swype/input/KeyboardEx$Row;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iRight:I

    .line 2579
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iTop:I

    invoke-virtual {v15}, Lcom/nuance/swype/input/KeyboardEx$Row;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iTop:I

    .line 2580
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iBot:I

    invoke-virtual {v15}, Lcom/nuance/swype/input/KeyboardEx$Row;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->iBot:I

    goto :goto_0

    .line 2583
    .end local v15    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->updateIconLevels()V

    .line 2584
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v2, v3, :cond_1

    .line 2585
    invoke-direct/range {p0 .. p1}, Lcom/nuance/swype/input/KeyboardEx;->makeSplitKeyboard(Landroid/content/Context;)V

    .line 2588
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v3, Lcom/nuance/swype/input/R$attr;->sanitizeFont:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/KeyboardEx;->sanitizeFont:Z

    .line 2589
    return-void
.end method

.method private loadKeyboardIter(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/XmlResourceParser;ZZZIILcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardEx$Row;)I
    .locals 22
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
    .line 2452
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "memory loadKeyboardIter start parse xml"

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 2453
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2456
    .local v3, "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v18

    .local v18, "event":I
    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_e

    .line 2457
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 2458
    .local v21, "tag":Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_c

    .line 2459
    const-string v2, "Row"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p5, :cond_1

    .line 2460
    const/16 p5, 0x1

    .line 2461
    const/16 p7, 0x0

    .line 2462
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/nuance/swype/input/KeyboardEx;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/nuance/swype/input/KeyboardEx$Row;

    move-result-object p10

    goto :goto_0

    .line 2464
    :cond_1
    const-string v2, "Key"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2466
    invoke-virtual/range {p2 .. p3}, Lcom/nuance/swype/input/KeyboardStyle;->loadKey(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v2, p0

    move-object/from16 v4, p10

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p2

    .line 2467
    invoke-virtual/range {v2 .. v7}, Lcom/nuance/swype/input/KeyboardEx;->createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx$Row;IILcom/nuance/swype/input/KeyboardStyle;)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object p9

    .line 2469
    const/16 p4, 0x1

    .line 2471
    invoke-static/range {p9 .. p9}, Lcom/nuance/swype/input/KeyboardEx$Key;->access$400(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 2472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-static/range {p9 .. p9}, Lcom/nuance/swype/input/KeyboardEx$Key;->access$400(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 2473
    .local v19, "group":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-nez v19, :cond_2

    .line 2474
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2475
    .restart local v19    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    invoke-static/range {p9 .. p9}, Lcom/nuance/swype/input/KeyboardEx$Key;->access$400(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2477
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, p9

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2481
    .end local v19    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v15

    .line 2482
    .local v15, "app":Lcom/nuance/swype/input/IMEApplication;
    const/16 v16, 0x0

    .line 2484
    .local v16, "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v15}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2485
    invoke-virtual {v15}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v16

    .line 2487
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v2, v4, :cond_5

    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2489
    move-object/from16 v0, p9

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v4, 0x192e

    if-ne v2, v4, :cond_5

    .line 2490
    const/16 v2, 0xfdf

    move-object/from16 v0, p9

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 2491
    const/4 v2, 0x0

    move-object/from16 v0, p9

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 2495
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v0, p9

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2496
    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-static {v2}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    move-object/from16 v0, p9

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2500
    :cond_6
    move-object/from16 v0, p10

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$Row;->addKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2530
    .end local v15    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v16    # "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v18    # "event":I
    .end local v21    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 2531
    .local v17, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "Parse error"

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2534
    if-eqz p3, :cond_7

    .line 2535
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2538
    .end local v17    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_1
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "memory loadKeyboardIter end"

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 2539
    return p8

    .line 2502
    .restart local v18    # "event":I
    .restart local v21    # "tag":Ljava/lang/String;
    :cond_8
    :try_start_2
    const-string v2, "KeyboardEx"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2503
    if-nez p6, :cond_a

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardStyle;->loadKeyboard(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 2504
    invoke-virtual/range {p0 .. p2}, Lcom/nuance/swype/input/KeyboardEx;->parseKeyboardAttributes(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardStyle;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 2534
    .end local v18    # "event":I
    .end local v21    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz p3, :cond_9

    .line 2535
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v2

    .line 2503
    .restart local v18    # "event":I
    .restart local v21    # "tag":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 2505
    :cond_b
    :try_start_3
    const-string v2, "include"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2506
    sget v2, Lcom/nuance/swype/input/R$styleable;->KeyboardEx_include_src:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v20

    .line 2508
    .local v20, "includeId":I
    if-eqz v20, :cond_0

    .line 2509
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 2510
    .local v7, "includeParser":Landroid/content/res/XmlResourceParser;
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v4 .. v14}, Lcom/nuance/swype/input/KeyboardEx;->loadKeyboardIter(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/XmlResourceParser;ZZZIILcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardEx$Row;)I

    move-result p8

    goto/16 :goto_0

    .line 2515
    .end local v7    # "includeParser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "includeId":I
    :cond_c
    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_0

    .line 2516
    const-string v2, "Key"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p4, :cond_d

    if-eqz p9, :cond_d

    .line 2517
    const/16 p4, 0x0

    .line 2518
    move-object/from16 v0, p9

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    move-object/from16 v0, p9

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v2, v4

    add-int p7, p7, v2

    .line 2519
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v0, p7

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto/16 :goto_0

    .line 2520
    :cond_d
    const-string v2, "Row"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p5, :cond_0

    if-eqz p10, :cond_0

    .line 2522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v0, p10

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2523
    const/16 p5, 0x0

    .line 2524
    move-object/from16 v0, p10

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    add-int p8, p8, v2

    .line 2525
    move-object/from16 v0, p9

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int p8, p8, v2

    goto/16 :goto_0

    .line 2534
    .end local v21    # "tag":Ljava/lang/String;
    :cond_e
    if-eqz p3, :cond_7

    .line 2535
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1
.end method

.method private makeSplitKeyboard(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v18, v0

    div-int/lit8 v10, v18, 0x2

    .line 1412
    .local v10, "mid":I
    move v7, v10

    .line 1413
    .local v7, "leftShortestRowWidth":I
    move v12, v10

    .line 1415
    .local v12, "rightLongestRowWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1417
    .local v15, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    const/16 v16, 0x0

    .line 1418
    .local v16, "splitFound":Z
    iget v0, v15, Lcom/nuance/swype/input/KeyboardEx$Row;->visibleKeyCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    div-int/lit8 v2, v18, 0x2

    .line 1419
    .local v2, "halfCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v0, v15, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_0

    if-nez v16, :cond_0

    .line 1420
    iget-object v0, v15, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1426
    .local v5, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v0, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    iget v0, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v0, v10, :cond_6

    iget v0, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    move/from16 v18, v0

    iget v0, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    if-gt v10, v0, :cond_6

    .line 1429
    move/from16 v17, v3

    .line 1431
    .local v17, "splitIndex":I
    iget-object v0, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 1432
    iget v0, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->visibleIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v2, :cond_1

    if-lez v3, :cond_1

    .line 1433
    add-int/lit8 v17, v3, -0x1

    .line 1434
    iget-object v0, v15, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1436
    .restart local v5    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    move-object v6, v5

    .line 1437
    .local v6, "leftKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v0, v15, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    add-int/lit8 v19, v17, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1447
    .local v11, "rightKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_1
    iget v0, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x20

    move/from16 v0, v18

    iput v0, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1453
    iget v0, v11, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v11, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1454
    const/16 v16, 0x1

    .line 1467
    .end local v6    # "leftKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v11    # "rightKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v17    # "splitIndex":I
    :cond_2
    :goto_2
    if-eqz v16, :cond_4

    .line 1468
    iget v0, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    move/from16 v18, v0

    iget v0, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move/from16 v19, v0

    add-int v9, v18, v19

    .line 1469
    .local v9, "leftWidth":I
    if-le v7, v9, :cond_3

    .line 1470
    move v7, v9

    .line 1472
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v18, v0

    sub-int v14, v18, v9

    .line 1473
    .local v14, "rightWidth":I
    if-ge v12, v14, :cond_4

    .line 1474
    move v12, v14

    .line 1419
    .end local v9    # "leftWidth":I
    .end local v14    # "rightWidth":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1440
    .restart local v17    # "splitIndex":I
    :cond_5
    move-object v6, v5

    .line 1441
    .restart local v6    # "leftKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v0, v15, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    add-int/lit8 v19, v3, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/KeyboardEx$Key;

    .restart local v11    # "rightKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    goto :goto_1

    .line 1456
    .end local v6    # "leftKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v11    # "rightKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v17    # "splitIndex":I
    :cond_6
    iget v0, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x20

    if-eqz v18, :cond_2

    .line 1459
    const/16 v16, 0x1

    goto :goto_2

    .line 1480
    .end local v2    # "halfCount":I
    .end local v3    # "i":I
    .end local v5    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v15    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v16    # "splitFound":Z
    :cond_7
    int-to-float v0, v10

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    div-float v8, v18, v19

    .line 1481
    .local v8, "leftSplitScale":F
    int-to-float v0, v10

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 1483
    .local v13, "rightSplitScale":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/nuance/swype/input/R$bool;->split_keyboard_for_phone:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v13, v1}, Lcom/nuance/swype/input/KeyboardEx;->split(FFZ)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/KeyboardEx;->changeKeys(Ljava/util/List;)V

    .line 1485
    return-void
.end method

.method private scaleX(Lcom/nuance/swype/input/KeyboardEx$Key;F)V
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "xScale"    # F

    .prologue
    .line 1537
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 1538
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 1539
    return-void
.end method

.method public static shouldEnableSpeechKey(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2873
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/UserPreferences;->isShowVoiceKeyEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2912
    :cond_0
    :goto_0
    return v5

    .line 2877
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 2878
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v7

    const/16 v8, 0x63

    if-eq v7, v8, :cond_0

    .line 2882
    const/4 v3, 0x0

    .line 2883
    .local v3, "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2884
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v3

    .line 2886
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2890
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isNoMicrophone()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2894
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v2

    .line 2895
    .local v2, "currentSpeechProvider":I
    if-nez v2, :cond_7

    .line 2896
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    .line 2897
    .local v4, "inputMethod":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 2898
    .local v1, "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCoreLanguage()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2899
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/nuance/swype/input/InputMethods;->findCoreInputLanguage(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 2901
    :cond_5
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechConfig()Lcom/nuance/speech/SpeechConfig;

    move-result-object v7

    iget-object v8, v1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/nuance/speech/SpeechConfig;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v1    # "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v4    # "inputMethod":Lcom/nuance/swype/input/InputMethods;
    :cond_6
    move v5, v6

    .line 2912
    goto :goto_0

    .line 2905
    :cond_7
    if-ne v2, v6, :cond_6

    .line 2908
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->isTalkBackOn()Z

    move-result v7

    if-eqz v7, :cond_6

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

    .line 1553
    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx;->rightMostKeyLocation:I

    .line 1555
    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx;->leftMostKeyLocation:I

    .line 1556
    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    .line 1557
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1559
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1562
    .local v4, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    iget v6, v4, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 1564
    invoke-direct {p0, v4, v10}, Lcom/nuance/swype/input/KeyboardEx;->iSplitAbleRow(Lcom/nuance/swype/input/KeyboardEx$Row;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x10

    invoke-direct {p0, v4, v6}, Lcom/nuance/swype/input/KeyboardEx;->iSplitAbleRow(Lcom/nuance/swype/input/KeyboardEx$Row;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1567
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v6, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getScale(Landroid/content/res/Resources;)F

    move-result v5

    .line 1570
    .local v5, "splitKeyboardWidthScale":F
    :goto_1
    mul-float v6, v5, p1

    invoke-direct {p0, v6, v4, p3}, Lcom/nuance/swype/input/KeyboardEx;->horizontalSplitLeft(FLcom/nuance/swype/input/KeyboardEx$Row;Z)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v3

    .line 1573
    .local v3, "rightMostKeyBeforeSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    mul-float v6, v5, p2

    invoke-direct {p0, v6, v4, p3}, Lcom/nuance/swype/input/KeyboardEx;->horizontalSplitRight(FLcom/nuance/swype/input/KeyboardEx$Row;Z)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    .line 1576
    .local v1, "leftMostKeyAfterSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v9

    if-ne v6, v10, :cond_1

    iget-boolean v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->supportFullSpaceSplit:Z

    if-nez v6, :cond_0

    .line 1577
    :cond_1
    iget v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v7, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/nuance/swype/input/KeyboardEx;->rightMostKeyLocation:I

    if-le v6, v7, :cond_2

    .line 1578
    iget v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v7, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/nuance/swype/input/KeyboardEx;->rightMostKeyLocation:I

    .line 1581
    :cond_2
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->leftMostKeyLocation:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->leftMostKeyLocation:I

    iget v7, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v8, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_4

    .line 1583
    :cond_3
    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v7, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/nuance/swype/input/KeyboardEx;->leftMostKeyLocation:I

    .line 1585
    :cond_4
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    iget v7, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v8, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_6

    .line 1587
    :cond_5
    iget v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v7, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    .line 1589
    :cond_6
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    iget v7, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v8, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 1591
    :cond_7
    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v7, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    goto/16 :goto_0

    .line 1567
    .end local v1    # "leftMostKeyAfterSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "rightMostKeyBeforeSplit":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v5    # "splitKeyboardWidthScale":F
    :cond_8
    sget-object v6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v6, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getScale(Landroid/content/res/Resources;)F

    move-result v5

    goto :goto_1

    .line 1596
    .end local v4    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    :cond_9
    return-void
.end method

.method protected static swapAltCharKeyboardKeyData(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 6
    .param p0, "lhs"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p1, "rhs"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 1836
    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1837
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1838
    .local v1, "codes":[I
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 1839
    .local v0, "altCode":I
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1840
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 1842
    .local v4, "shiftedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1843
    iget v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    iput v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 1844
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1845
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 1846
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    iput-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1848
    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1849
    iput-object v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1850
    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 1851
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1852
    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 1853
    return-void
.end method

.method private updateIconLevels()V
    .locals 7

    .prologue
    .line 2810
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getIconLevel(Ljava/util/EnumSet;)I

    move-result v3

    .line 2811
    .local v3, "level":I
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 2812
    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2813
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v4, :cond_1

    .line 2814
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 2815
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "updateIconLevels...level: "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2816
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 2817
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 2818
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 2824
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    return-void
.end method

.method private updateKeyVisibilities()V
    .locals 21

    .prologue
    .line 3071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v13

    .line 3072
    .local v13, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->current(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)Ljava/util/EnumSet;

    move-result-object v6

    .line 3074
    .local v6, "currentKeyboardSettings":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3075
    .local v12, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->keyboardSettings:Ljava/util/EnumSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 3076
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 3080
    :cond_1
    iget v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->modeFlags:I

    move/from16 v19, v0

    if-eqz v19, :cond_0

    iget v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->modeFlags:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardModeId:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-nez v19, :cond_0

    .line 3081
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    goto :goto_0

    .line 3085
    .end local v12    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3086
    .restart local v12    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 3087
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v15, v0

    .line 3088
    .local v15, "modeCount":I
    const/4 v5, 0x0

    .local v5, "count":I
    :goto_1
    if-ge v5, v15, :cond_3

    .line 3089
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v19

    aget-object v7, v19, v5

    .line 3090
    .local v7, "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockModeKeyCode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I

    move-result v16

    .line 3091
    .local v16, "modeKeyCode":I
    iget-object v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 3092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 3093
    .local v2, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 3094
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    .line 3088
    .end local v2    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3096
    .restart local v2    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mPrimaryKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v7, v0, :cond_6

    .line 3097
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    goto :goto_2

    .line 3099
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v19

    if-nez v19, :cond_4

    .line 3101
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    goto :goto_2

    .line 3110
    .end local v2    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v5    # "count":I
    .end local v7    # "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .end local v12    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v15    # "modeCount":I
    .end local v16    # "modeKeyCode":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 3111
    .local v8, "groupCount":I
    const/4 v9, 0x0

    .local v9, "groupIndex":I
    :goto_3
    if-ge v9, v8, :cond_c

    .line 3113
    const/4 v3, 0x0

    .line 3114
    .local v3, "bestKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    const/4 v4, -0x1

    .line 3116
    .local v4, "bestMatchCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->keyGroups:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3119
    .restart local v12    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 3120
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 3127
    iget-object v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->keyboardSettings:Ljava/util/EnumSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->matchCount(Ljava/util/EnumSet;Ljava/util/EnumSet;)I

    move-result v14

    .line 3129
    .local v14, "matchCount":I
    if-eqz v3, :cond_9

    if-le v14, v4, :cond_8

    .line 3130
    :cond_9
    move-object v3, v12

    .line 3131
    move v4, v14

    goto :goto_4

    .line 3136
    .end local v12    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v14    # "matchCount":I
    :cond_a
    if-eqz v3, :cond_b

    .line 3137
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 3111
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3141
    .end local v3    # "bestKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v4    # "bestMatchCount":I
    :cond_c
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    .line 3142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 3143
    .local v17, "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->visibleKeyCount:I

    .line 3144
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3145
    .restart local v12    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 3146
    move-object/from16 v0, v17

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->visibleKeyCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->visibleKeyCount:I

    move/from16 v0, v19

    iput v0, v12, Lcom/nuance/swype/input/KeyboardEx$Key;->visibleIndex:I

    goto :goto_6

    .line 3149
    .end local v12    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx;->updateKeyPositions(Lcom/nuance/swype/input/KeyboardEx$Row;)I

    move-result v18

    .line 3151
    .local v18, "rowWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 3152
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    goto :goto_5

    .line 3156
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "row":Lcom/nuance/swype/input/KeyboardEx$Row;
    .end local v18    # "rowWidth":I
    :cond_10
    return-void
.end method


# virtual methods
.method public canSwypePopupCharacters()Z
    .locals 1

    .prologue
    .line 2392
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx;->canSwypePopupCharacters:Z

    return v0
.end method

.method public clearStickyKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2861
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2862
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iput-boolean v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 2863
    iput-boolean v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    .line 2864
    iput-boolean v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    goto :goto_0

    .line 2866
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_0
    return-void
.end method

.method public constrainInternalBoundsX(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 2607
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
    .line 2611
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
    .line 2446
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx$Row;IILcom/nuance/swype/input/KeyboardStyle;)V

    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/nuance/swype/input/KeyboardEx$Row;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 2442
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$Row;

    invoke-direct {v0, p1, p0, p2}, Lcom/nuance/swype/input/KeyboardEx$Row;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public findKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 4
    .param p1, "code"    # I

    .prologue
    .line 3213
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 3214
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3215
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v2, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p1, :cond_0

    .line 3219
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3197
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getCurrentIconLevel()I
    .locals 2

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getIconLevel(Ljava/util/EnumSet;)I

    move-result v0

    return v0
.end method

.method protected getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->defaultKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 2319
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
    .line 3208
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getKdbId()I
    .locals 1

    .prologue
    .line 2302
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKdbId:I

    return v0
.end method

.method public final getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    return-object v0
.end method

.method public getKeyboardScaledWidth(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 2977
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getKeyboardWidth(Landroid/content/res/Resources;)I

    move-result v0

    .line 2978
    return v0
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
    .line 2306
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getLayoutRowCount()I
    .locals 1

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3202
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 2323
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mTotalWidth:I

    return v0
.end method

.method public getModeId()I
    .locals 1

    .prologue
    .line 2327
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardModeId:I

    return v0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2375
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    .line 2376
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardEx;->computeNearestNeighbors()V

    .line 2378
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 2379
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellHeight:I

    div-int v1, p2, v1

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 2380
    .local v0, "index":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 2381
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    .line 2384
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
    .line 2310
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    return-object v0
.end method

.method public isBamarLetterCategory()Z
    .locals 2

    .prologue
    .line 2433
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
    .line 2388
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx;->forcedSwypeable:Z

    return v0
.end method

.method public isGULetterCategory()Z
    .locals 2

    .prologue
    .line 2423
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
    .line 2397
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
    .line 2418
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

    .line 2413
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
    .line 1492
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
    .line 1503
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
    .line 1499
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
    .line 2403
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

    .line 2597
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iLeft:I

    add-int/2addr v1, p3

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iRight:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p3

    if-le p1, v1, :cond_1

    .line 2603
    :cond_0
    :goto_0
    return v0

    .line 2600
    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iTop:I

    add-int/2addr v1, p3

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx;->iBot:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_0

    .line 2603
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRussianOrUkrainLetterCategory()Z
    .locals 2

    .prologue
    .line 2428
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
    .line 3227
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx;->sanitizeFont:Z

    return v0
.end method

.method public isTALetterCategory()Z
    .locals 2

    .prologue
    .line 2408
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
    .line 2438
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
    const/4 v6, 0x0

    .line 2833
    sget v4, Lcom/nuance/swype/input/R$attr;->invalidDockModes:I

    invoke-virtual {p2, v4, v6}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->from(I)Ljava/util/EnumSet;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    .line 2834
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2835
    .local v3, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2836
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 2834
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2840
    .end local v3    # "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->invalidDockModes:Ljava/util/EnumSet;

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2841
    iget-boolean v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mIsPopup:Z

    if-eqz v4, :cond_2

    .line 2842
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v4, v5, :cond_2

    .line 2843
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v4, v5, :cond_3

    .line 2845
    :cond_2
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 2852
    :cond_3
    iget v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/4 v5, -0x1

    invoke-direct {p0, p2, v4, v5}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardHeight(Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/KeyboardEx;->mForcedHeight:I

    .line 2854
    sget v4, Lcom/nuance/swype/input/R$attr;->keyboardForcedSwypeable:I

    invoke-virtual {p2, v4, v6}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/KeyboardEx;->forcedSwypeable:Z

    .line 2855
    sget v4, Lcom/nuance/swype/input/R$attr;->canSwypePopupCharacters:I

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/KeyboardEx;->canSwypePopupCharacters:Z

    .line 2856
    sget v4, Lcom/nuance/swype/input/R$attr;->background:I

    invoke-virtual {p2, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/KeyboardEx;->background:Landroid/graphics/drawable/Drawable;

    .line 2857
    sget v4, Lcom/nuance/swype/input/R$attr;->letterLanguageCategory:I

    invoke-virtual {p2, v4, v6}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/KeyboardEx;->letterLanguageCategory:I

    .line 2858
    return-void
.end method

.method protected setDefaultKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 0
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 1778
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardEx;->defaultKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1779
    return-void
.end method

.method public setKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 4
    .param p1, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq p1, v1, :cond_0

    .line 1508
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1509
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1510
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardEx;->mPrimaryKeyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1511
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardScaledWidth(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    .line 1513
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mGridNeighbors:[[I

    .line 1514
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1515
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->shiftKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1516
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx;->context:Landroid/content/Context;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx;->mKdbId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/input/KeyboardEx;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Z)V

    .line 1518
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setSanitizeFont(Z)V
    .locals 0
    .param p1, "sanitizeFont"    # Z

    .prologue
    .line 3223
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardEx;->sanitizeFont:Z

    .line 3224
    return-void
.end method

.method protected updateKeyPositions(Lcom/nuance/swype/input/KeyboardEx$Row;)I
    .locals 6
    .param p1, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;

    .prologue
    const/4 v4, 0x0

    .line 3165
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 3176
    :goto_0
    return v4

    .line 3168
    :cond_0
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 3169
    .local v3, "xRow":I
    move v2, v3

    .line 3170
    .local v2, "xNextKey":I
    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3171
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-boolean v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v4, :cond_1

    .line 3172
    iput v2, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 3173
    iget v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    iget v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    goto :goto_1

    .line 3176
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    sub-int v4, v2, v3

    goto :goto_0
.end method
