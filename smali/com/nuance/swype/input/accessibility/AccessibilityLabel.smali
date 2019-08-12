.class public Lcom/nuance/swype/input/accessibility/AccessibilityLabel;
.super Ljava/lang/Object;
.source "AccessibilityLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/accessibility/AccessibilityLabel$1;
    }
.end annotation


# static fields
.field private static final MAPPING_ID:I


# instance fields
.field private app:Lcom/nuance/swype/input/IMEApplication;

.field private bNeedCheckForAddCapital:Z

.field private charUtils:Lcom/nuance/swype/util/CharacterUtilities;

.field private label:Ljava/lang/StringBuilder;

.field private mappingParser:Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

.field private strCapital:Ljava/lang/String;

.field private strPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/nuance/swype/input/R$xml;->keycode_accessibility_label_mapping:I

    sput v0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->MAPPING_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    .line 34
    new-instance v0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

    sget v1, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->MAPPING_ID:I

    invoke-direct {v0, p1, v1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->mappingParser:Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->bNeedCheckForAddCapital:Z

    .line 36
    sget v0, Lcom/nuance/swype/input/R$string;->accessibility_label_for_Capital:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->strCapital:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->strPackageName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private createLabelForSymbolsLayer(Lcom/nuance/swype/input/KeyboardEx$Key;Z)V
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "isShiftOn"    # Z

    .prologue
    .line 90
    if-eqz p2, :cond_1

    .line 91
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getShiftedLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private createLabelForTextLayer(Lcom/nuance/swype/input/KeyboardEx$Key;ZZ)V
    .locals 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "isShiftOn"    # Z
    .param p3, "isFirstTime"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 110
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 111
    iput-boolean v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->bNeedCheckForAddCapital:Z

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 114
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 116
    .local v0, "currentlabel":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->bNeedCheckForAddCapital:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->strCapital:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_0
    iput-boolean v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->bNeedCheckForAddCapital:Z

    .line 126
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 142
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 143
    .local v0, "keyLabel":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 144
    const-string v0, ""

    :cond_0
    move-object v1, v0

    .line 152
    :goto_0
    return-object v1

    .line 146
    :cond_1
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getReplacementLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 147
    .local v1, "replacementLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private getDefaultAccessbilityForKeyCode(Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;ZZ)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "mapping"    # Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    .param p2, "isShiftOn"    # Z
    .param p3, "altLabel"    # Z

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "mappedLabel":Ljava/lang/CharSequence;
    if-eqz p2, :cond_0

    .line 286
    if-eqz p3, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getShiftedAltLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 291
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_2

    .line 292
    :cond_1
    if-eqz p3, :cond_3

    .line 293
    invoke-virtual {p1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getAltLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 300
    :cond_2
    :goto_0
    return-object v0

    .line 296
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private getLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 129
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 130
    .local v0, "keyLabel":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 131
    const-string v0, ""

    :cond_0
    move-object v1, v0

    .line 138
    :goto_0
    return-object v1

    .line 133
    :cond_1
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getReplacementLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 134
    .local v1, "replacementLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private getLabelForEnterKey()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, "label":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    if-eqz v3, :cond_0

    .line 266
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 267
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    .line 269
    .local v1, "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isShortMessageField()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->accessibility_label_for_emoticons_smiley_key_long:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    .end local v0    # "ime":Lcom/nuance/swype/input/IME;
    .end local v1    # "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 274
    .restart local v0    # "ime":Lcom/nuance/swype/input/IME;
    .restart local v1    # "inputFieldInfo":Lcom/nuance/swype/input/InputFieldInfo;
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private getReplacementLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "keyLabel"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 173
    iget-object v5, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    .line 174
    .local v2, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v2, :cond_1

    .line 176
    iget-boolean v5, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->bNeedCheckForAddCapital:Z

    if-eqz v5, :cond_0

    .line 177
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 182
    .local v0, "code":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CharName_0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%04x"

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

    .line 183
    .local v4, "strId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "string"

    iget-object v7, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->strPackageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, "id":I
    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "label_from_res":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 192
    .end local v0    # "code":I
    .end local v1    # "id":I
    .end local v2    # "ime":Lcom/nuance/swype/input/IME;
    .end local v3    # "label_from_res":Ljava/lang/String;
    .end local v4    # "strId":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 179
    .restart local v2    # "ime":Lcom/nuance/swype/input/IME;
    :cond_0
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0    # "code":I
    goto :goto_0

    .line 192
    .end local v0    # "code":I
    .end local v2    # "ime":Lcom/nuance/swype/input/IME;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getShiftedLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 156
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    .line 157
    .local v0, "keyLabel":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 158
    const-string v0, ""

    :cond_0
    move-object v1, v0

    .line 166
    :goto_0
    return-object v1

    .line 160
    :cond_1
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getReplacementLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 161
    .local v1, "replacementLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public getAccessibilityAltLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityLabel(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p4, "checkCaps"    # Z

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 53
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->accessibilityLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->accessibilityLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 56
    :cond_0
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq p2, v2, :cond_1

    const/4 v0, 0x1

    .line 59
    .local v0, "isShiftOn":Z
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 60
    .local v1, "overiddenLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 61
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_2
    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityLabel$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    invoke-virtual {p3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 75
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 67
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->createLabelForSymbolsLayer(Lcom/nuance/swype/input/KeyboardEx$Key;Z)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-direct {p0, p1, v0, p4}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->createLabelForTextLayer(Lcom/nuance/swype/input/KeyboardEx$Key;ZZ)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p4, "altLabel"    # Z

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v5, v5

    if-lez v5, :cond_0

    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v4

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLabelForEnterKey()Ljava/lang/CharSequence;

    move-result-object v0

    .line 213
    .local v0, "enterLabel":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 260
    .end local v0    # "enterLabel":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 217
    :cond_0
    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq p2, v5, :cond_2

    const/4 v1, 0x1

    .line 218
    .local v1, "isShiftOn":Z
    :goto_1
    const/4 v2, 0x0

    .line 219
    .local v2, "mappedLabel":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->mappingParser:Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

    if-eqz v5, :cond_1

    .line 220
    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v5, v5

    if-lez v5, :cond_1

    .line 221
    iget-object v5, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->mappingParser:Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v6, v4

    invoke-virtual {v5, v4}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;->getAccessibilityMapping(I)Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;

    move-result-object v3

    .line 222
    .local v3, "mapping":Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    if-eqz v3, :cond_1

    .line 223
    sget-object v4, Lcom/nuance/swype/input/accessibility/AccessibilityLabel$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    invoke-virtual {p3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 248
    invoke-direct {p0, v3, v1, p4}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getDefaultAccessbilityForKeyCode(Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;ZZ)Ljava/lang/CharSequence;

    move-result-object v2

    .line 253
    :goto_2
    if-nez v2, :cond_1

    .line 254
    invoke-direct {p0, v3, v1, p4}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getDefaultAccessbilityForKeyCode(Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;ZZ)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v3    # "mapping":Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    :cond_1
    move-object v0, v2

    .line 260
    goto :goto_0

    .end local v1    # "isShiftOn":Z
    .end local v2    # "mappedLabel":Ljava/lang/CharSequence;
    :cond_2
    move v1, v4

    .line 217
    goto :goto_1

    .line 225
    .restart local v1    # "isShiftOn":Z
    .restart local v2    # "mappedLabel":Ljava/lang/CharSequence;
    .restart local v3    # "mapping":Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    :pswitch_0
    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnSymbols()Ljava/lang/CharSequence;

    move-result-object v2

    .line 226
    :goto_3
    goto :goto_2

    .line 225
    :cond_3
    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnSymbolsShifted()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    .line 228
    :pswitch_1
    sget-object v4, Lcom/nuance/swype/input/accessibility/AccessibilityLabel$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_2

    .line 230
    :pswitch_2
    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnTextShiftedCap()Ljava/lang/CharSequence;

    move-result-object v2

    .line 231
    goto :goto_2

    .line 233
    :pswitch_3
    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnTextShiftedAllCap()Ljava/lang/CharSequence;

    move-result-object v2

    .line 234
    goto :goto_2

    .line 236
    :pswitch_4
    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnTextShiftedLowerCase()Ljava/lang/CharSequence;

    move-result-object v2

    .line 237
    goto :goto_2

    .line 243
    :pswitch_5
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLableOnPhone()Ljava/lang/CharSequence;

    move-result-object v2

    .line 244
    :goto_4
    goto :goto_2

    .line 243
    :cond_4
    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLableOnShiftedPhone()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_4

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 228
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getAltAccessibilityLabel(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p3, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 305
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityAltLabelForKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 309
    .local v1, "overiddenLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 310
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 316
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 313
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAltLabel(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 314
    .local v0, "altLabel":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getLongPressAccessibilityLabelForShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p2, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "mappedLabel":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->mappingParser:Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;

    const/16 v3, 0xfe4

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;->getAccessibilityMapping(I)Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;

    move-result-object v1

    .line 323
    .local v1, "mapping":Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
    if-eqz v1, :cond_0

    .line 324
    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityLabel$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 329
    :cond_0
    :goto_0
    return-object v0

    .line 326
    :pswitch_0
    sget-object v2, Lcom/nuance/swype/input/accessibility/AccessibilityLabel$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->getLabelOnTextShiftedAllCap()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 326
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
