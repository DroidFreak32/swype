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

    .line 893
    new-array v0, v2, [I

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 895
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 897
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_ON:[I

    .line 899
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_ON:[I

    .line 902
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_LOCK:[I

    .line 904
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_LOCK:[I

    return-void

    .line 899
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data

    .line 904
    :array_1
    .array-data 4
        0x10100a7
        0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx$Row;IILcom/nuance/swype/input/KeyboardStyle;)V
    .locals 18
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "style"    # Lcom/nuance/swype/input/KeyboardStyle;

    .prologue
    .line 1010
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 779
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->horizontalPadding:I

    .line 780
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->verticalPadding:I

    .line 878
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    .line 884
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    .line 1011
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    .line 1012
    .local v8, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 1013
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1014
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 1016
    sget v13, Lcom/nuance/swype/input/R$attr;->keyWidth:I

    iget v14, v8, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14, v15}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 1019
    iget v13, v8, Lcom/nuance/swype/input/KeyboardEx;->mDisplayHeight:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-static {v8, v0, v13, v14}, Lcom/nuance/swype/input/KeyboardEx;->access$000(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 1021
    sget v13, Lcom/nuance/swype/input/R$attr;->horizontalGap:I

    iget v14, v8, Lcom/nuance/swype/input/KeyboardEx;->mDisplayWidth:I

    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14, v15}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 1024
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1026
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1027
    .local v4, "codesValue":Landroid/util/TypedValue;
    sget v13, Lcom/nuance/swype/input/R$attr;->codes:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v4}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(ILandroid/util/TypedValue;)Z

    .line 1029
    iget v13, v4, Landroid/util/TypedValue;->type:I

    const/16 v14, 0x10

    if-eq v13, v14, :cond_0

    iget v13, v4, Landroid/util/TypedValue;->type:I

    const/16 v14, 0x11

    if-ne v13, v14, :cond_f

    .line 1031
    :cond_0
    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    iget v15, v4, Landroid/util/TypedValue;->data:I

    aput v15, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1036
    :cond_1
    :goto_0
    sget v13, Lcom/nuance/swype/input/R$attr;->iconPreview:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1038
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    .line 1039
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1043
    :cond_2
    sget v13, Lcom/nuance/swype/input/R$attr;->altIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1044
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_3

    .line 1045
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1049
    :cond_3
    sget v13, Lcom/nuance/swype/input/R$attr;->popupCharacters:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 1050
    sget v13, Lcom/nuance/swype/input/R$attr;->popupCharactersSimplified:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharactersSimplified:Ljava/lang/CharSequence;

    .line 1054
    sget-object v10, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .line 1055
    .local v10, "level":Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 1056
    sget-object v10, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->ALL:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    .line 1059
    :cond_4
    sget v13, Lcom/nuance/swype/input/R$attr;->popupKeyboard:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v10}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 1060
    sget v13, Lcom/nuance/swype/input/R$attr;->altPopupKeyboard:I

    sget-object v14, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPopupResId:I

    .line 1061
    sget v13, Lcom/nuance/swype/input/R$attr;->shiftedPopupKeyboard:I

    sget-object v14, Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;->KEY:Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(ILcom/nuance/swype/input/KeyboardStyle$StyleLevel;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    .line 1063
    sget v13, Lcom/nuance/swype/input/R$attr;->isRepeatable:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 1064
    sget v13, Lcom/nuance/swype/input/R$attr;->isModifier:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->modifier:Z

    .line 1065
    sget v13, Lcom/nuance/swype/input/R$attr;->isSticky:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->sticky:Z

    .line 1066
    sget v13, Lcom/nuance/swype/input/R$attr;->isLockable:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    .line 1067
    sget v13, Lcom/nuance/swype/input/R$attr;->keyEdgeFlags:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1068
    sget v13, Lcom/nuance/swype/input/R$attr;->keyType:I

    const/4 v14, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    .line 1069
    sget v13, Lcom/nuance/swype/input/R$attr;->keyboardMode:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->modeFlags:I

    .line 1070
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    move-object/from16 v0, p2

    iget v14, v0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    or-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 1072
    sget v13, Lcom/nuance/swype/input/R$attr;->keyIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1074
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_5

    .line 1075
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1079
    :cond_5
    sget v13, Lcom/nuance/swype/input/R$attr;->keyLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 1080
    sget v13, Lcom/nuance/swype/input/R$attr;->altKeyLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 1081
    sget v13, Lcom/nuance/swype/input/R$attr;->altPreviewLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewLabel:Ljava/lang/CharSequence;

    .line 1082
    sget v13, Lcom/nuance/swype/input/R$attr;->leftAltKeyLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    .line 1083
    sget v13, Lcom/nuance/swype/input/R$attr;->shiftedKeyLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 1084
    sget v13, Lcom/nuance/swype/input/R$attr;->shiftedKeyIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 1085
    sget v13, Lcom/nuance/swype/input/R$attr;->shiftedPreviewIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1086
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_6

    .line 1087
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1089
    :cond_6
    sget v13, Lcom/nuance/swype/input/R$attr;->keyOutputText:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 1090
    sget v13, Lcom/nuance/swype/input/R$attr;->shiftedOutputText:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    .line 1091
    sget v13, Lcom/nuance/swype/input/R$attr;->altKeyOutputText:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altText:Ljava/lang/CharSequence;

    .line 1092
    sget v13, Lcom/nuance/swype/input/R$attr;->popupLabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupLabel:Ljava/lang/CharSequence;

    .line 1093
    sget v13, Lcom/nuance/swype/input/R$attr;->disableMultitap:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->disableMultitap:Z

    .line 1094
    sget v13, Lcom/nuance/swype/input/R$attr;->accessibilitylabel:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->accessibilityLabel:Ljava/lang/CharSequence;

    .line 1095
    sget v13, Lcom/nuance/swype/input/R$attr;->supportFullSpaceSplit:I

    const/4 v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->supportFullSpaceSplit:Z

    .line 1096
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v13, :cond_7

    .line 1097
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_10

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    .line 1099
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    if-nez v13, :cond_8

    .line 1100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_11

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    .line 1103
    :cond_8
    sget v13, Lcom/nuance/swype/input/R$attr;->immediatePopup:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->immediatePopup:Z

    .line 1104
    sget v13, Lcom/nuance/swype/input/R$attr;->alwaysShowAltSymbol:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    .line 1106
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->immediatePopup:Z

    if-nez v13, :cond_12

    sget v13, Lcom/nuance/swype/input/R$attr;->showPopup:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    sget v15, Lcom/nuance/swype/input/R$attr;->showPopup:I

    const/16 v16, 0x1

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/nuance/swype/input/KeyboardStyle;->getDefaultKeyStyleSetting([IIZ)Z

    move-result v14

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    .line 1109
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 1110
    .local v11, "multitapCharsValue":Landroid/util/TypedValue;
    sget v13, Lcom/nuance/swype/input/R$attr;->keyMultitapChars:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v11}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(ILandroid/util/TypedValue;)Z

    .line 1112
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 1113
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/nuance/swype/input/KeyboardEx$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    .line 1118
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/KeyboardEx$Key;->resetVisibility()V

    .line 1120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-nez v13, :cond_a

    .line 1121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 1122
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    .line 1128
    :cond_9
    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, 0xfdf

    aput v15, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 1132
    :cond_a
    :goto_5
    const/16 v3, 0xfdf

    .line 1133
    .local v3, "codeDefault":I
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 1134
    .local v12, "shiftsCharsValue":Landroid/util/TypedValue;
    sget v13, Lcom/nuance/swype/input/R$attr;->shiftCode:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v12}, Lcom/nuance/swype/input/KeyboardStyle;->getValue(ILandroid/util/TypedValue;)Z

    .line 1136
    iget v13, v12, Landroid/util/TypedValue;->type:I

    const/16 v14, 0x10

    if-eq v13, v14, :cond_b

    iget v13, v12, Landroid/util/TypedValue;->type:I

    const/16 v14, 0x11

    if-ne v13, v14, :cond_15

    .line 1138
    :cond_b
    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    iget v15, v12, Landroid/util/TypedValue;->data:I

    aput v15, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    .line 1139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    .line 1151
    :goto_6
    const/16 v3, 0xfdf

    .line 1152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altText:Ljava/lang/CharSequence;

    if-nez v13, :cond_c

    .line 1153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1155
    :cond_c
    sget v13, Lcom/nuance/swype/input/R$attr;->altCode:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v3}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 1157
    sget v13, Lcom/nuance/swype/input/R$attr;->keyBackground:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 1159
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-static {v8, v0, v1}, Lcom/nuance/swype/input/KeyboardEx;->access$100(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 1160
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-static {v8, v0, v1}, Lcom/nuance/swype/input/KeyboardEx;->access$200(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 1161
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-static {v8, v0, v1}, Lcom/nuance/swype/input/KeyboardEx;->access$300(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardStyle;Landroid/content/res/Resources;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconSize:I

    .line 1163
    sget v13, Lcom/nuance/swype/input/R$attr;->keyTextColor:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 1164
    sget v13, Lcom/nuance/swype/input/R$attr;->candidateComponent:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 1165
    sget v13, Lcom/nuance/swype/input/R$attr;->defaultStrokeCandidateColor:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 1166
    sget v13, Lcom/nuance/swype/input/R$attr;->keyContentBaseline:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14, v15}, Lcom/nuance/swype/input/KeyboardStyle;->getDimensionOrFraction(III)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 1168
    sget v13, Lcom/nuance/swype/input/R$attr;->altTextColor:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 1169
    sget v13, Lcom/nuance/swype/input/R$attr;->tertiaryTextColor:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 1170
    sget v13, Lcom/nuance/swype/input/R$attr;->keyTextColorPressed:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 1171
    sget v13, Lcom/nuance/swype/input/R$attr;->altTextGravity:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 1172
    sget v13, Lcom/nuance/swype/input/R$attr;->altIconGravity:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 1173
    sget v13, Lcom/nuance/swype/input/R$attr;->altIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1174
    sget v13, Lcom/nuance/swype/input/R$attr;->altPreviewIcon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1175
    sget v13, Lcom/nuance/swype/input/R$attr;->keyFontTypeface:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 1176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_d

    .line 1177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1179
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    if-nez v13, :cond_e

    .line 1180
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIconGravity:I

    .line 1183
    :cond_e
    sget v13, Lcom/nuance/swype/input/R$attr;->dependentKey:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(I)I

    move-result v5

    .line 1184
    .local v5, "dependentKeyResId":I
    if-eqz v5, :cond_19

    .line 1185
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    .line 1187
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "array"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 1188
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .local v2, "arr$":[I
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_7
    if-ge v6, v9, :cond_19

    aget v7, v2, v6

    .line 1189
    .local v7, "keyCode":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1032
    .end local v2    # "arr$":[I
    .end local v3    # "codeDefault":I
    .end local v5    # "dependentKeyResId":I
    .end local v6    # "i$":I
    .end local v7    # "keyCode":I
    .end local v9    # "len$":I
    .end local v10    # "level":Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;
    .end local v11    # "multitapCharsValue":Landroid/util/TypedValue;
    .end local v12    # "shiftsCharsValue":Landroid/util/TypedValue;
    :cond_f
    iget v13, v4, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    .line 1033
    iget-object v13, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/nuance/swype/input/KeyboardEx$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    goto/16 :goto_0

    .line 1097
    .restart local v10    # "level":Lcom/nuance/swype/input/KeyboardStyle$StyleLevel;
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1100
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1106
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1115
    .restart local v11    # "multitapCharsValue":Landroid/util/TypedValue;
    :cond_13
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    goto/16 :goto_4

    .line 1125
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 1126
    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    goto/16 :goto_5

    .line 1140
    .restart local v3    # "codeDefault":I
    .restart local v12    # "shiftsCharsValue":Landroid/util/TypedValue;
    :cond_15
    iget v13, v12, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_16

    .line 1141
    iget-object v13, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/nuance/swype/input/KeyboardEx$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    .line 1142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    goto/16 :goto_6

    .line 1144
    :cond_16
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    .line 1145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    if-nez v13, :cond_17

    .line 1146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1148
    :cond_17
    move-object/from16 v0, p0

    iput v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    goto/16 :goto_6

    .line 1192
    .restart local v5    # "dependentKeyResId":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    :cond_19
    sget v13, Lcom/nuance/swype/input/R$attr;->shiftTransition:I

    sget-object v14, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    invoke-virtual {v14}, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->ordinal()I

    move-result v14

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    invoke-static {v13}, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->convert(I)Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    .line 1198
    sget v13, Lcom/nuance/swype/input/R$attr;->keyboardSettings:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v13

    invoke-static {v13}, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->from(I)Ljava/util/EnumSet;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyboardSettings:Ljava/util/EnumSet;

    .line 1199
    sget v13, Lcom/nuance/swype/input/R$attr;->resizeWhenHidden:I

    const/4 v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->resizeWhenHidden:Z

    .line 1200
    sget v13, Lcom/nuance/swype/input/R$attr;->keyGroup:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/KeyboardStyle;->getResourceId(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyGroup:I

    .line 1201
    sget v13, Lcom/nuance/swype/input/R$attr;->keepAltKeyPopup:I

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Lcom/nuance/swype/input/KeyboardStyle;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    .line 1202
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

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->horizontalPadding:I

    .line 780
    iput v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->verticalPadding:I

    .line 878
    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    .line 908
    iput p2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 909
    iput p3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 910
    iput p5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    .line 911
    iput p6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    .line 912
    iput p4, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    .line 914
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 915
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewLabel:Ljava/lang/CharSequence;

    .line 916
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    .line 917
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 918
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 919
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 920
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altPopupResId:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altPopupResId:I

    .line 921
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altText:Ljava/lang/CharSequence;

    .line 923
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->baseline:I

    .line 925
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextSize:I

    .line 926
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextColor:I

    .line 927
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyTextColorPressed:I

    .line 928
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->tertiaryTextColor:I

    .line 929
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altTextGravity:I

    .line 931
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    .line 932
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->resizeWhenHidden:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->resizeWhenHidden:Z

    .line 934
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    .line 936
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 937
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 938
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->immediatePopup:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->immediatePopup:Z

    .line 940
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 941
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->hasMultilineLabel:Z

    .line 942
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    .line 943
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    .line 945
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyboardSettings:Ljava/util/EnumSet;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyboardSettings:Ljava/util/EnumSet;

    .line 947
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 948
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextColor:Landroid/content/res/ColorStateList;

    .line 949
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mComponentKeyTextColor:I

    .line 950
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mDefaultStrokeCandidateColor:I

    .line 951
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 952
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->modeFlags:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->modeFlags:I

    .line 954
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 955
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 956
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharactersSimplified:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharactersSimplified:Ljava/lang/CharSequence;

    .line 957
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupLabel:Ljava/lang/CharSequence;

    .line 958
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 959
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    .line 961
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 962
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 963
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->sticky:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->sticky:Z

    .line 964
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 966
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    .line 967
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 969
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyFontTypeface:I

    .line 970
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    .line 971
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    .line 972
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    .line 973
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 974
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 975
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedPopupResId:I

    .line 976
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftText:Ljava/lang/CharSequence;

    .line 977
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    .line 978
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->supportFullSpaceSplit:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->supportFullSpaceSplit:Z

    .line 979
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    .line 981
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->disableMultitap:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->disableMultitap:Z

    .line 982
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

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 984
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 986
    :cond_1
    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    .line 987
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V
    .locals 1
    .param p1, "parent"    # Lcom/nuance/swype/input/KeyboardEx$Row;

    .prologue
    const/4 v0, 0x0

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->horizontalPadding:I

    .line 780
    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->verticalPadding:I

    .line 878
    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->isAltPopupKept:Z

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->dependentKeys:Ljava/util/List;

    .line 991
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 992
    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 702
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->keyGroup:I

    return v0
.end method

.method protected static parseCSV(Ljava/lang/String;)[I
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1263
    const/4 v1, 0x0

    .line 1264
    .local v1, "count":I
    const/4 v3, 0x0

    .line 1265
    .local v3, "lastIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 1266
    add-int/lit8 v1, v1, 0x1

    .line 1267
    :goto_0
    const-string v7, ","

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 1268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1271
    :cond_0
    new-array v6, v1, [I

    .line 1272
    .local v6, "values":[I
    const/4 v1, 0x0

    .line 1273
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v4, p0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1276
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1279
    .local v5, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1287
    .local v0, "chr":I
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput v0, v6, v1

    move v1, v2

    .line 1289
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 1283
    .end local v0    # "chr":I
    :catch_0
    move-exception v7

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "chr":I
    goto :goto_2

    .line 1290
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

    .line 1327
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return v0

    .line 1330
    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_0

    .line 1333
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public debugString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDrawableState()[I
    .locals 3

    .prologue
    .line 1376
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    if-eqz v2, :cond_1

    .line 1377
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_ON:[I

    .line 1393
    .local v1, "states":[I
    :goto_0
    return-object v1

    .line 1377
    .end local v1    # "states":[I
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_0

    .line 1378
    :cond_1
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    if-eqz v2, :cond_3

    .line 1379
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-eqz v2, :cond_2

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_LOCK:[I

    .restart local v1    # "states":[I
    :goto_1
    goto :goto_0

    .end local v1    # "states":[I
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_LOCK:[I

    goto :goto_1

    .line 1381
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1383
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/UserPreferences;->isHardwareKeyboardEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1384
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    if-eqz v2, :cond_4

    .line 1385
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_ON:[I

    .line 1390
    .restart local v1    # "states":[I
    :goto_2
    goto :goto_0

    .line 1387
    .end local v1    # "states":[I
    :cond_4
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-eqz v2, :cond_5

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_OFF:[I

    .restart local v1    # "states":[I
    :goto_3
    goto :goto_0

    .end local v1    # "states":[I
    :cond_5
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_3

    .line 1390
    :cond_6
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-eqz v2, :cond_7

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_2
.end method

.method public getVisibleBounds()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1402
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/lit8 v1, v1, 0x0

    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/lit8 v2, v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1404
    return-object v0
.end method

.method public hasIconDescription()Z
    .locals 1

    .prologue
    .line 1259
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

    .line 1305
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_4

    move v1, v4

    .line 1306
    .local v1, "leftEdge":Z
    :goto_0
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    move v2, v4

    .line 1307
    .local v2, "rightEdge":Z
    :goto_1
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    move v3, v4

    .line 1308
    .local v3, "topEdge":Z
    :goto_2
    iget v6, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_7

    move v0, v4

    .line 1312
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

    .line 1305
    goto :goto_0

    .restart local v1    # "leftEdge":Z
    :cond_5
    move v2, v5

    .line 1306
    goto :goto_1

    .restart local v2    # "rightEdge":Z
    :cond_6
    move v3, v5

    .line 1307
    goto :goto_2

    .restart local v3    # "topEdge":Z
    :cond_7
    move v0, v5

    .line 1308
    goto :goto_3

    .restart local v0    # "bottomEdge":Z
    :cond_8
    move v4, v5

    .line 1312
    goto :goto_4
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    return v0
.end method

.method public onPressed()V
    .locals 1

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    .line 1221
    return-void

    .line 1220
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

    .line 1242
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    .line 1243
    if-eqz p1, :cond_0

    .line 1244
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    if-eqz v1, :cond_3

    .line 1245
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    .line 1246
    .local v0, "lastLocked":Z
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    .line 1247
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 1252
    .end local v0    # "lastLocked":Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 1242
    goto :goto_0

    .restart local v0    # "lastLocked":Z
    :cond_2
    move v2, v3

    .line 1247
    goto :goto_1

    .line 1248
    .end local v0    # "lastLocked":Z
    :cond_3
    iget-boolean v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->sticky:Z

    if-eqz v1, :cond_0

    .line 1249
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
    .line 1205
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    .line 1206
    return-void

    .line 1205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public squaredDistanceFrom(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1348
    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v0, v2, p1

    .line 1349
    .local v0, "xDist":I
    iget v2, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v3, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v1, v2, p2

    .line 1350
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
    .line 1354
    iget v5, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    .line 1355
    .local v5, "left":I
    iget v8, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int v6, v5, v8

    .line 1356
    .local v6, "right":I
    iget v7, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    .line 1357
    .local v7, "top":I
    iget v8, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int v0, v7, v8

    .line 1358
    .local v0, "bottom":I
    if-ge p1, v5, :cond_0

    move v3, v5

    .line 1359
    .local v3, "edgeX":I
    :goto_0
    if-ge p2, v7, :cond_2

    move v4, v7

    .line 1360
    .local v4, "edgeY":I
    :goto_1
    sub-int v1, p1, v3

    .line 1361
    .local v1, "dx":I
    sub-int v2, p2, v4

    .line 1362
    .local v2, "dy":I
    mul-int v8, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    return v8

    .line 1358
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

    .line 1359
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
    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "code: "

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

    const-string v1, "; rc: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "?"

    goto :goto_0
.end method
