.class public Lcom/nuance/swype/input/KeyboardEx$Key;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_NORMAL_LOCK:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED_LOCK:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public accessibilityLabel:Ljava/lang/CharSequence;

.field public altCode:I

.field public altIcon:Landroid/graphics/drawable/Drawable;

.field public altIconGravity:I

.field public altIconSize:I

.field public altLabel:Ljava/lang/CharSequence;

.field public altLabelUpperCase:Ljava/lang/CharSequence;

.field public altPopupResId:I

.field public altPreviewIcon:Landroid/graphics/drawable/Drawable;

.field public altPreviewLabel:Ljava/lang/CharSequence;

.field public altText:Ljava/lang/CharSequence;

.field public altTextColor:I

.field public altTextGravity:I

.field public altTextSize:I

.field public alwaysShowAltSymbol:Z

.field public baseline:I

.field public codes:[I

.field public dependentKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public dimmed:Z

.field public disableMultitap:Z

.field public edgeFlags:I

.field public focused:Z

.field public gap:I

.field public hasMultilineLabel:Z

.field public height:I

.field public final horizontalPadding:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field public immediatePopup:Z

.field public isAltPopupKept:Z

.field public isMiniKeyboardKey:Z

.field public keyFontTypeface:I

.field private keyGroup:I

.field public keyIconRecolor:I

.field public keyTextColorPressed:I

.field public keyboardSettings:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;",
            ">;"
        }
    .end annotation
.end field

.field public label:Ljava/lang/CharSequence;

.field public labelUpperCase:Ljava/lang/CharSequence;

.field public leftAltLabel:Ljava/lang/CharSequence;

.field public lockable:Z

.field public locked:Z

.field public mComponentKeyTextColor:I

.field public mDefaultStrokeCandidateColor:I

.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field public mKeyTextColor:Landroid/content/res/ColorStateList;

.field public mKeyTextSize:I

.field public modeFlags:I

.field public modifier:Z

.field public multitapChars:[I

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupCharactersSimplified:Ljava/lang/CharSequence;

.field public popupLabel:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field private resizeWhenHidden:Z

.field row:Lcom/nuance/swype/input/KeyboardEx$Row;

.field public shiftChars:[I

.field public shiftCode:I

.field public shiftText:Ljava/lang/CharSequence;

.field public shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

.field public shiftedIcon:Landroid/graphics/drawable/Drawable;

.field public shiftedLabel:Ljava/lang/CharSequence;

.field public shiftedPopupResId:I

.field public shiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

.field public showPopup:Z

.field public sticky:Z

.field public supportFullSpaceSplit:Z

.field public tertiaryTextColor:I

.field public text:Ljava/lang/CharSequence;

.field public type:I

.field public final verticalPadding:I

.field public visible:Z

.field public visibleIndex:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 916
    new-array v0, v2, [I

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 918
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 920
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_ON:[I

    .line 922
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_ON:[I

    .line 925
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_LOCK:[I

    .line 927
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_LOCK:[I

    return-void

    .line 922
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data

    .line 927
    :array_1
    .array-data 4
        0x10100a7
        0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx$Row;IILcom/nuance/swype/input/KeyboardStyle;)V
    .locals 14
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "style"    # Lcom/nuance/swype/input/KeyboardStyle;

    .prologue
    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    const/4 v9, 0x0

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->horizontalPadding:I

    .line 802
    const/4 v9, 0x0

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->verticalPadding:I

    .line 901
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    .line 907
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    .line 1031
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    .line 1032
    .local v5, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1033
    move/from16 v0, p3

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1034
    move/from16 v0, p4

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 1036
    sget v9, Lcom/nuance/swype/input/R$attr;->keyWidth:I

    iget v10, v5, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10, v11}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 1039
    iget v9, v5, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-static {v5, v0, v9, v10}, Lcom/nuance/swype/input/KeyboardEx;->access$000(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 1041
    sget v9, Lcom/nuance/swype/input/R$attr;->horizontalGap:I

    iget v10, v5, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10, v11}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 1044
    iget v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v10, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1046
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1047
    .local v2, "codesValue":Landroid/util/TypedValue;
    sget v9, Lcom/nuance/swype/input/R$attr;->codes:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v2}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(ILandroid/util/TypedValue;)Z

    .line 1049
    iget v9, v2, Landroid/util/TypedValue;->type:I

    const/16 v10, 0x10

    if-eq v9, v10, :cond_0

    iget v9, v2, Landroid/util/TypedValue;->type:I

    const/16 v10, 0x11

    if-ne v9, v10, :cond_f

    .line 1051
    :cond_0
    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    iget v11, v2, Landroid/util/TypedValue;->data:I

    aput v11, v9, v10

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1056
    :cond_1
    :goto_0
    sget v9, Lcom/nuance/swype/input/R$attr;->iconPreview:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1058
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    .line 1059
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    iget-object v13, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1060
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 1059
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1063
    :cond_2
    sget v9, Lcom/nuance/swype/input/R$attr;->altIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1064
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    .line 1065
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    iget-object v13, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1066
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 1065
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1069
    :cond_3
    sget v9, Lcom/nuance/swype/input/R$attr;->popupCharacters:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 1070
    sget v9, Lcom/nuance/swype/input/R$attr;->popupCharactersSimplified:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharactersSimplified:Ljava/lang/CharSequence;

    .line 1074
    sget-object v6, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .line 1075
    .local v6, "level":Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 1076
    sget-object v6, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ALL:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .line 1079
    :cond_4
    sget v9, Lcom/nuance/swype/input/R$attr;->popupKeyboard:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v6}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 1080
    sget v9, Lcom/nuance/swype/input/R$attr;->altPopupKeyboard:I

    sget-object v10, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPopupResId:I

    .line 1081
    sget v9, Lcom/nuance/swype/input/R$attr;->shiftedPopupKeyboard:I

    sget-object v10, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    .line 1083
    sget v9, Lcom/nuance/swype/input/R$attr;->isRepeatable:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 1084
    sget v9, Lcom/nuance/swype/input/R$attr;->isModifier:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->modifier:Z

    .line 1085
    sget v9, Lcom/nuance/swype/input/R$attr;->isSticky:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->sticky:Z

    .line 1086
    sget v9, Lcom/nuance/swype/input/R$attr;->isLockable:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    .line 1087
    sget v9, Lcom/nuance/swype/input/R$attr;->keyEdgeFlags:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1088
    sget v9, Lcom/nuance/swype/input/R$attr;->keyType:I

    const/4 v10, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    .line 1089
    sget v9, Lcom/nuance/swype/input/R$attr;->keyboardMode:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->modeFlags:I

    .line 1090
    iget v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    or-int/2addr v9, v10

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1092
    sget v9, Lcom/nuance/swype/input/R$attr;->keyIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1094
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    .line 1095
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    iget-object v13, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1096
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 1095
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1099
    :cond_5
    sget v9, Lcom/nuance/swype/input/R$attr;->keyLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1100
    sget v9, Lcom/nuance/swype/input/R$attr;->altKeyLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 1101
    sget v9, Lcom/nuance/swype/input/R$attr;->altPreviewLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewLabel:Ljava/lang/CharSequence;

    .line 1102
    sget v9, Lcom/nuance/swype/input/R$attr;->leftAltKeyLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    .line 1103
    sget v9, Lcom/nuance/swype/input/R$attr;->shiftedKeyLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 1104
    sget v9, Lcom/nuance/swype/input/R$attr;->shiftedKeyIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 1105
    sget v9, Lcom/nuance/swype/input/R$attr;->shiftedPreviewIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1106
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_6

    .line 1107
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1109
    :cond_6
    sget v9, Lcom/nuance/swype/input/R$attr;->keyOutputText:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 1110
    sget v9, Lcom/nuance/swype/input/R$attr;->shiftedOutputText:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    .line 1111
    sget v9, Lcom/nuance/swype/input/R$attr;->altKeyOutputText:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altText:Ljava/lang/CharSequence;

    .line 1112
    sget v9, Lcom/nuance/swype/input/R$attr;->popupLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupLabel:Ljava/lang/CharSequence;

    .line 1113
    sget v9, Lcom/nuance/swype/input/R$attr;->disableMultitap:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->disableMultitap:Z

    .line 1114
    sget v9, Lcom/nuance/swype/input/R$attr;->accessibilitylabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->accessibilityLabel:Ljava/lang/CharSequence;

    .line 1115
    sget v9, Lcom/nuance/swype/input/R$attr;->supportFullSpaceSplit:I

    const/4 v10, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->supportFullSpaceSplit:Z

    .line 1116
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v9, :cond_7

    .line 1117
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_10

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    .line 1119
    :cond_7
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    if-nez v9, :cond_8

    .line 1120
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_11

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    .line 1123
    :cond_8
    sget v9, Lcom/nuance/swype/input/R$attr;->immediatePopup:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->immediatePopup:Z

    .line 1124
    sget v9, Lcom/nuance/swype/input/R$attr;->alwaysShowAltSymbol:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    .line 1126
    iget-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->immediatePopup:Z

    if-nez v9, :cond_12

    sget v9, Lcom/nuance/swype/input/R$attr;->showPopup:I

    iget-object v10, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    sget v11, Lcom/nuance/swype/input/R$attr;->showPopup:I

    const/4 v12, 0x1

    .line 1127
    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v11, v12}, Lcom/nuance/swype/input/KeyboardStyle;->getDefaultKeyStyleSetting([IIZ)Z

    move-result v10

    .line 1126
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    .line 1129
    sget v9, Lcom/nuance/swype/input/R$attr;->keyIconRecolor:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyIconRecolor:I

    .line 1131
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 1132
    .local v7, "multitapCharsValue":Landroid/util/TypedValue;
    sget v9, Lcom/nuance/swype/input/R$attr;->keyMultitapChars:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v7}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(ILandroid/util/TypedValue;)Z

    .line 1134
    iget-object v9, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1135
    iget-object v9, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/KeyboardEx$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    .line 1140
    :goto_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardEx$Key;->resetVisibility()V

    .line 1142
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-nez v9, :cond_a

    .line 1143
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1144
    const/4 v9, 0x3

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    .line 1150
    :cond_9
    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, 0xfdf

    aput v11, v9, v10

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1154
    :cond_a
    :goto_5
    const/16 v1, 0xfdf

    .line 1155
    .local v1, "codeDefault":I
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 1156
    .local v8, "shiftsCharsValue":Landroid/util/TypedValue;
    sget v9, Lcom/nuance/swype/input/R$attr;->shiftCode:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v8}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(ILandroid/util/TypedValue;)Z

    .line 1158
    iget v9, v8, Landroid/util/TypedValue;->type:I

    const/16 v10, 0x10

    if-eq v9, v10, :cond_b

    iget v9, v8, Landroid/util/TypedValue;->type:I

    const/16 v10, 0x11

    if-ne v9, v10, :cond_15

    .line 1160
    :cond_b
    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    iget v11, v8, Landroid/util/TypedValue;->data:I

    aput v11, v9, v10

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    .line 1161
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    .line 1173
    :goto_6
    const/16 v1, 0xfdf

    .line 1174
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altText:Ljava/lang/CharSequence;

    if-nez v9, :cond_c

    .line 1175
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1177
    :cond_c
    sget v9, Lcom/nuance/swype/input/R$attr;->altCode:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v1}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 1179
    sget v9, Lcom/nuance/swype/input/R$attr;->keyBackground:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 1181
    move-object/from16 v0, p5

    invoke-static {v5, v0, p1}, Lcom/nuance/swype/input/KeyboardEx;->access$100(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 1182
    move-object/from16 v0, p5

    invoke-static {v5, v0, p1}, Lcom/nuance/swype/input/KeyboardEx;->access$200(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 1183
    move-object/from16 v0, p5

    invoke-static {v5, v0, p1}, Lcom/nuance/swype/input/KeyboardEx;->access$300(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    .line 1185
    sget v9, Lcom/nuance/swype/input/R$attr;->keyTextColor:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 1186
    sget v9, Lcom/nuance/swype/input/R$attr;->candidateComponent:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 1187
    sget v9, Lcom/nuance/swype/input/R$attr;->defaultStrokeCandidateColor:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 1188
    sget v9, Lcom/nuance/swype/input/R$attr;->keyContentBaseline:I

    iget v10, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10, v11}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 1190
    sget v9, Lcom/nuance/swype/input/R$attr;->altTextColor:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 1191
    sget v9, Lcom/nuance/swype/input/R$attr;->tertiaryTextColor:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 1192
    sget v9, Lcom/nuance/swype/input/R$attr;->keyTextColorPressed:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 1193
    sget v9, Lcom/nuance/swype/input/R$attr;->altTextGravity:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 1194
    sget v9, Lcom/nuance/swype/input/R$attr;->altIconGravity:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 1195
    sget v9, Lcom/nuance/swype/input/R$attr;->altIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1196
    sget v9, Lcom/nuance/swype/input/R$attr;->altPreviewIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1197
    sget v9, Lcom/nuance/swype/input/R$attr;->keyFontTypeface:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 1198
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_d

    .line 1199
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1201
    :cond_d
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_e

    iget v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    if-nez v9, :cond_e

    .line 1202
    iget v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 1205
    :cond_e
    sget v9, Lcom/nuance/swype/input/R$attr;->dependentKey:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(I)I

    move-result v3

    .line 1206
    .local v3, "dependentKeyResId":I
    if-eqz v3, :cond_19

    .line 1207
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    .line 1209
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "array"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1210
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v11, :cond_19

    aget v4, v10, v9

    .line 1211
    .local v4, "keyCode":I
    iget-object v12, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1052
    .end local v1    # "codeDefault":I
    .end local v3    # "dependentKeyResId":I
    .end local v4    # "keyCode":I
    .end local v6    # "level":Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;
    .end local v7    # "multitapCharsValue":Landroid/util/TypedValue;
    .end local v8    # "shiftsCharsValue":Landroid/util/TypedValue;
    :cond_f
    iget v9, v2, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    .line 1053
    iget-object v9, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/KeyboardEx$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    goto/16 :goto_0

    .line 1117
    .restart local v6    # "level":Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1120
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1126
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1137
    .restart local v7    # "multitapCharsValue":Landroid/util/TypedValue;
    :cond_13
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    goto/16 :goto_4

    .line 1147
    :cond_14
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1148
    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput v11, v9, v10

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    goto/16 :goto_5

    .line 1162
    .restart local v1    # "codeDefault":I
    .restart local v8    # "shiftsCharsValue":Landroid/util/TypedValue;
    :cond_15
    iget v9, v8, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_16

    .line 1163
    iget-object v9, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/KeyboardEx$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    .line 1164
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    goto/16 :goto_6

    .line 1166
    :cond_16
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    .line 1167
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    if-nez v9, :cond_17

    .line 1168
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1170
    :cond_17
    iput v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    goto/16 :goto_6

    .line 1214
    .restart local v3    # "dependentKeyResId":I
    :cond_18
    iget-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    :cond_19
    sget v9, Lcom/nuance/swype/input/R$attr;->shiftTransition:I

    sget-object v10, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    .line 1218
    invoke-virtual {v10}, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->ordinal()I

    move-result v10

    .line 1217
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    invoke-static {v9}, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->convert(I)Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    .line 1220
    sget v9, Lcom/nuance/swype/input/R$attr;->keyboardSettings:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v9

    invoke-static {v9}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->from(I)Ljava/util/EnumSet;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyboardSettings:Ljava/util/EnumSet;

    .line 1221
    sget v9, Lcom/nuance/swype/input/R$attr;->resizeWhenHidden:I

    const/4 v10, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->resizeWhenHidden:Z

    .line 1222
    sget v9, Lcom/nuance/swype/input/R$attr;->keyGroup:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(I)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyGroup:I

    .line 1223
    sget v9, Lcom/nuance/swype/input/R$attr;->keepAltKeyPopup:I

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    .line 1224
    return-void
.end method

.method constructor <init>(Lcom/nuance/swype/input/KeyboardEx$Key;IIIII)V
    .locals 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "gap"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    iput v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->horizontalPadding:I

    .line 802
    iput v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->verticalPadding:I

    .line 901
    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    .line 931
    iput p2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 932
    iput p3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 933
    iput p5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 934
    iput p6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 935
    iput p4, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 937
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 938
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewLabel:Ljava/lang/CharSequence;

    .line 939
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    .line 940
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 941
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 942
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 943
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPopupResId:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPopupResId:I

    .line 944
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altText:Ljava/lang/CharSequence;

    .line 946
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 948
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 949
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 950
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 951
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 952
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 954
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    .line 955
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->resizeWhenHidden:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->resizeWhenHidden:Z

    .line 957
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 959
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 960
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 961
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->immediatePopup:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->immediatePopup:Z

    .line 963
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 964
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    .line 965
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    .line 966
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    .line 968
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyboardSettings:Ljava/util/EnumSet;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyboardSettings:Ljava/util/EnumSet;

    .line 970
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 971
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 972
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 973
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 974
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 975
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->modeFlags:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->modeFlags:I

    .line 977
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 978
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 979
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharactersSimplified:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharactersSimplified:Ljava/lang/CharSequence;

    .line 980
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupLabel:Ljava/lang/CharSequence;

    .line 981
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 982
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    .line 984
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 985
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 986
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->sticky:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->sticky:Z

    .line 987
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 989
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    .line 990
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 992
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 993
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    .line 994
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    .line 995
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    .line 996
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 997
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 998
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    .line 999
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    .line 1000
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    .line 1001
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->supportFullSpaceSplit:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->supportFullSpaceSplit:Z

    .line 1002
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    .line 1004
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->disableMultitap:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->disableMultitap:Z

    .line 1005
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 1006
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 1009
    :cond_1
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    .line 1010
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V
    .locals 1
    .param p1, "parent"    # Lcom/nuance/swype/input/KeyboardEx$Row;

    .prologue
    const/4 v0, 0x0

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->horizontalPadding:I

    .line 802
    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->verticalPadding:I

    .line 901
    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    .line 1014
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1015
    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 724
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyGroup:I

    return v0
.end method

.method protected static parseCSV(Ljava/lang/String;)[I
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1280
    const/4 v1, 0x0

    .line 1281
    .local v1, "count":I
    const/4 v3, 0x0

    .line 1282
    .local v3, "lastIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 1283
    add-int/lit8 v1, v1, 0x1

    .line 1284
    :goto_0
    const-string/jumbo v7, ","

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 1285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1288
    :cond_0
    new-array v6, v1, [I

    .line 1289
    .local v6, "values":[I
    const/4 v1, 0x0

    .line 1290
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v7, ","

    invoke-direct {v4, p0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1293
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1296
    .local v5, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1304
    .local v0, "chr":I
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput v0, v6, v1

    move v1, v2

    .line 1306
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 1300
    .end local v0    # "chr":I
    :catch_0
    move-exception v7

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "chr":I
    goto :goto_2

    .line 1307
    .end local v0    # "chr":I
    .end local v5    # "token":Ljava/lang/String;
    :cond_1
    return-object v6
.end method


# virtual methods
.method public contains(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 1344
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentDrawableState(Z)[I
    .locals 4
    .param p1, "includePress"    # Z

    .prologue
    .line 1389
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1390
    .local v1, "isPressed":Z
    :goto_0
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    if-eqz v3, :cond_2

    .line 1391
    if-eqz v1, :cond_1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_ON:[I

    .line 1407
    .local v2, "states":[I
    :goto_1
    return-object v2

    .line 1389
    .end local v1    # "isPressed":Z
    .end local v2    # "states":[I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1391
    .restart local v1    # "isPressed":Z
    :cond_1
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_1

    .line 1392
    :cond_2
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    if-eqz v3, :cond_4

    .line 1393
    if-eqz v1, :cond_3

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_LOCK:[I

    .restart local v2    # "states":[I
    :goto_2
    goto :goto_1

    .end local v2    # "states":[I
    :cond_3
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_LOCK:[I

    goto :goto_2

    .line 1395
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1397
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/UserPreferences;->isHardwareKeyboardEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1398
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    if-eqz v3, :cond_5

    .line 1399
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_ON:[I

    .line 1404
    .restart local v2    # "states":[I
    :goto_3
    goto :goto_1

    .line 1401
    .end local v2    # "states":[I
    :cond_5
    if-eqz v1, :cond_6

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_OFF:[I

    .restart local v2    # "states":[I
    :goto_4
    goto :goto_1

    .end local v2    # "states":[I
    :cond_6
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_4

    .line 1404
    :cond_7
    if-eqz v1, :cond_8

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_3

    :cond_8
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_3
.end method

.method public getVisibleBounds()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1417
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/lit8 v1, v1, 0x0

    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/lit8 v2, v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1419
    return-object v0
.end method

.method public hasIconDescription()Z
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInside(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1322
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_4

    move v1, v4

    .line 1323
    .local v1, "leftEdge":Z
    :goto_0
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    move v2, v4

    .line 1324
    .local v2, "rightEdge":Z
    :goto_1
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    move v3, v4

    .line 1325
    .local v3, "topEdge":Z
    :goto_2
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_7

    move v0, v4

    .line 1329
    .local v0, "bottomEdge":Z
    :goto_3
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    if-ge p1, v6, :cond_0

    if-eqz v1, :cond_8

    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v7, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v6, v7

    if-gt p1, v6, :cond_8

    :cond_0
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v7, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v6, v7

    if-lt p1, v6, :cond_1

    if-eqz v2, :cond_8

    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    if-lt p1, v6, :cond_8

    :cond_1
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    if-ge p2, v6, :cond_2

    if-eqz v3, :cond_8

    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v7, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v6, v7

    if-gt p2, v6, :cond_8

    :cond_2
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v7, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v6, v7

    if-lt p2, v6, :cond_3

    if-eqz v0, :cond_8

    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    if-lt p2, v6, :cond_8

    :cond_3
    :goto_4
    return v4

    .end local v0    # "bottomEdge":Z
    .end local v1    # "leftEdge":Z
    .end local v2    # "rightEdge":Z
    .end local v3    # "topEdge":Z
    :cond_4
    move v1, v5

    .line 1322
    goto :goto_0

    .restart local v1    # "leftEdge":Z
    :cond_5
    move v2, v5

    .line 1323
    goto :goto_1

    .restart local v2    # "rightEdge":Z
    :cond_6
    move v3, v5

    .line 1324
    goto :goto_2

    .restart local v3    # "topEdge":Z
    :cond_7
    move v0, v5

    .line 1325
    goto :goto_3

    .restart local v0    # "bottomEdge":Z
    :cond_8
    move v4, v5

    .line 1329
    goto :goto_4
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 1246
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    return v0
.end method

.method public onPressed()V
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    .line 1238
    return-void

    .line 1237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReleased(Z)V
    .locals 4
    .param p1, "inside"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1259
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    .line 1260
    if-eqz p1, :cond_0

    .line 1261
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    if-eqz v1, :cond_3

    .line 1262
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    .line 1263
    .local v0, "lastLocked":Z
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    .line 1264
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 1269
    .end local v0    # "lastLocked":Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 1259
    goto :goto_0

    .restart local v0    # "lastLocked":Z
    :cond_2
    move v2, v3

    .line 1264
    goto :goto_1

    .line 1265
    .end local v0    # "lastLocked":Z
    :cond_3
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->sticky:Z

    if-eqz v1, :cond_0

    .line 1266
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    if-nez v1, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method public final resetVisibility()V
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 1228
    return-void

    .line 1227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public squaredDistanceFrom(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1362
    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v0, v2, p1

    .line 1363
    .local v0, "xDist":I
    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v1, v2, p2

    .line 1364
    .local v1, "yDist":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method

.method public squaredDistanceToEdge(II)I
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1368
    iget v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1369
    .local v5, "left":I
    iget v8, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int v6, v5, v8

    .line 1370
    .local v6, "right":I
    iget v7, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 1371
    .local v7, "top":I
    iget v8, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int v0, v7, v8

    .line 1372
    .local v0, "bottom":I
    if-ge p1, v5, :cond_0

    move v3, v5

    .line 1373
    .local v3, "edgeX":I
    :goto_0
    if-ge p2, v7, :cond_2

    move v4, v7

    .line 1374
    .local v4, "edgeY":I
    :goto_1
    sub-int v1, p1, v3

    .line 1375
    .local v1, "dx":I
    sub-int v2, p2, v4

    .line 1376
    .local v2, "dy":I
    mul-int v8, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    return v8

    .line 1372
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v3    # "edgeX":I
    .end local v4    # "edgeY":I
    :cond_0
    if-le p1, v6, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, p1

    goto :goto_0

    .line 1373
    .restart local v3    # "edgeX":I
    :cond_2
    if-le p2, v0, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, p2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "code: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; rc: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "?"

    goto :goto_0
.end method
