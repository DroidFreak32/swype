.class public final Lcom/nuance/swype/util/FrameworkUtil;
.super Ljava/lang/Object;
.source "FrameworkUtil.java"


# direct methods
.method public static disownParent(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 27
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 28
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    :cond_0
    return-void
.end method
