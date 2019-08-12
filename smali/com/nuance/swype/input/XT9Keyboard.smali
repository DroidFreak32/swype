.class public Lcom/nuance/swype/input/XT9Keyboard;
.super Lcom/nuance/swype/input/KeyboardEx;
.source "XT9Keyboard.java"


# static fields
.field public static final SINGLE_ACTIVE_LANGUAGE:I = 0x1

.field public static final XT9KEY_STATE_DISABLED:I = -0x1

.field public static final XT9KEY_STATE_MT_TIMEOUT:I = 0x2

.field public static final XT9KEY_STATE_OFF:I = 0x0

.field public static final XT9KEY_STATE_ON:I = 0x1


# instance fields
.field private abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

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

.field private mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private mXT9Key:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private speechKeyBackup:Lcom/nuance/swype/input/KeyboardEx$Key;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IIZ)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mAltIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx$Row;IILcom/nuance/swype/input/KeyboardStyle;)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/KeyboardEx$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "style"    # Lcom/nuance/swype/input/KeyboardStyle;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xff7

    .line 48
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx$Row;IILcom/nuance/swype/input/KeyboardStyle;)V

    .line 54
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v9

    sparse-switch v1, :sswitch_data_0

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v9

    if-ne v1, v8, :cond_1

    .line 89
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 90
    .local v7, "langKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v9

    if-ne v1, v8, :cond_0

    .line 91
    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 92
    iget-boolean v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    iput-boolean v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 97
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "langKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    iget v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-ne v1, v8, :cond_3

    .line 98
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 99
    .restart local v7    # "langKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-ne v1, v8, :cond_2

    .line 100
    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 101
    iget-boolean v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    iput-boolean v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 108
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "langKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_3
    return-object v0

    .line 57
    :sswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v1, :cond_4

    .line 58
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 61
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 62
    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    iput v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 64
    :cond_4
    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_0

    .line 69
    :sswitch_1
    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mXT9Key:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_0

    .line 74
    :sswitch_2
    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_0

    .line 79
    :sswitch_3
    iput-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mABCKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto/16 :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb7c -> :sswitch_1
        0xfed -> :sswitch_2
        0xfee -> :sswitch_3
    .end sparse-switch
.end method

.method public currentDelimiterKeyLabel()Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 432
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 472
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 473
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mXT9Key:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 474
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 475
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 476
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 477
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 478
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 479
    iput-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->mABCKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 480
    return-void
.end method

.method public setImeOptions(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;ILcom/nuance/swype/input/InputFieldInfo;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p3, "options"    # I
    .param p4, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 113
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 114
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 117
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharactersSimplified:Ljava/lang/CharSequence;

    .line 118
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 119
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "isReturnIcon":Z
    const v2, 0x400000ff    # 2.0000608f

    and-int/2addr v2, p3

    packed-switch v2, :pswitch_data_0

    .line 131
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    sget v4, Lcom/nuance/swype/input/R$bool;->display_return_key_as_emoticon_default:I

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v2

    .line 133
    if-nez v2, :cond_4

    invoke-virtual {p4}, Lcom/nuance/swype/input/InputFieldInfo;->isShortMessageField()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 135
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 136
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const-string v4, ":-)"

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 137
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const-string v4, ":-)"

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 138
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v4, Lcom/nuance/swype/input/R$xml;->popup_smileys_with_return:I

    iput v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 153
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/nuance/swype/input/R$bool;->highlight_action_key:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-nez v1, :cond_6

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    .line 164
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 167
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    .end local v1    # "isReturnIcon":Z
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    sget v3, Lcom/nuance/swype/input/R$xml;->popup_layers:I

    if-ne v2, v3, :cond_2

    .line 175
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v3, Lcom/nuance/swype/input/R$xml;->popup_layers_without_layouts:I

    iput v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mABCKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mABCKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    sget v3, Lcom/nuance/swype/input/R$xml;->popup_layers:I

    if-ne v2, v3, :cond_3

    .line 178
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mABCKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v3, Lcom/nuance/swype/input/R$xml;->popup_layers_without_layouts:I

    iput v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    .line 181
    :cond_3
    return-void

    .line 123
    .restart local v1    # "isReturnIcon":Z
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_search:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 125
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_search_feedback:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 127
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 139
    :cond_4
    invoke-virtual {p4}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 140
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 142
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {p4}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 143
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    .line 144
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 146
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_return:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 147
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 148
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_return_feedback:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 149
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 150
    iget-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mEnterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 151
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 158
    goto/16 :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setLanguageSwitchKey(Lcom/nuance/swype/input/InputMethods$Language;I)Ljava/util/List;
    .locals 13
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

    .line 184
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 185
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 186
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 188
    .local v3, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 189
    .local v5, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v8, v8, v10

    if-eq v8, v12, :cond_1

    iget v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-ne v8, v12, :cond_2

    .line 190
    :cond_1
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_2
    iget-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v8, v8, v10

    const/16 v9, 0xb7b

    if-ne v8, v9, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v8

    if-nez v8, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    .line 194
    .local v4, "inputMethod":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v6

    .line 195
    .local v6, "originalLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v6, :cond_0

    .line 196
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 197
    iput-object v11, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getToggleLanguageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 220
    :cond_3
    :goto_1
    iget-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    goto :goto_0

    .line 199
    :cond_4
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 201
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mQuickSwitchToChineseKeyIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_5

    .line 202
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$drawable;->keyboard_lang_quick_switch_english_to_chinese:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mQuickSwitchToChineseKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 205
    :cond_5
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mQuickSwitchToChineseKeyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 206
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mQuickSwitchToChineseKeyIcon:Landroid/graphics/drawable/Drawable;

    iput-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 208
    sget v8, Lcom/nuance/swype/input/R$attr;->cjkChineseFeedbackToggletoenglish:I

    invoke-virtual {v3, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 209
    iput-object v11, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 212
    :cond_6
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 214
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$drawable;->keyboard_lang_quick_switch_english_to_japanese:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 215
    iget-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 216
    sget v8, Lcom/nuance/swype/input/R$attr;->cjkJapaneseFeedbackToggletoenglish:I

    invoke-virtual {v3, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 218
    iput-object v11, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 225
    .end local v4    # "inputMethod":Lcom/nuance/swype/input/InputMethods;
    .end local v5    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v6    # "originalLang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_7
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    if-eqz p1, :cond_d

    .line 226
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$bool;->hide_globe_label_single_language:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 228
    .local v7, "singleLanguageDisplayHide":Z
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 229
    .restart local v5    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {v3, p2}, Lcom/nuance/swype/input/IMEApplication;->isMultipleEnabledSubtypeAvailable(I)Z

    move-result v8

    if-nez v8, :cond_a

    .line 230
    iput-object v11, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 232
    iput-boolean v10, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 234
    if-eqz v7, :cond_8

    .line 236
    iget-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    .line 237
    iget-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mAltIcon:Landroid/graphics/drawable/Drawable;

    .line 239
    :cond_9
    iput-object v11, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 240
    iput-object v11, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 242
    :cond_a
    iget-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v8, :cond_b

    iget-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v8, v8, v10

    if-ne v8, v12, :cond_b

    .line 244
    iget-object v8, p1, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    iput-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 246
    iput-boolean v10, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 248
    if-eqz v7, :cond_8

    iget-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_8

    .line 249
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 251
    :cond_b
    iget v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-ne v8, v12, :cond_8

    .line 252
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->alwaysShowAltSymbol:Z

    .line 253
    iget-object v8, p1, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    iput-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 255
    iput-boolean v10, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->repeatable:Z

    .line 257
    if-eqz v7, :cond_c

    iget-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_c

    .line 258
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 260
    :cond_c
    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 261
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v8, Lcom/nuance/swype/input/R$attr;->symKeyboardGlobe:I

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 267
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v5    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v7    # "singleLanguageDisplayHide":Z
    :cond_d
    iget-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->languageKeyLabels:Ljava/util/List;

    return-object v8
.end method

.method public setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mXT9Key:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method public updateABCLabel(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 5
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 445
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq p2, v3, :cond_0

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p2, v3, :cond_1

    .line 448
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v3

    if-nez v3, :cond_2

    .line 468
    :cond_1
    :goto_0
    return-void

    .line 452
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/InputMethods;->getNativeLanguageNameForCJK(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "abcKeyLabel":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_3

    .line 454
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 455
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v0, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 460
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 461
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xfee

    if-ne v3, v4, :cond_4

    .line 462
    iput-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 463
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->abcKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v0, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public updateClearKeyLabel(ZZZZZ)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 10
    .param p1, "isClearKey"    # Z
    .param p2, "isKeyPad"    # Z
    .param p3, "isPinyinMode"    # Z
    .param p4, "isModeStroke"    # Z
    .param p5, "isTablet"    # Z

    .prologue
    .line 397
    if-nez p2, :cond_0

    if-eqz p4, :cond_2

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 399
    .local v8, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v0, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x193f

    if-ne v0, v1, :cond_1

    .line 400
    iput-object v8, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 405
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->speechKeyBackup:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_3

    .line 406
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

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    if-eqz p4, :cond_5

    .line 410
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 411
    .local v9, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_6

    .line 412
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, -0x19

    aput v2, v0, v1

    .line 413
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 414
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 415
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v1, Lcom/nuance/swype/input/R$string;->clear_key_keypad:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 423
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0

    .line 417
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, 0x193f

    aput v2, v0, v1

    .line 418
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->speechKeyBackup:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 419
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/swype/input/XT9Keyboard;->speechKeyBackup:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 420
    iget-object v0, p0, Lcom/nuance/swype/input/XT9Keyboard;->mClearSequenceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public updateDelimiterKeyLabel(ZZZZZ)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 9
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

    .line 275
    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    .line 276
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 277
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz p3, :cond_0

    iget-object v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, 0x31

    if-ne v3, v4, :cond_0

    .line 278
    iput-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 297
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_4

    .line 298
    if-eqz p1, :cond_9

    .line 299
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 301
    if-nez p3, :cond_2

    .line 302
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput v8, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    .line 303
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 306
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v8, v3, v5

    .line 307
    if-eqz p3, :cond_3

    if-eqz p3, :cond_4

    if-nez p2, :cond_4

    .line 308
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 310
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 311
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 357
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v3

    .line 283
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 284
    .restart local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-nez p2, :cond_7

    if-eqz p4, :cond_8

    .line 285
    :cond_7
    iget-object v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v5

    if-ne v3, v7, :cond_6

    .line 286
    iput-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_0

    .line 290
    :cond_8
    iget-object v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v5

    if-ne v3, v7, :cond_6

    .line 291
    iput-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_0

    .line 315
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_9
    if-nez p2, :cond_a

    if-eqz p4, :cond_c

    .line 316
    :cond_a
    if-nez p3, :cond_4

    .line 321
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v7, v3, v5

    .line 322
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 324
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_b

    .line 325
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->keyboard_lang_quick_switch_chinese_to_english:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 329
    :cond_b
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 330
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 331
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 332
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v4, Lcom/nuance/swype/input/R$attr;->cjkChineseFeedbackToggletochinese:I

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 333
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 342
    .end local v1    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    :cond_c
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v7, v3, v5

    .line 343
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 344
    .restart local v1    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_d

    .line 345
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->keyboard_lang_quick_switch_chinese_to_english:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 348
    :cond_d
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 349
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKeyIcon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 350
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getCurrentIconLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 351
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v4, Lcom/nuance/swype/input/R$attr;->cjkChineseFeedbackToggletochinese:I

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 352
    iget-object v3, p0, Lcom/nuance/swype/input/XT9Keyboard;->mDelimiterKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_1
.end method

.method public updateSymbolKeyLabel(ZZ)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 8
    .param p1, "isSymbolPage"    # Z
    .param p2, "isNormalTextMode"    # Z

    .prologue
    const/16 v5, 0xfed

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 362
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 363
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v4, v6

    if-ne v4, v5, :cond_0

    .line 365
    iput-object v2, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 369
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v4, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 371
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/nuance/swype/input/XT9Keyboard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 372
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    if-eqz p1, :cond_3

    .line 374
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/16 v5, -0x1a

    aput v5, v4, v6

    .line 375
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 376
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v5, Lcom/nuance/swype/input/R$string;->label_chn_key:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 377
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 388
    .end local v1    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v4

    .line 379
    .restart local v1    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v5, v4, v6

    .line 380
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v5, Lcom/nuance/swype/input/R$string;->label_symbol_key:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 381
    if-eqz p2, :cond_4

    .line 382
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    sget v5, Lcom/nuance/swype/input/R$attr;->symKeyboardLayers:I

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 384
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/XT9Keyboard;->mSymbolReturnKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
