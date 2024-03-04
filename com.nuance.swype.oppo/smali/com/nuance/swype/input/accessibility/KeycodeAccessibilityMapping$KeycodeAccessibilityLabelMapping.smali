.class public Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;
.super Ljava/lang/Object;
.source "KeycodeAccessibilityMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeycodeAccessibilityLabelMapping"
.end annotation


# instance fields
.field altAccessibilityLabel:Ljava/lang/CharSequence;

.field code:I

.field label:Ljava/lang/CharSequence;

.field labelOnPhone:Ljava/lang/CharSequence;

.field labelOnShiftedPhone:Ljava/lang/CharSequence;

.field labelOnSymbols:Ljava/lang/CharSequence;

.field labelOnSymbolsShifted:Ljava/lang/CharSequence;

.field labelOnTextShiftedAllCap:Ljava/lang/CharSequence;

.field labelOnTextShiftedCap:Ljava/lang/CharSequence;

.field labelOnTextShiftedLowerCase:Ljava/lang/CharSequence;

.field shiftedAltAccessibilityLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->code:I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->extractAttributes(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 77
    return-void
.end method

.method private extractAttributes(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 80
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping_code:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->code:I

    .line 82
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping_accessibilityLabel:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->label:Ljava/lang/CharSequence;

    .line 83
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping_accessibilityLabelOnSymbols:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnSymbols:Ljava/lang/CharSequence;

    .line 84
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping_accessibilityLabelOnShiftedSymbols:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnSymbolsShifted:Ljava/lang/CharSequence;

    .line 85
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping_altAccessibilityLabel:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->altAccessibilityLabel:Ljava/lang/CharSequence;

    .line 86
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping_shiftedAltAccessibilityLabel:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->shiftedAltAccessibilityLabel:Ljava/lang/CharSequence;

    .line 87
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping_accessibilityLabelOnLowerCase:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnTextShiftedLowerCase:Ljava/lang/CharSequence;

    .line 88
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping_accessibilityLabelOnCap:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnTextShiftedCap:Ljava/lang/CharSequence;

    .line 89
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping_accessibilityLabelOnAllCap:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnTextShiftedAllCap:Ljava/lang/CharSequence;

    .line 90
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping_accessibilityLabelOnShiftedPhone:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnShiftedPhone:Ljava/lang/CharSequence;

    .line 91
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeycodeAccessibilityLabelMapping_accessibilityLabelOnPhone:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnPhone:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void
.end method


# virtual methods
.method public getAltLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->altAccessibilityLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->code:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLabelOnSymbols()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnSymbols:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLabelOnSymbolsShifted()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnSymbolsShifted:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLabelOnTextShiftedAllCap()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnTextShiftedAllCap:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLabelOnTextShiftedCap()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnTextShiftedCap:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLabelOnTextShiftedLowerCase()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnTextShiftedLowerCase:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLableOnPhone()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnPhone:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLableOnShiftedPhone()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->labelOnShiftedPhone:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShiftedAltLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->shiftedAltAccessibilityLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/nuance/swype/input/accessibility/KeycodeAccessibilityMapping$KeycodeAccessibilityLabelMapping;->code:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
