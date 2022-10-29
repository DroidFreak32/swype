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
    .registers 10

    .prologue
    const/16 v9, 0x8b

    const/16 v8, 0x82

    const/16 v7, 0x1c

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 62
    sget v0, Lcom/nuance/swype/input/R$xml;->keyboard_input_screen_prefs:I

    sput v0, Lcom/nuance/swype/input/settings/InputPrefs;->INPUT_PREFS_XML:I

    .line 80
    const/16 v0, 0x1f

    new-array v0, v0, [I

    const/16 v1, 0xe8

    const/16 v2, 0xe8

    const/16 v3, 0xe8

    .line 81
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/4 v1, 0x1

    const/16 v2, 0x9c

    const/16 v3, 0x9c

    const/16 v4, 0x9c

    .line 82
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 83
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x69

    const/16 v3, 0x69

    const/16 v4, 0x69

    .line 84
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 85
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x9a

    const/16 v3, 0x9a

    .line 87
    invoke-static {v2, v6, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa2

    .line 88
    invoke-static {v6, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x2e

    const/16 v3, 0x57

    .line 89
    invoke-static {v2, v9, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 90
    invoke-static {v5, v9, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x64

    .line 91
    invoke-static {v5, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xf6

    const/16 v3, 0x8f

    .line 93
    invoke-static {v6, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xfa

    const/16 v3, 0xfa

    const/16 v4, 0xd2

    .line 94
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xee

    const/16 v3, 0xe8

    const/16 v4, 0xaa

    .line 95
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xee

    const/16 v3, 0xdd

    .line 96
    invoke-static {v2, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 97
    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x4f

    const/16 v3, 0x94

    const/16 v4, 0xcd

    .line 99
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xbf

    .line 100
    invoke-static {v5, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x43

    const/16 v3, 0x6e

    const/16 v4, 0xee

    .line 101
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xcd

    .line 102
    invoke-static {v5, v5, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 103
    invoke-static {v5, v5, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xab

    .line 105
    invoke-static {v6, v8, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 106
    invoke-static {v6, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xee

    .line 107
    invoke-static {v2, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xcd

    .line 108
    invoke-static {v2, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 109
    invoke-static {v9, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x7f

    .line 111
    invoke-static {v6, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xee

    .line 112
    invoke-static {v2, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xcd

    .line 113
    invoke-static {v2, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 114
    invoke-static {v9, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0x1d

    const/16 v2, 0x7f

    .line 115
    invoke-static {v6, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 116
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    .line 119
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Integer;

    sget v1, Lcom/nuance/swype/input/R$drawable;->color_picker_00:I

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x1

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_01:I

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_02:I

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_03:I

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_04:I

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_10:I

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_11:I

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_12:I

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_13:I

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_14:I

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_20:I

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_21:I

    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_22:I

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_23:I

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_24:I

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_30:I

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_31:I

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_32:I

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_33:I

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_34:I

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_40:I

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_41:I

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_42:I

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_43:I

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget v2, Lcom/nuance/swype/input/R$drawable;->color_picker_44:I

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance v0, Lcom/nuance/swype/input/settings/InputPrefs$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/InputPrefs$5;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->saveInputAreaPref:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 157
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    .line 158
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 159
    const-string/jumbo v0, "language_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->languageId:Ljava/lang/String;

    .line 160
    const-string/jumbo v0, "input_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    .line 161
    const-string/jumbo v0, "input_mode_display"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->displayInputModeName:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->languageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    if-nez v0, :cond_47

    .line 163
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_47
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/InputPrefs;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/InputPrefs;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;

    .prologue
    .line 60
    iget v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/settings/InputPrefs;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/InputPrefs;D)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p1, "x1"    # D

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/InputPrefs;->formatNumber(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/InputPrefs;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/InputPrefs;->saveAutoDelay(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/InputPrefs;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/InputPrefs;->savePenSize(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/InputPrefs;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;

    .prologue
    .line 60
    iget v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mColorIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/nuance/swype/input/settings/InputPrefs;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mColorIndex:I

    return p1
.end method

.method static synthetic access$600()[Ljava/lang/Integer;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$700()[I
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/InputPrefs;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/InputPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/InputPrefs;->savePenColorIndex(Ljava/lang/String;I)V

    return-void
.end method

.method private createAlphaHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
    .registers 10
    .param p1, "handwritingScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "handwritingInputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 382
    new-instance v1, Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 383
    .local v1, "categoryPreference":Landroid/preference/PreferenceCategory;
    sget v5, Lcom/nuance/swype/input/R$string;->handwriting_input_description:I

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 384
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 387
    new-instance v3, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 388
    .local v3, "punctuationCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 390
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->punctuation:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_punctuation_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 395
    new-instance v4, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 396
    .local v4, "symbolCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 398
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->symbols:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_symbols_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 403
    new-instance v2, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 404
    .local v2, "digitCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndDigitEnglishEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitEnglishEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 406
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->digits:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_digits_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 410
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 411
    .local v0, "autospaceCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getAutoSpacePrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 412
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->pref_auto_space_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->pref_auto_space_summary:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isAutoSpaceEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 415
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 418
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 421
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createPenSizeSettingScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 424
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createColorLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 426
    return-object p1
.end method

.method public static createArgs(Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/os/Bundle;
    .registers 4
    .param p0, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "language_id"

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "input_mode"

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v1, "input_mode_display"

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-object v0
.end method

.method private createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .registers 5
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    .line 331
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 332
    .local v0, "autoRecognitionScreen":Landroid/preference/PreferenceScreen;
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_recognize_speed_title:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 333
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_recognize_speed_summary:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 334
    new-instance v1, Lcom/nuance/swype/input/settings/InputPrefs$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/InputPrefs$1;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 343
    return-object v0
.end method

.method private createChineseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
    .registers 11
    .param p1, "handwritingScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "handwritingInputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    const/4 v7, 0x0

    .line 433
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 436
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createPenSizeSettingScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 439
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createColorLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 442
    new-instance v6, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 443
    .local v6, "integratedCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndIntegratedEnabledPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 445
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->integrated:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_integrated_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {p1, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 450
    new-instance v2, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 451
    .local v2, "abcCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndABCEnabledPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndABCEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 453
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->ABC:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_chinese_abc_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    if-nez v0, :cond_78

    .line 456
    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 458
    :cond_78
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 461
    new-instance v3, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 462
    .local v3, "punctuationCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 464
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->punctuation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_chinese_punctuation_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    if-nez v0, :cond_af

    .line 467
    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 469
    :cond_af
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 472
    new-instance v4, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 473
    .local v4, "symbolCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 475
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->symbols:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_chinese_symbols_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 477
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 478
    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 480
    :cond_e6
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 483
    new-instance v5, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 484
    .local v5, "digitCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndDigitChineseEnabledPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitChineseEnabled()Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 486
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->digits:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_chinese_digits_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 488
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 489
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    if-nez v0, :cond_121

    .line 490
    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 492
    :cond_121
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 494
    new-instance v0, Lcom/nuance/swype/input/settings/InputPrefs$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/settings/InputPrefs$4;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 509
    return-object p1
.end method

.method private createChineseSimplifiedMohuPiny(Landroid/preference/PreferenceCategory;)V
    .registers 4
    .param p1, "mohuCategory"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 302
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "checkBox":Landroid/preference/CheckBoxPreference;
    const-string/jumbo v1, "fuzzy_pinyin_z_zh_c_ch_s_sh"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 304
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_z_zh_c_ch_s_sh:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 305
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 307
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 308
    .restart local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    const-string/jumbo v1, "fuzzy_pinyin_n_ng"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 309
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_n_ng:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 310
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_summary_n_ng:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 311
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 313
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 314
    .restart local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    const-string/jumbo v1, "fuzzy_pinyin_n_l"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 315
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_n_l:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 316
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 318
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 319
    .restart local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    const-string/jumbo v1, "fuzzy_pinyin_r_l"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 320
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_r_l:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 321
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 323
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 324
    .restart local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    const-string/jumbo v1, "fuzzy_pinyin_f_h"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 325
    sget v1, Lcom/nuance/swype/input/R$string;->fuzzy_pinyin_f_h:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 326
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 327
    return-void
.end method

.method private createColorLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .registers 5
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 364
    .local v0, "widthScreen":Landroid/preference/PreferenceScreen;
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_recognize_color_title:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 365
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_recognize_color_summary:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 367
    new-instance v1, Lcom/nuance/swype/input/settings/InputPrefs$3;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/InputPrefs$3;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 376
    return-object v0
.end method

.method private createJapaneseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
    .registers 10
    .param p1, "handwritingScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "handwritingInputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 515
    new-instance v1, Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 516
    .local v1, "categoryPreference":Landroid/preference/PreferenceCategory;
    sget v5, Lcom/nuance/swype/input/R$string;->pref_header_advanced:I

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 517
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 520
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 521
    .local v0, "abcCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndABCEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndABCEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 523
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->ABC:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_japanese_abc_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 528
    new-instance v3, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 529
    .local v3, "punctuationCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 531
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->punctuation:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_punctuation_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 536
    new-instance v4, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 537
    .local v4, "symbolCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 539
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->symbols:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_symbols_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 541
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 544
    new-instance v2, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 545
    .local v2, "digitCheckbox":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndDigitJapaneseEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitJapaneseEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 547
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->digits:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_input_mix_digits_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 549
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 552
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 553
    return-object p1
.end method

.method private createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
    .registers 9
    .param p1, "keyboardScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 258
    iget-object v4, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 260
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, "category":Landroid/preference/PreferenceCategory;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v5, Lcom/nuance/swype/input/R$string;->layouts_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 265
    new-instance v1, Lcom/nuance/swype/preference/KeyboardLayoutPreference;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    const/4 v5, 0x1

    .line 266
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, p2, v5}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$InputMode;Ljava/lang/Integer;)V

    .line 267
    .local v1, "layoutPref":Lcom/nuance/swype/preference/KeyboardLayoutPreference;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v5, Lcom/nuance/swype/input/R$string;->layout_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 268
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {v1, v3}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v1, v4}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setDialogIcon(I)V

    .line 270
    invoke-virtual {v1, v3}, Lcom/nuance/swype/preference/KeyboardLayoutPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 275
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    .end local v1    # "layoutPref":Lcom/nuance/swype/preference/KeyboardLayoutPreference;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_3f
    iget-object v4, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseSimplified()Z

    move-result v4

    if-eqz v4, :cond_67

    iget-object v4, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 276
    invoke-static {v4}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModePinyin(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 277
    new-instance v2, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 278
    .local v2, "mohuCategory":Landroid/preference/PreferenceCategory;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v5, Lcom/nuance/swype/input/R$string;->chs_fuzzy_pinyin_setting:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 280
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/InputPrefs;->createChineseSimplifiedMohuPiny(Landroid/preference/PreferenceCategory;)V

    .line 283
    .end local v2    # "mohuCategory":Landroid/preference/PreferenceCategory;
    :cond_67
    return-object p1
.end method

.method private createKoreanConsonantInput(Landroid/preference/PreferenceScreen;)V
    .registers 6
    .param p1, "keyboardScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 287
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "category":Landroid/preference/PreferenceCategory;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v3, Lcom/nuance/swype/input/R$string;->pref_header_advanced:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 293
    new-instance v1, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 294
    .local v1, "consonantInputCheckBox":Landroid/preference/CheckBoxPreference;
    const-string/jumbo v2, "enable_korean_consonant_input"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 295
    sget v2, Lcom/nuance/swype/input/R$string;->enable_korean_consonant_input:I

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 296
    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getEnableKoreanConsonantInput()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 298
    return-void
.end method

.method private createPenSizeSettingScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .registers 5
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 348
    .local v0, "penSizeScreen":Landroid/preference/PreferenceScreen;
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_pen_size_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 349
    sget v1, Lcom/nuance/swype/input/R$string;->handwriting_pen_size_dialog_summary:I

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 350
    new-instance v1, Lcom/nuance/swype/input/settings/InputPrefs$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/InputPrefs$2;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 359
    return-object v0
.end method

.method private formatNumber(D)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # D

    .prologue
    .line 643
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 645
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    .registers 5
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 771
    move v0, p2

    .line 773
    .local v0, "delay":I
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v0

    .line 778
    :goto_5
    return v0

    .line 775
    :catch_6
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto :goto_5
.end method

.method public static getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)I
    .registers 7
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 875
    const-string/jumbo v1, "pen_color"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/UserPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 876
    invoke-static {p3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$attr;->traceColor:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v1

    .line 886
    :goto_13
    return v1

    .line 878
    :cond_14
    move v0, p2

    .line 881
    .local v0, "index":I
    :try_start_15
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_18} :catch_1e

    move-result v0

    .line 886
    :goto_19
    sget-object v1, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    aget v1, v1, v0

    goto :goto_13

    .line 883
    :catch_1e
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto :goto_19
.end method

.method private getPenColorIndex(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    .registers 6
    .param p1, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    .line 854
    move v0, p3

    .line 856
    .local v0, "index":I
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 857
    const/16 v1, 0x18

    if-le v0, v1, :cond_10

    .line 858
    move v0, p3

    .line 859
    invoke-virtual {p1, p2}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p1, p2, p3}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_10} :catch_11

    .line 867
    :cond_10
    :goto_10
    return v0

    .line 863
    :catch_11
    move-exception v1

    invoke-virtual {p1, p2}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p1, p2, p3}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto :goto_10
.end method

.method public static getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I
    .registers 5
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 786
    move v0, p2

    .line 788
    .local v0, "size":I
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v0

    .line 793
    :goto_5
    return v0

    .line 790
    :catch_6
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    goto :goto_5
.end method

.method private saveAutoDelay(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    .line 782
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 783
    return-void
.end method

.method private savePenColorIndex(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 871
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 872
    return-void
.end method

.method private savePenSize(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    .line 797
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setInt(Ljava/lang/String;I)V

    .line 798
    return-void
.end method

.method public static setHWRThemePenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 8
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "themeColor"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 890
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    const/high16 v1, -0x1000000

    if-ne p2, v1, :cond_14

    .line 892
    invoke-static {p3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$attr;->traceColorHwrForMLS:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result p2

    .line 895
    :cond_14
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_15
    sget-object v1, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 896
    sget-object v1, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    aget v1, v1, v0

    if-ne v1, p2, :cond_3a

    .line 897
    sget-object v1, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v2, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v3, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 901
    :cond_2d
    sget-object v1, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v2, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aput p2, v1, v2

    .line 903
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/UserPreferences;->remove(Ljava/lang/String;)V

    .line 904
    return-void

    .line 895
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method private setThemeColorToDefaultColor()V
    .registers 7

    .prologue
    .line 907
    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 908
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    const/4 v2, 0x0

    .line 909
    .local v2, "themeColor":I
    if-eqz v0, :cond_f

    .line 910
    sget v3, Lcom/nuance/swype/input/R$attr;->traceColor:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v2

    .line 913
    :cond_f
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_10
    sget-object v3, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v3, v3

    if-ge v1, v3, :cond_28

    .line 914
    sget-object v3, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    aget v3, v3, v1

    if-ne v3, v2, :cond_32

    .line 915
    sget-object v3, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v4, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v5, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 919
    :cond_28
    sget-object v3, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    sget-object v4, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aput v2, v3, v4

    .line 920
    return-void

    .line 913
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method


# virtual methods
.method public createColorPickerDialog()Landroid/app/Dialog;
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 718
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 720
    sget v8, Lcom/nuance/swype/input/R$layout;->pen_color_dialog:I

    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 722
    .local v6, "view":Landroid/view/ViewGroup;
    sget v7, Lcom/nuance/swype/input/R$id;->color_picker_llayout:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 723
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 724
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 726
    sget v7, Lcom/nuance/swype/input/R$id;->gridview:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 727
    .local v1, "gridview":Landroid/widget/GridView;
    sget v7, Lcom/nuance/swype/input/R$id;->color_picker_selected:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 728
    .local v4, "selected":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    .line 729
    const-string/jumbo v8, "pen_color"

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/UserPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 730
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/InputPrefs;->setThemeColorToDefaultColor()V

    .line 733
    :cond_45
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    const-string/jumbo v8, "pen_color"

    const/16 v9, 0x18

    invoke-direct {p0, v7, v8, v9}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColorIndex(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mColorIndex:I

    .line 735
    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/nuance/swype/input/settings/InputPrefs;->mThumbIds:[Ljava/lang/Integer;

    iget v9, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mColorIndex:I

    aget-object v8, v8, v9

    .line 736
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 735
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 738
    .local v5, "shape":Landroid/graphics/drawable/GradientDrawable;
    sget-object v7, Lcom/nuance/swype/input/settings/InputPrefs;->COLORS:[I

    iget v8, p0, Lcom/nuance/swype/input/settings/InputPrefs;->mColorIndex:I

    aget v7, v7, v8

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 739
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 740
    new-instance v2, Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v7}, Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;Landroid/content/Context;)V

    .line 741
    .local v2, "imAdapter":Lcom/nuance/swype/input/settings/InputPrefs$ImageAdapter;
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 742
    new-instance v7, Lcom/nuance/swype/input/settings/InputPrefs$10;

    invoke-direct {v7, p0, v4}, Lcom/nuance/swype/input/settings/InputPrefs$10;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 756
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/nuance/swype/input/R$string;->handwriting_recognize_color_title:I

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 758
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v9, Lcom/nuance/swype/input/settings/InputPrefs$11;

    invoke-direct {v9, p0}, Lcom/nuance/swype/input/settings/InputPrefs$11;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;)V

    .line 759
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->cancel_button:I

    .line 764
    invoke-virtual {v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 765
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 767
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method

.method public createRecognitionSpeedDialog()Landroid/app/Dialog;
    .registers 19

    .prologue
    .line 575
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 576
    .local v4, "display":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    const-string/jumbo v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 578
    sget v14, Lcom/nuance/swype/input/R$layout;->recognition_speed_dialog:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 579
    .local v12, "view":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 580
    .local v8, "res":Landroid/content/res/Resources;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, " "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v14, Lcom/nuance/swype/input/R$string;->handwriting_recognize_speed_accept_dialog_unit:I

    .line 581
    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 582
    .local v10, "unit":Ljava/lang/String;
    sget v13, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_min_ms:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 583
    .local v7, "min":I
    sget v13, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_max_ms:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sub-int v6, v13, v7

    .line 584
    .local v6, "max":I
    sget v13, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 585
    .local v3, "defaultValue":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v9

    .line 586
    .local v9, "sp":Lcom/nuance/swype/input/UserPreferences;
    const-string/jumbo v13, "hwr_auto_recpgnize_delay"

    invoke-static {v9, v13, v3}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    .line 588
    sget v13, Lcom/nuance/swype/input/R$id;->value_recognition_speed:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 590
    .local v11, "valueLongPress":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    int-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/nuance/swype/input/settings/InputPrefs;->formatNumber(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    sget v13, Lcom/nuance/swype/input/R$id;->speed_seekbar:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 593
    .local v5, "longPressSeekBar":Landroid/widget/SeekBar;
    iget v13, v4, Landroid/util/DisplayMetrics;->density:F

    const v14, 0x3f4ccccd    # 0.8f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_d0

    .line 594
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    .line 595
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    .line 596
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    const/16 v16, 0x0

    .line 594
    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 598
    :cond_d0
    div-int/lit8 v13, v6, 0x64

    invoke-virtual {v5, v13}, Landroid/widget/SeekBar;->setMax(I)V

    .line 599
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    sub-int/2addr v13, v7

    div-int/lit8 v13, v13, 0x64

    invoke-virtual {v5, v13}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 600
    new-instance v13, Lcom/nuance/swype/input/settings/InputPrefs$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7, v11, v10}, Lcom/nuance/swype/input/settings/InputPrefs$6;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;ILandroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 622
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v14, Lcom/nuance/swype/input/R$string;->handwriting_recognize_speed_title:I

    .line 623
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 624
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v15, Lcom/nuance/swype/input/settings/InputPrefs$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/nuance/swype/input/settings/InputPrefs$7;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;I)V

    .line 625
    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v15, 0x0

    .line 636
    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 637
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 639
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    return-object v13
.end method

.method public createStrokeWidthDialog()Landroid/app/Dialog;
    .registers 21

    .prologue
    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 650
    .local v6, "display":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 652
    sget v17, Lcom/nuance/swype/input/R$layout;->stroke_width_dialog:I

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 653
    .local v15, "view":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 654
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, " "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v17, Lcom/nuance/swype/input/R$string;->handwriting_pen_size_dialog_unit:I

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 655
    .local v13, "unit":Ljava/lang/String;
    sget v16, Lcom/nuance/swype/input/R$integer;->handwriting_pen_size_min_pixels:I

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 656
    .local v10, "min":I
    sget v16, Lcom/nuance/swype/input/R$integer;->handwriting_pen_size_max_pixels:I

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    sub-int v9, v16, v10

    .line 657
    .local v9, "max":I
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 658
    .local v7, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v16

    .line 659
    if-eqz v16, :cond_16f

    const/16 v16, 0x7

    :goto_71
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v5, v0

    .line 660
    .local v5, "defaultValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v12

    .line 661
    .local v12, "sp":Lcom/nuance/swype/input/UserPreferences;
    const-string/jumbo v16, "hwr_pen_size"

    move-object/from16 v0, v16

    invoke-static {v12, v0, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    .line 663
    sget v16, Lcom/nuance/swype/input/R$id;->value_stroke_width:I

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 664
    .local v14, "valueLongPress":Landroid/widget/TextView;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/settings/InputPrefs;->formatNumber(D)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    sget v16, Lcom/nuance/swype/input/R$id;->stroke_width_seekbar:I

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    .line 667
    .local v8, "longPressSeekBar":Landroid/widget/SeekBar;
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    const v17, 0x3f4ccccd    # 0.8f

    cmpg-float v16, v16, v17

    if-gez v16, :cond_11b

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 669
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 670
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    .line 668
    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 672
    :cond_11b
    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->mValue:I

    move/from16 v16, v0

    sub-int v16, v16, v10

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 674
    new-instance v16, Lcom/nuance/swype/input/settings/InputPrefs$8;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v14, v13}, Lcom/nuance/swype/input/settings/InputPrefs$8;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;ILandroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 696
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v17, Lcom/nuance/swype/input/R$string;->handwriting_pen_size_dialog_title:I

    .line 697
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    sget v17, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 698
    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    sget v17, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v18, Lcom/nuance/swype/input/settings/InputPrefs$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/input/settings/InputPrefs$9;-><init>(Lcom/nuance/swype/input/settings/InputPrefs;I)V

    .line 699
    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    sget v17, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/16 v18, 0x0

    .line 710
    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 711
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 713
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    return-object v16

    .line 659
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "defaultValue":I
    .end local v8    # "longPressSeekBar":Landroid/widget/SeekBar;
    .end local v12    # "sp":Lcom/nuance/swype/input/UserPreferences;
    .end local v14    # "valueLongPress":Landroid/widget/TextView;
    :cond_16f
    const/16 v16, 0x4

    goto/16 :goto_71
.end method

.method abstract doShowDialog(ILandroid/os/Bundle;)V
.end method

.method public getInputModeName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    const-string/jumbo v1, "handwriting_full_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 171
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->handwriting:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->displayInputModeName:Ljava/lang/String;

    .line 175
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->displayInputModeName:Ljava/lang/String;

    return-object v0

    .line 172
    :cond_1c
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    const-string/jumbo v1, "pinyin_qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    sget v1, Lcom/nuance/swype/input/R$string;->pinyin:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefs;->displayInputModeName:Ljava/lang/String;

    goto :goto_19
.end method

.method public onResume()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 179
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    .line 180
    iget-object v5, p0, Lcom/nuance/swype/input/settings/InputPrefs;->languageId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 182
    .local v1, "inputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v1, :cond_23

    .line 183
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Can\'t find #%s in available input languages"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->languageId:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 187
    :cond_23
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 188
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-nez v2, :cond_3e

    .line 189
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Can\'t find %s in available input modes"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nuance/swype/input/settings/InputPrefs;->inputModeName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    :cond_3e
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 200
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 203
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 207
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 208
    .local v0, "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v0, :cond_63

    .line 209
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4, v0}, Lcom/nuance/swype/input/settings/InputPrefs;->createChineseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    .line 253
    .end local v0    # "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_63
    :goto_63
    return-void

    .line 214
    :cond_64
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v3

    .line 215
    .local v3, "keyboardLayouts":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Layout;>;"
    if-eqz v3, :cond_63

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_63

    .line 216
    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "doublepinyin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 217
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4, v2}, Lcom/nuance/swype/input/settings/InputPrefs;->createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    goto :goto_63

    .line 221
    .end local v3    # "keyboardLayouts":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Layout;>;"
    :cond_81
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 222
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 225
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 227
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 228
    .restart local v0    # "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v0, :cond_63

    .line 229
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4, v0}, Lcom/nuance/swype/input/settings/InputPrefs;->createJapaneseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    goto :goto_63

    .line 233
    .end local v0    # "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_9e
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 236
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 240
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 241
    .restart local v0    # "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v0, :cond_63

    .line 242
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4, v0}, Lcom/nuance/swype/input/settings/InputPrefs;->createAlphaHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    goto :goto_63

    .line 247
    .end local v0    # "handwritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_b5
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v3

    .line 248
    .restart local v3    # "keyboardLayouts":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Layout;>;"
    if-eqz v3, :cond_63

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_63

    .line 249
    iget-object v4, p0, Lcom/nuance/swype/input/settings/InputPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4, v2}, Lcom/nuance/swype/input/settings/InputPrefs;->createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    goto :goto_63
.end method
