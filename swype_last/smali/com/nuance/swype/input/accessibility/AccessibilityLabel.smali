.class public Lcom/nuance/swype/input/accessibility/AccessibilityLabel;
.super Ljava/lang/Object;
.source "AccessibilityLabel.java"


# static fields
.field private static final MAPPING_ID:I


# instance fields
.field private app:Lcom/nuance/swype/input/IMEApplication;

.field private bNeedCheckForAddCapital:Z

.field private label:Ljava/lang/StringBuilder;

.field private mappingParser:Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

.field private strCapital:Ljava/lang/String;

.field private strPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    sget v0, Lcom/nuance/swype/input/R$xml;->keycode_accessibility_label_mapping:I

    sput v0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->MAPPING_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

    sget v1, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->MAPPING_ID:I

    invoke-direct {v0, p1, v1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->mappingParser:Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->bNeedCheckForAddCapital:Z

    .line 39
    sget v0, Lcom/nuance/swype/input/R$string;->accessibility_label_for_Capital:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->strCapital:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->strPackageName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private createLabelForSymbolsLayer(Lcom/nuance/swype/input/KeyboardEx$Key;Z)V
    .registers 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "isShiftOn"    # Z

    .prologue
    .line 93
    if-eqz p2, :cond_1a

    .line 94
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_10

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getShiftedLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 104
    :goto_f
    return-void

    .line 98
    :cond_10
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 102
    :cond_1a
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_f
.end method

.method private createLabelForTextLayer(Lcom/nuance/swype/input/KeyboardEx$Key;ZZ)V
    .registers 10
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "isShiftOn"    # Z
    .param p3, "isFirstTime"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 113
    if-eqz p3, :cond_c

    if-eqz p2, :cond_c

    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_c

    .line 114
    iput-boolean v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->bNeedCheckForAddCapital:Z

    .line 116
    :cond_c
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    .line 117
    .local v0, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 119
    .local v1, "currentlabel":Ljava/lang/CharSequence;
    iget-boolean v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->bNeedCheckForAddCapital:Z

    if-eqz v2, :cond_4a

    if-eqz v1, :cond_4a

    .line 120
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v4, :cond_4a

    if-eqz v0, :cond_4a

    .line 121
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 122
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 123
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->strCapital:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :goto_47
    iput-boolean v5, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->bNeedCheckForAddCapital:Z

    .line 129
    return-void

    .line 125
    :cond_4a
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_47
.end method

.method private getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 145
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 146
    .local v0, "keyLabel":Ljava/lang/CharSequence;
    if-nez v0, :cond_9

    .line 147
    const-string/jumbo v0, ""

    :cond_7
    move-object v1, v0

    .line 155
    :goto_8
    return-object v1

    .line 149
    :cond_9
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getReplacementLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 150
    .local v1, "replacementLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_7

    goto :goto_8
.end method

.method private getDefaultAccessbilityForKeyCode(Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;ZZ)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "mapping"    # Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    .param p2, "isShiftOn"    # Z
    .param p3, "altLabel"    # Z

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "mappedLabel":Ljava/lang/CharSequence;
    if-eqz p2, :cond_9

    .line 313
    if-eqz p3, :cond_9

    .line 314
    invoke-virtual {p1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getShiftedAltLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 318
    :cond_9
    if-eqz p2, :cond_d

    if-nez v0, :cond_13

    .line 319
    :cond_d
    if-eqz p3, :cond_14

    .line 320
    invoke-virtual {p1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getAltLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 327
    :cond_13
    :goto_13
    return-object v0

    .line 323
    :cond_14
    invoke-virtual {p1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13
.end method

.method private getLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 132
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 133
    .local v0, "keyLabel":Ljava/lang/CharSequence;
    if-nez v0, :cond_9

    .line 134
    const-string/jumbo v0, ""

    :cond_7
    move-object v1, v0

    .line 141
    :goto_8
    return-object v1

    .line 136
    :cond_9
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getReplacementLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 137
    .local v1, "replacementLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_7

    goto :goto_8
.end method

.method private getLabelForEnterKey()Ljava/lang/CharSequence;
    .registers 6

    .prologue
    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, "label":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    if-eqz v3, :cond_29

    .line 274
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 275
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_29

    .line 276
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    .line 277
    .local v1, "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    if-eqz v1, :cond_29

    .line 278
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isShortMessageField()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 279
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->accessibility_label_for_emoticons_smiley_key_long:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    .end local v0    # "ime":Lcom/nuance/swype/input/IME;
    .end local v1    # "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    :cond_29
    :goto_29
    return-object v2

    .line 282
    .restart local v0    # "ime":Lcom/nuance/swype/input/IME;
    .restart local v1    # "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    :cond_2a
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_29
.end method

.method private getLabelForSwypeKey()Ljava/lang/CharSequence;
    .registers 7

    .prologue
    .line 291
    const/4 v2, 0x0

    .line 292
    .local v2, "label":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    if-eqz v4, :cond_3d

    .line 293
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v3

    .line 294
    .local v3, "util":Lcom/nuance/swype/input/PlatformUtil;
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 295
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 296
    .local v1, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v3, :cond_3d

    if-eqz v0, :cond_3d

    if-eqz v1, :cond_3d

    .line 297
    invoke-static {v0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/BuildInfo;->isGoogleTrialBuild()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v3}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-static {v0}, Lcom/nuance/swype/service/impl/AccountUtil;->deviceHasGoogleAccount(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 298
    :cond_33
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->store_my_themes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "ime":Lcom/nuance/swype/input/IME;
    .end local v3    # "util":Lcom/nuance/swype/input/PlatformUtil;
    :cond_3d
    :goto_3d
    return-object v2

    .line 299
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "ime":Lcom/nuance/swype/input/IME;
    .restart local v3    # "util":Lcom/nuance/swype/input/PlatformUtil;
    :cond_3e
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 300
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->swype_store:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d
.end method

.method private getReplacementLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "keyLabel"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 175
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v7, :cond_62

    .line 176
    iget-object v5, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    .line 177
    .local v2, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v2, :cond_62

    .line 179
    iget-boolean v5, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->bNeedCheckForAddCapital:Z

    if-eqz v5, :cond_5d

    .line 180
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 185
    .local v0, "code":I
    :goto_20
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "CharName_0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "%04x"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "strId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "string"

    iget-object v7, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->strPackageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, "id":I
    if-eqz v1, :cond_62

    .line 188
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "label_from_res":Ljava/lang/String;
    if-eqz v3, :cond_62

    .line 195
    .end local v0    # "code":I
    .end local v1    # "id":I
    .end local v2    # "ime":Lcom/nuance/swype/input/IME;
    .end local v3    # "label_from_res":Ljava/lang/String;
    .end local v4    # "strId":Ljava/lang/String;
    :goto_5c
    return-object v3

    .line 182
    .restart local v2    # "ime":Lcom/nuance/swype/input/IME;
    :cond_5d
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0    # "code":I
    goto :goto_20

    .line 195
    .end local v0    # "code":I
    .end local v2    # "ime":Lcom/nuance/swype/input/IME;
    :cond_62
    const/4 v3, 0x0

    goto :goto_5c
.end method

.method private getShiftedLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 159
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 160
    .local v0, "keyLabel":Ljava/lang/CharSequence;
    if-nez v0, :cond_9

    .line 161
    const-string/jumbo v0, ""

    :cond_7
    move-object v1, v0

    .line 169
    :goto_8
    return-object v1

    .line 163
    :cond_9
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getReplacementLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 164
    .local v1, "replacementLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_7

    goto :goto_8
.end method


# virtual methods
.method public getAccessibilityAltLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityLabel(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p4, "checkCaps"    # Z

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 56
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->accessibilityLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_18

    .line 57
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->accessibilityLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 84
    :goto_11
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 59
    :cond_18
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq p2, v2, :cond_1d

    const/4 v0, 0x1

    .line 62
    .local v0, "isShiftOn":Z
    :cond_1d
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 63
    .local v1, "overiddenLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_29

    .line 64
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 67
    :cond_29
    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityLabel$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    invoke-virtual {p3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_46

    .line 78
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 70
    :pswitch_3e
    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->createLabelForSymbolsLayer(Lcom/nuance/swype/input/KeyboardEx$Key;Z)V

    goto :goto_11

    .line 73
    :pswitch_42
    invoke-direct {p0, p1, v0, p4}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->createLabelForTextLayer(Lcom/nuance/swype/input/KeyboardEx$Key;ZZ)V

    goto :goto_11

    .line 67
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3e
        :pswitch_42
    .end packed-switch
.end method

.method public getAccessibilityLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p4, "altLabel"    # Z

    .prologue
    const/4 v5, 0x0

    .line 214
    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v6, v6

    if-lez v6, :cond_15

    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v5

    const/16 v7, 0xa

    if-ne v6, v7, :cond_15

    .line 215
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLabelForEnterKey()Ljava/lang/CharSequence;

    move-result-object v0

    .line 216
    .local v0, "enterLabel":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2b

    .line 268
    .end local v0    # "enterLabel":Ljava/lang/CharSequence;
    :goto_14
    return-object v0

    .line 219
    :cond_15
    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v6, v6

    if-lez v6, :cond_2b

    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v5

    const v7, 0xaa37

    if-ne v6, v7, :cond_2b

    .line 220
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLabelForSwypeKey()Ljava/lang/CharSequence;

    move-result-object v4

    .line 221
    .local v4, "swypeLabel":Ljava/lang/CharSequence;
    if-eqz v4, :cond_2b

    move-object v0, v4

    .line 222
    goto :goto_14

    .line 225
    .end local v4    # "swypeLabel":Ljava/lang/CharSequence;
    :cond_2b
    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq p2, v6, :cond_5d

    const/4 v1, 0x1

    .line 226
    .local v1, "isShiftOn":Z
    :goto_30
    const/4 v2, 0x0

    .line 227
    .local v2, "mappedLabel":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->mappingParser:Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

    if-eqz v6, :cond_5b

    .line 228
    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v6, v6

    if-lez v6, :cond_5b

    .line 229
    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->mappingParser:Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v7, v5

    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;->getAccessibilityMapping(I)Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;

    move-result-object v3

    .line 230
    .local v3, "mapping":Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    if-eqz v3, :cond_5b

    .line 231
    sget-object v5, Lcom/nuance/swype/input/accessibility/AccessibilityLabel$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    invoke-virtual {p3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_92

    .line 256
    invoke-direct {p0, v3, v1, p4}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getDefaultAccessbilityForKeyCode(Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;ZZ)Ljava/lang/CharSequence;

    move-result-object v2

    .line 261
    :goto_55
    if-nez v2, :cond_5b

    .line 262
    invoke-direct {p0, v3, v1, p4}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getDefaultAccessbilityForKeyCode(Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;ZZ)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v3    # "mapping":Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    :cond_5b
    move-object v0, v2

    .line 268
    goto :goto_14

    .end local v1    # "isShiftOn":Z
    .end local v2    # "mappedLabel":Ljava/lang/CharSequence;
    :cond_5d
    move v1, v5

    .line 225
    goto :goto_30

    .line 233
    .restart local v1    # "isShiftOn":Z
    .restart local v2    # "mappedLabel":Ljava/lang/CharSequence;
    .restart local v3    # "mapping":Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    :pswitch_5f
    if-eqz v1, :cond_66

    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnSymbols()Ljava/lang/CharSequence;

    move-result-object v2

    .line 234
    :goto_65
    goto :goto_55

    .line 233
    :cond_66
    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnSymbolsShifted()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_65

    .line 236
    :pswitch_6b
    sget-object v5, Lcom/nuance/swype/input/accessibility/AccessibilityLabel$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_9c

    goto :goto_55

    .line 238
    :pswitch_77
    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnTextShiftedCap()Ljava/lang/CharSequence;

    move-result-object v2

    .line 239
    goto :goto_55

    .line 241
    :pswitch_7c
    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnTextShiftedAllCap()Ljava/lang/CharSequence;

    move-result-object v2

    .line 242
    goto :goto_55

    .line 244
    :pswitch_81
    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnTextShiftedLowerCase()Ljava/lang/CharSequence;

    move-result-object v2

    .line 245
    goto :goto_55

    .line 251
    :pswitch_86
    if-eqz v1, :cond_8d

    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLableOnPhone()Ljava/lang/CharSequence;

    move-result-object v2

    .line 252
    :goto_8c
    goto :goto_55

    .line 251
    :cond_8d
    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLableOnShiftedPhone()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_8c

    .line 231
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_86
        :pswitch_6b
    .end packed-switch

    .line 236
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_77
        :pswitch_7c
        :pswitch_81
    .end packed-switch
.end method

.method public getAltAccessibilityLabel(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 332
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityAltLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 336
    .local v1, "overiddenLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1e

    .line 337
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 343
    :goto_17
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 340
    :cond_1e
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 341
    .local v0, "altLabel":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_17
.end method

.method public getLongPressAccessibilityLabelForShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p2, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "mappedLabel":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->mappingParser:Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

    const/16 v3, 0xfe4

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;->getAccessibilityMapping(I)Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;

    move-result-object v1

    .line 350
    .local v1, "mapping":Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    if-eqz v1, :cond_16

    .line 351
    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityLabel$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_28

    .line 365
    :cond_16
    :goto_16
    return-object v0

    .line 353
    :pswitch_17
    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityLabel$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2e

    goto :goto_16

    .line 355
    :pswitch_23
    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnTextShiftedAllCap()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_16

    .line 351
    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_17
    .end packed-switch

    .line 353
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method
