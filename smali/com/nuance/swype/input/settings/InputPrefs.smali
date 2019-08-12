.class public abstract Lcom/nuance/swype/input/settings/InputPrefs;
.super Ljava/lang/Object;
.source "InputPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;
    }
.end annotation


# static fields
.field public static final AUTO_ACCEPT_COLOR_INDEX:I = 0x18

.field private static final COLORS:[I

.field protected static final DIALOG_PEN_COLOR:I = 0xd

.field protected static final DIALOG_RECOGNITION_SPEED:I = 0xb

.field protected static final DIALOG_STROKE_WIDTH:I = 0xc

.field private static final INPUT_MODE_DISPLAY_KEY:Ljava/lang/String; = "input_mode_display"

.field private static final INPUT_MODE_KEY:Ljava/lang/String; = "input_mode"

.field public static final INPUT_PREFS_XML:I

.field private static final LANGUAGE_ID_KEY:Ljava/lang/String; = "language_id"

.field private static final QVGA_DEVICE:F = 0.8f

.field private static final RECOGNITION_SPEED_STEPSIZE:I = 0x64

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final mThumbIds:[Ljava/lang/Integer;


# instance fields
.field private final context:Landroid/content/Context;

.field private displayInputModeName:Ljava/lang/String;

.field private final inputModeName:Ljava/lang/String;

.field private final languageId:Ljava/lang/String;

.field private mColorIndex:I

.field private mValue:I

.field private final saveInputAreaPref:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final screen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x8b

    const/16 v8, 0x82

    const/16 v7, 0x1c

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 59
    const-string v0, "InputPrefs"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/InputPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 60
    sget v0, Lcom/nuance/swype/input/R$xml;->keyboard_input_screen_prefs:I

    sput v0, Lcom/nuance/swype/input/settings/InputPrefs;->INPUT_PREFS_XML:I

    .line 78
    const/16 v0, 0x1f

    new-array v0, v0, [I

    const/16 v1, 0xe8

    const/16 v2, 0xe8

    const/16 v3, 0xe8

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/4 v1, 0x1

    const/16 v2, 0x9c

    const/16 v3, 0x9c

    const/16 v4, 0x9c

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x69

    const/16 v3, 0x69

    const/16 v4, 0x69

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x9a

    const/16 v3, 0x9a

    invoke-static {v2, v6, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa2

    invoke-static {v6, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x2e

    const/16 v3, 0x57

    invoke-static {v2, v9, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v5, v9, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x64

    invoke-static {v5, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xf6

    const/16 v3, 0x8f

    invoke-static {v6, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xfa

    const/16 v3, 0xfa

    const/16 v4, 0xd2

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xee

    const/16 v3, 0xe8

    const/16 v4, 0xaa

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xee

    const/16 v3, 0xdd

    invoke-static {v2, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x4f

    const/16 v3, 0x94

    const/16 v4, 0xcd

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xbf

    invoke-static {v5, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x43

    const/16 v3, 0x6e

    const/16 v4, 0xee

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xcd

    invoke-static {v5, v5, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    invoke-static {v5, v5, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xab

    invoke-static {v6, v8, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    invoke-static {v6, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xee

    invoke-static {v2, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xcd

    invoke-static {v2, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x18

    invoke-static {v9, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x7f

    invoke-static {v6, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xee

    invoke-static {v2, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xcd

    invoke-static {v2, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v9, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0x1d

    const/16 v2, 0x7f

    invoke-static {v6, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1e

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    .line 117
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Integer;

    sget v1, Lcom/nuance/swype/input/R$drawable;->color_picker_00:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x1

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_01:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_02:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_03:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_04:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_10:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_11:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_12:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_13:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_14:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_20:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_21:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_22:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_23:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_24:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_30:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_31:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_32:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_33:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_34:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_40:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_41:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_42:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_43:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_44:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    new-instance v0, Lcom/nuance/swype/input/settings/InputPrefs$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/InputPrefs$5;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->saveInputAreaPref:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 155
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    .line 156
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 157
    const-string v0, "language_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->languageId:Ljava/lang/String;

    .line 158
    const-string v0, "input_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    .line 159
    const-string v0, "input_mode_display"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->displayInputModeName:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->languageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/InputPrefs;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/InputPrefs;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;

    .prologue
    .line 57
    iget v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/settings/InputPrefs;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/InputPrefs;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/InputPrefs;->saveAutoDelay(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/InputPrefs;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/InputPrefs;->savePenSize(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/InputPrefs;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;

    .prologue
    .line 57
    iget v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mColorIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/nuance/swype/input/settings/InputPrefs;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mColorIndex:I

    return p1
.end method

.method static synthetic access$500()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/InputPrefs;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/InputPrefs;->savePenColorIndex(Ljava/lang/String;I)V

    return-void
.end method

.method private createAlphaHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
    .locals 7
    .param p1, "handwritingScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "handwritingInputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 423
    new-instance v1, Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 424
    .local v1, "categoryPreference":Landroid/preference/PreferenceCategory;
    sget v5, Lcom/nuance/swype/input/R$string;->handwriting_input_description:I

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 425
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 428
    new-instance v3, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 429
    .local v3, "punctuationCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 431
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->punctuation:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_punctuation_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 436
    new-instance v4, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 437
    .local v4, "symbolCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 439
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->symbols:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_symbols_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 444
    new-instance v2, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 445
    .local v2, "digitCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndDigitEnglishEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitEnglishEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 447
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->digits:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_digits_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 451
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 452
    .local v0, "autospaceCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getAutoSpacePrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 453
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->pref_auto_space_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->pref_auto_space_summary:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isAutoSpaceEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 456
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 459
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 462
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createPenSizeSettingScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 465
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createColorLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 467
    return-object p1
.end method

.method public static createArgs(Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/os/Bundle;
    .locals 3
    .param p0, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "language_id"

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "input_mode"

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "input_mode_display"

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method private createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 3
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 373
    .local v0, "autoRecognitionScreen":Landroid/preference/PreferenceScreen;
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_recognize_speed_title:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 374
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_recognize_speed_summary:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 375
    new-instance v1, Lcom/nuance/swype/input/settings/InputPrefs$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/InputPrefs$1;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 384
    return-object v0
.end method

.method private createChineseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
    .locals 8
    .param p1, "handwritingScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "handwritingInputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    const/4 v7, 0x0

    .line 474
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 477
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createPenSizeSettingScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 480
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createColorLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 483
    new-instance v6, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 484
    .local v6, "integratedCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndIntegratedEnabledPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 486
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->integrated:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_integrated_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 488
    invoke-virtual {p1, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 491
    new-instance v2, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 492
    .local v2, "abcCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndABCEnabledPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndABCEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 494
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->ABC:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_chinese_abc_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 499
    :cond_0
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 502
    new-instance v3, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 503
    .local v3, "punctuationCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 505
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->punctuation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_chinese_punctuation_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 510
    :cond_1
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 513
    new-instance v4, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 514
    .local v4, "symbolCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 516
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->symbols:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_chinese_symbols_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 518
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 519
    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 521
    :cond_2
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 524
    new-instance v5, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 525
    .local v5, "digitCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndDigitChineseEnabledPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitChineseEnabled()Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 527
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->digits:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_chinese_digits_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 529
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 530
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 531
    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 533
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 535
    new-instance v0, Lcom/nuance/swype/input/settings/InputPrefs$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/settings/InputPrefs$4;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 548
    return-object p1
.end method

.method private createChineseSimplifiedMohuPiny(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "mohuCategory"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 343
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, "checkBox":Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_z_zh_c_ch_s_sh"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 345
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_z_zh_c_ch_s_sh:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 346
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 348
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 349
    .restart local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_n_ng"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 350
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_n_ng:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 351
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_summary_n_ng:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 352
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 354
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 355
    .restart local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_n_l"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 356
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_n_l:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 357
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 359
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 360
    .restart local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_r_l"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 361
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_r_l:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 362
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 364
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 365
    .restart local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_f_h"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 366
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_f_h:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 367
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 368
    return-void
.end method

.method private createColorLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 3
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 405
    .local v0, "widthScreen":Landroid/preference/PreferenceScreen;
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_recognize_color_title:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 406
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_recognize_color_summary:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 408
    new-instance v1, Lcom/nuance/swype/input/settings/InputPrefs$3;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/InputPrefs$3;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 417
    return-object v0
.end method

.method private createJapaneseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
    .locals 10
    .param p1, "handwritingScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "handwritingInputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 553
    new-instance v3, Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 554
    .local v3, "inputAreaPreference":Landroid/preference/PreferenceCategory;
    sget v7, Lcom/nuance/swype/input/R$string;->pref_header_basic:I

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 555
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 557
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingInputAreaPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 559
    .local v4, "list":Landroid/preference/ListPreference;
    if-nez v4, :cond_0

    .line 560
    new-instance v4, Landroid/preference/ListPreference;

    .end local v4    # "list":Landroid/preference/ListPreference;
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 561
    .restart local v4    # "list":Landroid/preference/ListPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingInputAreaPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 562
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/AppPreferences;->getHandwritingInputArea(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 563
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->saveInputAreaPref:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 564
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 566
    :cond_0
    sget v7, Lcom/nuance/swype/input/R$string;->handwriting_input_area:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 567
    sget v7, Lcom/nuance/swype/input/R$string;->handwriting_input_area_mode_summary:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 568
    sget v7, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setDialogIcon(I)V

    .line 569
    sget v7, Lcom/nuance/swype/input/R$string;->handwriting_input_area:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 570
    sget v7, Lcom/nuance/swype/input/R$array;->entries_handwriting_input_area_mode:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 571
    sget v7, Lcom/nuance/swype/input/R$array;->entryValues_handwriting_input_area_mode:I

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 573
    new-instance v1, Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 574
    .local v1, "categoryPreference":Landroid/preference/PreferenceCategory;
    sget v7, Lcom/nuance/swype/input/R$string;->pref_header_advanced:I

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 575
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 578
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 579
    .local v0, "abcCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndABCEnabledPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndABCEnabled()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 581
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v8, Lcom/nuance/swype/input/R$string;->ABC:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v8, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_japanese_abc_description:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 583
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 586
    new-instance v5, Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 587
    .local v5, "punctuationCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 589
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v8, Lcom/nuance/swype/input/R$string;->punctuation:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v8, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_punctuation_description:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 591
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 594
    new-instance v6, Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 595
    .local v6, "symbolCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 597
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v8, Lcom/nuance/swype/input/R$string;->symbols:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v8, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_symbols_description:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 599
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 602
    new-instance v2, Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 603
    .local v2, "digitCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndDigitJapaneseEnabledPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitJapaneseEnabled()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 605
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v8, Lcom/nuance/swype/input/R$string;->digits:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v8, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_digits_description:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 607
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 610
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 611
    return-object p1
.end method

.method private createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;
    .locals 6
    .param p1, "keyboardScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Lcom/nuance/swype/input/InputMethods$InputMode;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Layout;",
            ">;)",
            "Landroid/preference/PreferenceScreen;"
        }
    .end annotation

    .prologue
    .line 280
    .local p3, "keyboardLayouts":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Layout;>;"
    iget-object v4, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, "category":Landroid/preference/PreferenceCategory;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v5, Lcom/nuance/swype/input/R$string;->layouts_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 287
    new-instance v1, Lcom/nuance/swype/preference/KeyboardLayoutPreference;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, p2, v5}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$InputMode;Ljava/lang/Integer;)V

    .line 289
    .local v1, "layoutPref":Lcom/nuance/swype/preference/KeyboardLayoutPreference;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v5, Lcom/nuance/swype/input/R$string;->layout_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 290
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {v1, v3}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v1, v4}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setDialogIcon(I)V

    .line 292
    invoke-virtual {v1, v3}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 297
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    .end local v1    # "layoutPref":Lcom/nuance/swype/preference/KeyboardLayoutPreference;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseSimplified()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v4}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModePinyin(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    new-instance v2, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 300
    .local v2, "mohuCategory":Landroid/preference/PreferenceCategory;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v5, Lcom/nuance/swype/input/R$string;->chs_fuzzy_pinyin_setting:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 302
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/InputPrefs;->createChineseSimplifiedMohuPiny(Landroid/preference/PreferenceCategory;)V

    .line 305
    .end local v2    # "mohuCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    return-object p1
.end method

.method private createKoreanAdvancedSettings(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "keyboardScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 309
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 311
    .local v0, "category":Landroid/preference/PreferenceCategory;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v4, Lcom/nuance/swype/input/R$string;->pref_header_advanced:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 315
    new-instance v1, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 316
    .local v1, "checkBox":Landroid/preference/CheckBoxPreference;
    const-string v3, "korean_auto_correction"

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 317
    sget v3, Lcom/nuance/swype/input/R$string;->auto_correction_mode:I

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 320
    new-instance v2, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 321
    .local v2, "consonantInputCheckBox":Landroid/preference/CheckBoxPreference;
    const-string v3, "enable_korean_consonant_input"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 322
    sget v3, Lcom/nuance/swype/input/R$string;->enable_korean_consonant_input:I

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 323
    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getEnableKoreanConsonantInput()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 324
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 325
    return-void
.end method

.method private createKoreanConsonantInput(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "keyboardScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 328
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, "category":Landroid/preference/PreferenceCategory;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v3, Lcom/nuance/swype/input/R$string;->pref_header_advanced:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 334
    new-instance v1, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 335
    .local v1, "consonantInputCheckBox":Landroid/preference/CheckBoxPreference;
    const-string v2, "enable_korean_consonant_input"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 336
    sget v2, Lcom/nuance/swype/input/R$string;->enable_korean_consonant_input:I

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 337
    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getEnableKoreanConsonantInput()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 338
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 339
    return-void
.end method

.method private createPenSizeSettingScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 3
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 389
    .local v0, "penSizeScreen":Landroid/preference/PreferenceScreen;
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_pen_size_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 390
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_pen_size_dialog_summary:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 391
    new-instance v1, Lcom/nuance/swype/input/settings/InputPrefs$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/InputPrefs$2;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 400
    return-object v0
.end method

.method public static getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    .locals 2
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 810
    move v0, p2

    .line 812
    .local v0, "delay":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 817
    :goto_0
    return v0

    .line 814
    :catch_0
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    .locals 2
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 907
    move v0, p2

    .line 910
    .local v0, "index":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 915
    :goto_0
    sget-object v1, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    aget v1, v1, v0

    return v1

    .line 912
    :catch_0
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getPenColorIndex(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    .locals 2
    .param p1, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    .line 886
    move v0, p3

    .line 888
    .local v0, "index":I
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 889
    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 890
    move v0, p3

    .line 891
    invoke-virtual {p1, p2}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p1, p2, p3}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :cond_0
    :goto_0
    return v0

    .line 895
    :catch_0
    move-exception v1

    invoke-virtual {p1, p2}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p1, p2, p3}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    .locals 2
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 825
    move v0, p2

    .line 827
    .local v0, "size":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 832
    :goto_0
    return v0

    .line 829
    :catch_0
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private saveAutoDelay(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    .line 821
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 822
    return-void
.end method

.method private savePenColorIndex(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 903
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 904
    return-void
.end method

.method private savePenSize(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 837
    return-void
.end method

.method public static setHWRThemePenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 4
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "themeColor"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 919
    sget-boolean v1, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    if-ne p2, v1, :cond_0

    .line 921
    invoke-static {p3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$attr;->traceColorHwrForMLS:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result p2

    .line 923
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget-object v1, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 925
    sget-object v1, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    aget v1, v1, v0

    if-ne v1, p2, :cond_2

    .line 926
    sget-object v1, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v2, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v3, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 930
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v2, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aput p2, v1, v2

    .line 932
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 933
    return-void

    .line 924
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setThemeColorToDefaultColor()V
    .locals 6

    .prologue
    .line 936
    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 937
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    const/4 v2, 0x0

    .line 938
    .local v2, "themeColor":I
    if-eqz v0, :cond_0

    .line 939
    sget v3, Lcom/nuance/swype/input/R$attr;->traceColor:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v2

    .line 941
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget-object v3, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 943
    sget-object v3, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    aget v3, v3, v1

    if-ne v3, v2, :cond_2

    .line 944
    sget-object v3, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v4, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v5, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 948
    :cond_1
    sget-object v3, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v4, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aput v2, v3, v4

    .line 949
    return-void

    .line 942
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createColorPickerDialog()Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 762
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 763
    sget v8, Lcom/nuance/swype/input/R$layout;->pen_color_dialog:I

    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 765
    .local v6, "view":Landroid/view/ViewGroup;
    sget v7, Lcom/nuance/swype/input/R$id;->color_picker_llayout:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 766
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 767
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 769
    sget v7, Lcom/nuance/swype/input/R$id;->gridview:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 770
    .local v1, "gridview":Landroid/widget/GridView;
    sget v7, Lcom/nuance/swype/input/R$id;->color_picker_selected:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 771
    .local v4, "selected":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    .line 772
    const-string v8, "pen_color"

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/UserPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 773
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/InputPrefs;->setThemeColorToDefaultColor()V

    .line 775
    :cond_0
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    const-string v8, "pen_color"

    const/16 v9, 0x18

    invoke-direct {p0, v7, v8, v9}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColorIndex(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mColorIndex:I

    .line 777
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    iget v9, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mColorIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 779
    .local v5, "shape":Landroid/graphics/drawable/GradientDrawable;
    sget-object v7, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    iget v8, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mColorIndex:I

    aget v7, v7, v8

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 780
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 781
    new-instance v2, Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v7}, Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;Landroid/content/Context;)V

    .line 782
    .local v2, "imAdapter":Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 783
    new-instance v7, Lcom/nuance/swype/input/settings/InputPrefs$10;

    invoke-direct {v7, p0, v4}, Lcom/nuance/swype/input/settings/InputPrefs$10;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 795
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/nuance/swype/input/R$string;->handwriting_recognize_color_title:I

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v9, Lcom/nuance/swype/input/settings/InputPrefs$11;

    invoke-direct {v9, p0}, Lcom/nuance/swype/input/settings/InputPrefs$11;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->cancel_button:I

    invoke-virtual {v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 804
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 806
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method

.method public createRecognitionSpeedDialog()Landroid/app/Dialog;
    .locals 18

    .prologue
    .line 629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 630
    .local v4, "display":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 631
    sget v14, Lcom/nuance/swype/input/R$layout;->recognition_speed_dialog:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 632
    .local v12, "view":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 633
    .local v8, "res":Landroid/content/res/Resources;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v14, Lcom/nuance/swype/input/R$string;->handwriting_recognize_speed_accept_dialog_unit:I

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 634
    .local v10, "unit":Ljava/lang/String;
    sget v13, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_min_ms:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 635
    .local v7, "min":I
    sget v13, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_max_ms:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sub-int v6, v13, v7

    .line 636
    .local v6, "max":I
    sget v13, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 637
    .local v3, "defaultValue":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v9

    .line 638
    .local v9, "sp":Lcom/nuance/swype/input/UserPreferences;
    const-string v13, "hwr_auto_recpgnize_delay"

    invoke-static {v9, v13, v3}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    .line 640
    sget v13, Lcom/nuance/swype/input/R$id;->value_recognition_speed:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 641
    .local v11, "valueLongPress":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    int-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    sget v13, Lcom/nuance/swype/input/R$id;->speed_seekbar:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 644
    .local v5, "longPressSeekBar":Landroid/widget/SeekBar;
    iget v13, v4, Landroid/util/DisplayMetrics;->density:F

    const v14, 0x3f4ccccd    # 0.8f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 649
    :cond_0
    div-int/lit8 v13, v6, 0x64

    invoke-virtual {v5, v13}, Landroid/widget/SeekBar;->setMax(I)V

    .line 650
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    sub-int/2addr v13, v7

    div-int/lit8 v13, v13, 0x64

    invoke-virtual {v5, v13}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 651
    new-instance v13, Lcom/nuance/swype/input/settings/InputPrefs$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7, v11, v10}, Lcom/nuance/swype/input/settings/InputPrefs$6;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;ILandroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 673
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v14, Lcom/nuance/swype/input/R$string;->handwriting_recognize_speed_title:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v15, Lcom/nuance/swype/input/settings/InputPrefs$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/nuance/swype/input/settings/InputPrefs$7;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;I)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 688
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 690
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    return-object v13
.end method

.method public createStrokeWidthDialog()Landroid/app/Dialog;
    .locals 21

    .prologue
    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 695
    .local v7, "display":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    .line 696
    sget v18, Lcom/nuance/swype/input/R$layout;->stroke_width_dialog:I

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 697
    .local v16, "view":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 698
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v18, Lcom/nuance/swype/input/R$string;->handwriting_pen_size_dialog_unit:I

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 699
    .local v14, "unit":Ljava/lang/String;
    sget v17, Lcom/nuance/swype/input/R$integer;->handwriting_pen_size_min_pixels:I

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 700
    .local v11, "min":I
    sget v17, Lcom/nuance/swype/input/R$integer;->handwriting_pen_size_max_pixels:I

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    sub-int v10, v17, v11

    .line 701
    .local v10, "max":I
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 702
    .local v8, "dm":Landroid/util/DisplayMetrics;
    sget v17, Lcom/nuance/swype/input/R$dimen;->max_height_for_fullscreen:I

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 703
    .local v6, "dimen":F
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v17, v6

    if-ltz v17, :cond_1

    const/16 v17, 0x1

    .line 704
    :goto_0
    if-eqz v17, :cond_2

    const/16 v17, 0x9

    :goto_1
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v5, v0

    .line 705
    .local v5, "defaultValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v13

    .line 706
    .local v13, "sp":Lcom/nuance/swype/input/UserPreferences;
    const-string v17, "hwr_pen_size"

    move-object/from16 v0, v17

    invoke-static {v13, v0, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    .line 708
    sget v17, Lcom/nuance/swype/input/R$id;->value_stroke_width:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 709
    .local v15, "valueLongPress":Landroid/widget/TextView;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    sget v17, Lcom/nuance/swype/input/R$id;->stroke_width_seekbar:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SeekBar;

    .line 712
    .local v9, "longPressSeekBar":Landroid/widget/SeekBar;
    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    const v18, 0x3f4ccccd    # 0.8f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_0

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 717
    :cond_0
    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    move/from16 v17, v0

    sub-int v17, v17, v11

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 719
    new-instance v17, Lcom/nuance/swype/input/settings/InputPrefs$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v15, v14}, Lcom/nuance/swype/input/settings/InputPrefs$8;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;ILandroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 741
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v18, Lcom/nuance/swype/input/R$string;->handwriting_pen_size_dialog_title:I

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    sget v18, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    sget v18, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v19, Lcom/nuance/swype/input/settings/InputPrefs$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/settings/InputPrefs$9;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;I)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    sget v18, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 756
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 758
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    return-object v17

    .line 703
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "defaultValue":I
    .end local v9    # "longPressSeekBar":Landroid/widget/SeekBar;
    .end local v13    # "sp":Lcom/nuance/swype/input/UserPreferences;
    .end local v15    # "valueLongPress":Landroid/widget/TextView;
    :cond_1
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 704
    :cond_2
    const/16 v17, 0x6

    goto/16 :goto_1
.end method

.method abstract doShowDialog(ILandroid/os/Bundle;)V
.end method

.method public getCurrentLanguageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->languageId:Ljava/lang/String;

    return-object v0
.end method

.method public getInputModeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    const-string v1, "handwriting_full_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->displayInputModeName:Ljava/lang/String;

    .line 173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->displayInputModeName:Ljava/lang/String;

    return-object v0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    const-string v1, "pinyin_qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->pinyin:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->displayInputModeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isCurrentChinese()Z
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->languageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 179
    .local v0, "inputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v0, :cond_0

    .line 180
    const/4 v1, 0x0

    .line 182
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 190
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    .line 191
    iget-object v6, p0, Lcom/nuance/swype/input/settings/InputPrefs;->languageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 193
    .local v1, "inputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v1, :cond_0

    .line 194
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Can\'t find %#x in available input languages"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/InputPrefs;->languageId:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 198
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 199
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-nez v2, :cond_1

    .line 200
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Can\'t find %s in available input modes"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 211
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 214
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 218
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 219
    .local v0, "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v0, :cond_2

    .line 220
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5, v0}, Lcom/nuance/swype/input/settings/InputPrefs;->createChineseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    .line 271
    .end local v0    # "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v4

    .line 272
    .local v4, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v4, :cond_3

    .line 273
    iget-object v5, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v6, "entered"

    const-string v7, "not enter"

    invoke-interface {v4, v5, v6, v7}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    :cond_3
    return-void

    .line 225
    .end local v4    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_4
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v3

    .line 226
    .local v3, "keyboardLayouts":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Layout;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 227
    iget-object v5, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v6, "doublepinyin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 228
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5, v2, v3}, Lcom/nuance/swype/input/settings/InputPrefs;->createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;

    goto :goto_0

    .line 232
    .end local v3    # "keyboardLayouts":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Layout;>;"
    :cond_5
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 233
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 236
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 239
    .restart local v0    # "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v0, :cond_2

    .line 240
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5, v0}, Lcom/nuance/swype/input/settings/InputPrefs;->createJapaneseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    goto :goto_0

    .line 244
    .end local v0    # "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_6
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 247
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 251
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 252
    .restart local v0    # "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v0, :cond_2

    .line 253
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5, v0}, Lcom/nuance/swype/input/settings/InputPrefs;->createAlphaHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    goto :goto_0

    .line 258
    .end local v0    # "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_7
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v3

    .line 259
    .restart local v3    # "keyboardLayouts":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Layout;>;"
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 260
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5, v2, v3}, Lcom/nuance/swype/input/settings/InputPrefs;->createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;

    .line 263
    :cond_8
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->isShowAutoCorrectionPrefEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 264
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->createKoreanAdvancedSettings(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 266
    :cond_9
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->createKoreanConsonantInput(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0
.end method
