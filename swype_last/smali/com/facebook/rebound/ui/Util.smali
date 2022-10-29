.class public abstract Lcom/facebook/rebound/ui/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createLayoutParams(II)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 22
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static final createMatchParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-static {v0, v0}, Lcom/facebook/rebound/ui/Util;->createLayoutParams(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static final createMatchWrapParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .prologue
    .line 44
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/facebook/rebound/ui/Util;->createLayoutParams(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static final createWrapMatchParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .prologue
    .line 38
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/facebook/rebound/ui/Util;->createLayoutParams(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static final createWrapParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 1

    .prologue
    const/4 v0, -0x2

    .line 32
    invoke-static {v0, v0}, Lcom/facebook/rebound/ui/Util;->createLayoutParams(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static final dpToPx(FLandroid/content/res/Resources;)I
    .registers 4
    .param p0, "dp"    # F
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
