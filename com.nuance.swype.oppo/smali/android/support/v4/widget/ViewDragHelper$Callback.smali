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
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal$17e143b0(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public clampViewPositionVertical$17e143b0(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 0
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 240
    return-void
.end method

.method public onEdgeTouched$255f295()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public onViewCaptured$5359dc9a(Landroid/view/View;)V
    .locals 0
    .param p1, "capturedChild"    # Landroid/view/View;

    .prologue
    .line 181
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onViewPositionChanged$5b6f797d(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I

    .prologue
    .line 170
    return-void
.end method

.method public onViewReleased$17e2ac03(Landroid/view/View;F)V
    .locals 0
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F

    .prologue
    .line 201
    return-void
.end method

.method public abstract tryCaptureView$5359dc96(Landroid/view/View;)Z
.end method
