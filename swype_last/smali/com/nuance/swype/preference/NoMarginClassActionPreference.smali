.class public Lcom/nuance/swype/preference/NoMarginClassActionPreference;
.super Lcom/nuance/swype/preference/ClassActionPreference;
.source "NoMarginClassActionPreference.java"


# instance fields
.field public titleTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/nuance/swype/preference/ClassActionPreference;-><init>(Landroid/content/Context;)V

    .line 42
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/preference/ClassActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/preference/ClassActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    .line 24
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .registers 2

    .prologue
    .line 39
    sget v0, Lcom/nuance/swype/input/R$layout;->preference_no_margin:I

    return v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->getLayoutResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->setLayoutResource(I)V

    .line 29
    invoke-super {p0, p1}, Lcom/nuance/swype/preference/ClassActionPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_22

    .line 31
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    const/4 v2, 0x0

    iget v3, p0, Lcom/nuance/swype/preference/NoMarginClassActionPreference;->titleTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    :cond_22
    return-object v0
.end method
