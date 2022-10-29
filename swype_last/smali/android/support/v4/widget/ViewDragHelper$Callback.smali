.class public abstract Landroid/support/v4/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal$17e143b0(Landroid/view/View;I)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public clampViewPositionVertical$17e143b0(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .registers 3
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 241
    return-void
.end method

.method public onEdgeTouched$255f295()V
    .registers 1

    .prologue
    .line 215
    return-void
.end method

.method public onViewCaptured$5359dc9a(Landroid/view/View;)V
    .registers 2
    .param p1, "capturedChild"    # Landroid/view/View;

    .prologue
    .line 182
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 160
    return-void
.end method

.method public onViewPositionChanged$5b6f797d(Landroid/view/View;I)V
    .registers 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I

    .prologue
    .line 171
    return-void
.end method

.method public onViewReleased$17e2ac03(Landroid/view/View;F)V
    .registers 3
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F

    .prologue
    .line 202
    return-void
.end method

.method public abstract tryCaptureView$5359dc96(Landroid/view/View;)Z
.end method
