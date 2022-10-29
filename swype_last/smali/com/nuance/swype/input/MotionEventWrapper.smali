.class public Lcom/nuance/swype/input/MotionEventWrapper;
.super Ljava/lang/Object;
.source "MotionEventWrapper.java"


# static fields
.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .registers 3
    .param p0, "me"    # Landroid/view/MotionEvent;
    .param p1, "pointerId"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    return v0
.end method

.method public static getHistoricalX(Landroid/view/MotionEvent;II)F
    .registers 4
    .param p0, "me"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    return v0
.end method

.method public static getHistoricalY(Landroid/view/MotionEvent;II)F
    .registers 4
    .param p0, "me"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v0

    return v0
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .registers 2
    .param p0, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .registers 3
    .param p0, "me"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public static getRawX(Landroid/view/MotionEvent;)F
    .registers 2
    .param p0, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    return v0
.end method

.method public static getRawY(Landroid/view/MotionEvent;)F
    .registers 2
    .param p0, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .registers 3
    .param p0, "me"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .registers 3
    .param p0, "me"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
