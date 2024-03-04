.class public Lcom/nuance/swype/preference/NoMarginClassActionPreference;
.super Lcom/nuance/swype/preference/ClassActionPreference;
.source "NoMarginClassActionPreference.java"


# instance fields
.field private titleTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/nuance/swype/preference/ClassActionPreference;-><init>(Landroid/content/Context;)V

    .line 43
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/preference/ClassActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/preference/ClassActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    .line 25
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/nuance/swype/input/R$layout;->preference_no_margin:I

    return v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->getLayoutResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->setLayoutResource(I)V

    .line 30
    invoke-super {p0, p1}, Lcom/nuance/swype/preference/ClassActionPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    const/4 v2, 0x0

    iget v3, p0, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    :cond_0
    return-object v0
.end method

.method public final setTitleTextSize(F)V
    .locals 0
    .param p1, "_textSize"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    .line 47
    return-void
.end method
