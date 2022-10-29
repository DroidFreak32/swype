.class Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;
.super Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;
.source "MotionEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final findPointerIndex(Landroid/view/MotionEvent;I)I
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerId"    # I

    .prologue
    .line 108
    .line 1026
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 108
    return v0
.end method

.method public final getPointerCount(Landroid/view/MotionEvent;)I
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    .line 1038
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 124
    return v0
.end method

.method public final getPointerId(Landroid/view/MotionEvent;I)I
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 112
    .line 1029
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 112
    return v0
.end method

.method public final getX(Landroid/view/MotionEvent;I)F
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 116
    .line 1032
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 116
    return v0
.end method

.method public final getY(Landroid/view/MotionEvent;I)F
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 120
    .line 1035
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 120
    return v0
.end method
