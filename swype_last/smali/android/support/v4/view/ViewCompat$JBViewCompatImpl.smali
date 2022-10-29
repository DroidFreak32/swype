.class Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1396
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFitsSystemWindows(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1470
    .line 2086
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    .line 1470
    return v0
.end method

.method public final getImportantForAccessibility(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1423
    .line 2054
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 1423
    return v0
.end method

.method public final getMinimumHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1460
    .line 2078
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 1460
    return v0
.end method

.method public final getMinimumWidth(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1455
    .line 2074
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    .line 1455
    return v0
.end method

.method public final getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1450
    .line 2070
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 1450
    return-object v0
.end method

.method public final hasOverlappingRendering(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1475
    .line 2090
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    .line 1475
    return v0
.end method

.method public final hasTransientState(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1399
    .line 2029
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    .line 1399
    return v0
.end method

.method public final postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1407
    .line 2037
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1408
    return-void
.end method

.method public final postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1411
    .line 2042
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidate(IIII)V

    .line 1412
    return-void
.end method

.method public final postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1415
    .line 2046
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1416
    return-void
.end method

.method public final postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J

    .prologue
    .line 1419
    .line 2050
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1420
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1465
    .line 2082
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    .line 1466
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 1430
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 1431
    const/4 p2, 0x2

    .line 2058
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1434
    return-void
.end method
