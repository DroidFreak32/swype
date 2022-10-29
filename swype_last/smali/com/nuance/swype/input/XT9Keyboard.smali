.class public Lcom/nuance/swype/input/XT9Keyboard;
.super Lcom/nuance/swype/input/KeyboardEx;
.source "XT9Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;
    }
.end annotation


# static fields
.field public static final XT9KEY_STATE_DISABLED:I = -0x1

.field public static final XT9KEY_STATE_MT_TIMEOUT:I = 0x2

.field public static final XT9KEY_STATE_OFF:I = 0x0

.field public static final XT9KEY_STATE_ON:I = 0x1


# instance fields
.field private abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private enterKeyLabel:Ljava/lang/String;

.field private languageKeyLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mABCKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private mAltIcon:Landroid/graphics/drawable/Drawable;

.field private mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

.field private mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private mQuickSwitchToChineseKeyIcon:Landroid/graphics/drawable/Drawable;

.field private mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private mXT9Key:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private speechKeyBackup:Lcom/nuance/swype/input/KeyboardEx$Key;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 35
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZZ)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mAltIcon:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method

.method private configureMessagingReturnKey(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .registers 10
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p3, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 113
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getKeyboardSettings()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq p3, v1, :cond_1f

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p3, v1, :cond_b6

    .line 117
    :cond_1f
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->isShortMessageField()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 118
    sget v1, Lcom/nuance/swype/input/R$attr;->emojiIconKeyFunction:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 119
    sget v1, Lcom/nuance/swype/input/R$attr;->emojiIconPopupKeypress:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 120
    iput-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 121
    sget-object v1, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->EMOJI:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->enterKeyLabel:Ljava/lang/String;

    .line 122
    iput-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 123
    sget v1, Lcom/nuance/swype/input/R$attr;->symKeyboardReturnSecondary:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 124
    new-array v1, v5, [I

    const/16 v2, 0xfea

    aput v2, v1, v4

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 125
    sget v1, Lcom/nuance/swype/input/R$xml;->popup_smileys_with_return:I

    iput v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 161
    :goto_55
    return-void

    .line 127
    :cond_56
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 128
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->enterKeyLabel:Ljava/lang/String;

    .line 130
    iput-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 131
    iput-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 141
    :goto_70
    sget v1, Lcom/nuance/swype/input/R$attr;->emojiIconKeySecondary:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 142
    new-array v1, v5, [I

    const/16 v2, 0xa

    aput v2, v1, v4

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .line 143
    sget v1, Lcom/nuance/swype/input/R$xml;->popup_messaging_return_key:I

    iput v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    goto :goto_55

    .line 133
    :cond_85
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_return:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 134
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 135
    sget v1, Lcom/nuance/swype/input/R$attr;->symKeyboardFeedbackReturn:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 136
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 137
    iput-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 138
    sget-object v1, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->RETURN:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->enterKeyLabel:Ljava/lang/String;

    goto :goto_70

    .line 147
    :cond_b6
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_d1

    .line 148
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 149
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->enterKeyLabel:Ljava/lang/String;

    .line 150
    iput-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 151
    iput-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_55

    .line 153
    :cond_d1
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_return:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 155
    sget v1, Lcom/nuance/swype/input/R$attr;->symKeyboardFeedbackReturn:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 156
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 157
    iput-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 158
    sget-object v1, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->RETURN:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->enterKeyLabel:Ljava/lang/String;

    goto/16 :goto_55
.end method

.method private setReturnAltEmoji(Lcom/nuance/swype/input/IMEApplication;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .registers 5
    .param p1, "app"    # Lcom/nuance/swype/input/IMEApplication;
    .param p2, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 164
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq p2, v0, :cond_8

    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p2, v0, :cond_18

    .line 166
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v1, Lcom/nuance/swype/input/R$attr;->emojiIconKeySecondary:I

    invoke-virtual {p1, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v1, Lcom/nuance/swype/input/R$xml;->popup_messaging_return_key:I

    iput v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 169
    :cond_18
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx$Row;IILcom/nuance/swype/input/KeyboardStyle;)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 15
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "style"    # Lcom/nuance/swype/input/KeyboardStyle;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xff7

    .line 46
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx$Row;IILcom/nuance/swype/input/KeyboardStyle;)V

    .line 52
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v8

    sparse-switch v1, :sswitch_data_98

    .line 85
    :goto_14
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    .line 86
    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v8

    if-ne v1, v7, :cond_46

    .line 87
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 88
    .local v6, "langKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v2, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v8

    if-ne v2, v7, :cond_2c

    .line 89
    iget-object v1, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 90
    iget-boolean v1, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    iput-boolean v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 95
    .end local v6    # "langKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_46
    iget v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-ne v1, v7, :cond_68

    .line 96
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 97
    .restart local v6    # "langKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v2, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-ne v2, v7, :cond_50

    .line 98
    iget-object v1, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 99
    iget-boolean v1, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    iput-boolean v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 106
    .end local v6    # "langKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_68
    return-object v0

    .line 55
    :sswitch_69
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v1, :cond_8b

    .line 56
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 59
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 60
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    iput v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 62
    :cond_8b
    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_14

    .line 67
    :sswitch_8e
    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mXT9Key:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_14

    .line 72
    :sswitch_91
    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_14

    .line 77
    :sswitch_94
    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mABCKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto/16 :goto_14

    .line 52
    :sswitch_data_98
    .sparse-switch
        0xa -> :sswitch_69
        0xb7c -> :sswitch_8e
        0xfed -> :sswitch_91
        0xfee -> :sswitch_94
    .end sparse-switch
.end method

.method public currentDelimiterKeyLabel()Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_7

    .line 465
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 467
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public destroyKeyboard()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 506
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 507
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 508
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mXT9Key:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 509
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 510
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 511
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 512
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 513
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mABCKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 514
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->background:Landroid/graphics/drawable/Drawable;

    .line 515
    return-void
.end method

.method public setImeOptions(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;ILcom/nuance/swype/input/InputFieldInfo;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p3, "options"    # I
    .param p4, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 173
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 174
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v2, :cond_9c

    .line 176
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 177
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharactersSimplified:Ljava/lang/CharSequence;

    .line 178
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 179
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 180
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 181
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 182
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 184
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "isReturnIcon":Z
    const v2, 0x400000ff    # 2.0000608f

    and-int/2addr v2, p3

    packed-switch v2, :pswitch_data_19c

    .line 197
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    sget v5, Lcom/nuance/swype/input/R$bool;->display_return_key_as_emoticon_default:I

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v2

    .line 200
    if-nez v2, :cond_133

    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_133

    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v2

    if-nez v2, :cond_133

    .line 201
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-direct {p0, v2, p4, p2}, Lcom/nuance/swype/input/XT9Keyboard;->configureMessagingReturnKey(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 220
    :goto_60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/nuance/swype/input/R$bool;->highlight_action_key:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 221
    iget-object v5, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-nez v1, :cond_198

    move v2, v3

    :goto_71
    iput-boolean v2, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 225
    :cond_73
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v5, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    .line 227
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 230
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9c

    .line 231
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v6, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 231
    invoke-virtual {v2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    .end local v1    # "isReturnIcon":Z
    :cond_9c
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_d8

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isDeviceExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 238
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v2, :cond_c6

    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    sget v5, Lcom/nuance/swype/input/R$xml;->popup_layers:I

    if-eq v2, v5, :cond_c0

    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    sget v5, Lcom/nuance/swype/input/R$xml;->popup_layers_stroke:I

    if-ne v2, v5, :cond_c6

    .line 240
    :cond_c0
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v5, Lcom/nuance/swype/input/R$xml;->popup_layers_without_layouts:I

    iput v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 243
    :cond_c6
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mABCKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v2, :cond_d8

    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mABCKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    sget v5, Lcom/nuance/swype/input/R$xml;->popup_layers:I

    if-ne v2, v5, :cond_d8

    .line 244
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mABCKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v5, Lcom/nuance/swype/input/R$xml;->popup_layers_without_layouts:I

    iput v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 247
    :cond_d8
    sget-object v2, Lcom/nuance/swype/input/XT9Keyboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Return Key Label="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/input/XT9Keyboard;->enterKeyLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 248
    return-void

    .line 188
    .restart local v1    # "isReturnIcon":Z
    :pswitch_f4
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_search:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 190
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_search_feedback:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 191
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 192
    sget-object v2, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->SEARCH:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->enterKeyLabel:Ljava/lang/String;

    .line 193
    invoke-direct {p0, v0, p2}, Lcom/nuance/swype/input/XT9Keyboard;->setReturnAltEmoji(Lcom/nuance/swype/input/IMEApplication;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto/16 :goto_60

    .line 202
    :cond_133
    invoke-virtual {p4}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_158

    .line 203
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {p4}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 204
    invoke-virtual {p4}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->enterKeyLabel:Ljava/lang/String;

    .line 205
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v5, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    .line 206
    invoke-direct {p0, v0, p2}, Lcom/nuance/swype/input/XT9Keyboard;->setReturnAltEmoji(Lcom/nuance/swype/input/IMEApplication;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto/16 :goto_60

    .line 208
    :cond_158
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_return:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 209
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 210
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_return_feedback:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 211
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 212
    sget-object v2, Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;->RETURN:Lcom/nuance/swype/input/XT9Keyboard$EnterKeyLabel;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->enterKeyLabel:Ljava/lang/String;

    .line 213
    invoke-direct {p0, v0, p2}, Lcom/nuance/swype/input/XT9Keyboard;->setReturnAltEmoji(Lcom/nuance/swype/input/IMEApplication;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 214
    const/4 v1, 0x1

    goto/16 :goto_60

    :cond_198
    move v2, v4

    .line 221
    goto/16 :goto_71

    .line 186
    nop

    :pswitch_data_19c
    .packed-switch 0x3
        :pswitch_f4
    .end packed-switch
.end method

.method public setLanguageSwitchKey(Lcom/nuance/swype/input/InputMethods$Language;I)Ljava/util/List;
    .registers 16
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "enabledLanguageCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0xff7

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 251
    iget-object v7, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 252
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 253
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 255
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    iget-object v7, p0, Lcom/nuance/swype/input/XT9Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_17
    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 256
    .local v4, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v8, v8, v10

    if-eq v8, v12, :cond_2d

    iget v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-ne v8, v12, :cond_32

    .line 257
    :cond_2d
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_32
    iget-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v8, v8, v10

    const/16 v9, 0xb7b

    if-ne v8, v9, :cond_17

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v8

    if-nez v8, :cond_17

    .line 260
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    .line 261
    .local v3, "inputMethod":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    .line 262
    .local v5, "originalLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v5, :cond_17

    .line 263
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v8

    if-eqz v8, :cond_61

    .line 264
    iput-object v11, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getToggleLanguageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 287
    :cond_5c
    :goto_5c
    iget-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    goto :goto_17

    .line 266
    :cond_61
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v8

    if-eqz v8, :cond_93

    .line 268
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mQuickSwitchToChineseKeyIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_77

    .line 269
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_chinese_toggle_english:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mQuickSwitchToChineseKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 272
    :cond_77
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mQuickSwitchToChineseKeyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5c

    .line 273
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mQuickSwitchToChineseKeyIcon:Landroid/graphics/drawable/Drawable;

    iput-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 274
    iget-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 275
    sget v8, Lcom/nuance/swype/input/R$attr;->cjkChineseFeedbackToggleEnglish:I

    invoke-virtual {v2, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 276
    iput-object v11, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_5c

    .line 279
    :cond_93
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 281
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_japanese_toggle_english:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 282
    iget-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 283
    sget v8, Lcom/nuance/swype/input/R$attr;->cjkJapaneseFeedbackToggleEnglish:I

    invoke-virtual {v2, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 285
    iput-object v11, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_5c

    .line 292
    .end local v3    # "inputMethod":Lcom/nuance/swype/input/InputMethods;
    .end local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v5    # "originalLang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_b9
    iget-object v7, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_137

    if-eqz p1, :cond_137

    .line 293
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$bool;->hide_globe_label_single_language:I

    .line 294
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 295
    .local v6, "singleLanguageDisplayHide":Z
    iget-object v7, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d3
    :goto_d3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_137

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 296
    .restart local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/IMEApplication;->isMultipleEnabledSubtypeAvailable(I)Z

    move-result v8

    if-nez v8, :cond_f8

    .line 297
    iput-object v11, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 299
    iput-boolean v10, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 301
    if-eqz v6, :cond_d3

    .line 303
    iget-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_f3

    .line 304
    iget-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mAltIcon:Landroid/graphics/drawable/Drawable;

    .line 306
    :cond_f3
    iput-object v11, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 307
    iput-object v11, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    goto :goto_d3

    .line 309
    :cond_f8
    iget-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v8, :cond_113

    iget-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v8, v8, v10

    if-ne v8, v12, :cond_113

    .line 311
    iget-object v8, p1, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    iput-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 313
    iput-boolean v10, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 315
    if-eqz v6, :cond_d3

    iget-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_d3

    .line 316
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_d3

    .line 318
    :cond_113
    iget v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-ne v8, v12, :cond_d3

    .line 319
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    .line 320
    iget-object v8, p1, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    iput-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 322
    iput-boolean v10, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 324
    if-eqz v6, :cond_12a

    iget-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_12a

    .line 325
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 327
    :cond_12a
    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 328
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v8, Lcom/nuance/swype/input/R$attr;->symKeyboardGlobe:I

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_d3

    .line 334
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v6    # "singleLanguageDisplayHide":Z
    :cond_137
    iget-object v7, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    return-object v7
.end method

.method public setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mXT9Key:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method public updateABCLabel(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .registers 8
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 480
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq p2, v2, :cond_8

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p2, v2, :cond_10

    .line 483
    :cond_8
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v2

    if-nez v2, :cond_11

    .line 503
    :cond_10
    :goto_10
    return-void

    .line 487
    :cond_11
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/InputMethods;->getNativeLanguageNameForCJK(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "abcKeyLabel":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v2, :cond_32

    .line 489
    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 490
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v0, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_10

    .line 495
    :cond_32
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 496
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xfee

    if-ne v3, v4, :cond_38

    .line 497
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 498
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v0, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_10
.end method

.method public updateClearKeyLabel(ZZZZZ)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 15
    .param p1, "isClearKey"    # Z
    .param p2, "isKeyPad"    # Z
    .param p3, "isPinyinMode"    # Z
    .param p4, "isModeStroke"    # Z
    .param p5, "isTablet"    # Z

    .prologue
    .line 432
    if-nez p2, :cond_4

    if-eqz p4, :cond_21

    .line 433
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 434
    .local v7, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x193f

    if-ne v1, v2, :cond_a

    .line 435
    iput-object v7, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 440
    .end local v7    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_21
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->speechKeyBackup:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_46

    .line 441
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    iget-object v5, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    iget-object v6, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Lcom/nuance/swype/input/KeyboardEx$Key;IIIII)V

    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->speechKeyBackup:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 444
    :cond_46
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_75

    if-nez p2, :cond_4e

    if-eqz p4, :cond_75

    .line 445
    :cond_4e
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 446
    .local v8, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_78

    .line 447
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, 0xfe1

    aput v2, v0, v1

    .line 448
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 449
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 450
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v1, Lcom/nuance/swype/input/R$string;->clear_key_keypad:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 458
    .end local v8    # "res":Landroid/content/res/Resources;
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0

    .line 452
    .restart local v8    # "res":Landroid/content/res/Resources;
    :cond_78
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, 0x193f

    aput v2, v0, v1

    .line 453
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->speechKeyBackup:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 454
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->speechKeyBackup:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 455
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_75
.end method

.method public updateDelimiterKeyLabel(ZZZZZ)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 15
    .param p1, "isDelimiter"    # Z
    .param p2, "isKeyPad"    # Z
    .param p3, "isPinyinMode"    # Z
    .param p4, "isStrokeMode"    # Z
    .param p5, "isTablet"    # Z

    .prologue
    const/16 v8, 0x27

    const/16 v7, 0xb7b

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 342
    if-eqz p3, :cond_62

    if-eqz p2, :cond_62

    .line 343
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 344
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz p3, :cond_10

    iget-object v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v3, :cond_10

    iget-object v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, 0x31

    if-ne v3, v4, :cond_10

    .line 345
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 364
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v2, :cond_5f

    .line 365
    if-eqz p1, :cond_8a

    .line 366
    if-eqz p2, :cond_44

    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_44

    .line 368
    if-nez p3, :cond_44

    .line 369
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput v8, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 370
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 373
    :cond_44
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v8, v2, v5

    .line 374
    if-eqz p3, :cond_50

    if-eqz p3, :cond_5f

    if-nez p2, :cond_5f

    .line 376
    :cond_50
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 377
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 378
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const-string/jumbo v3, "\'"

    iput-object v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 424
    :cond_5f
    :goto_5f
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v2

    .line 350
    :cond_62
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 351
    .restart local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-nez p2, :cond_78

    if-eqz p4, :cond_81

    .line 352
    :cond_78
    iget-object v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v5

    if-ne v3, v7, :cond_68

    .line 353
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_2c

    .line 357
    :cond_81
    iget-object v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v5

    if-ne v3, v7, :cond_68

    .line 358
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_2c

    .line 382
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_8a
    if-nez p2, :cond_8e

    if-eqz p4, :cond_d2

    .line 383
    :cond_8e
    if-nez p3, :cond_5f

    .line 388
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v7, v2, v5

    .line 389
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 391
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_ae

    .line 392
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_chinese_toggle_chinese:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 396
    :cond_ae
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5f

    .line 397
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 398
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 399
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v3, Lcom/nuance/swype/input/R$attr;->cjkChineseFeedbackToggleChinese:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 400
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_5f

    .line 409
    .end local v0    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :cond_d2
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v7, v2, v5

    .line 410
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 411
    .restart local v0    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_f0

    .line 412
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_chinese_toggle_chinese:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 415
    :cond_f0
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5f

    .line 416
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 417
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 418
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v3, Lcom/nuance/swype/input/R$attr;->cjkChineseFeedbackToggleChinese:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 419
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_5f
.end method
