.class final Landroid/support/v4/view/ViewCompatHC;
.super Ljava/lang/Object;
.source "ViewCompatHC.java"


# direct methods
.method static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 182
    invoke-static {p0}, Landroid/support/v4/view/ViewCompatHC;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 185
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompatHC;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 188
    :cond_0
    return-void
.end method

.method static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 172
    invoke-static {p0}, Landroid/support/v4/view/ViewCompatHC;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 175
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 176
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompatHC;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 178
    :cond_0
    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 192
    .local v0, "y":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 193
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 194
    return-void
.end method
