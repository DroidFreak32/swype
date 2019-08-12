.class Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HCViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method final getFrameTime()J
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLayerType(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 408
    return-void
.end method

.method public final setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layerType"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 395
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 396
    return-void
.end method
