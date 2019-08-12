.class public Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;
.super Ljava/lang/Object;
.source "TwoFingerGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$1;,
        Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;,
        Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final MAX_SCROLL_OFFSET:F = 60.0f

.field private static final MIN_SCROLL_DISTANCE:F = 20.0f


# instance fields
.field private firstPointerId:I

.field private initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

.field private initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

.field private isMultiTouchBegin:Z

.field private isMultiTouchReleaseBegin:Z

.field private scrollListener:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

.field private secondPointerId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    .line 10
    iput-object v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    .line 11
    iput-object v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->scrollListener:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    .line 16
    iput v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->firstPointerId:I

    .line 17
    iput v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->secondPointerId:I

    .line 18
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchBegin:Z

    .line 19
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchReleaseBegin:Z

    .line 31
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 100
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    .line 101
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    .line 102
    iput v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->firstPointerId:I

    .line 103
    iput v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->secondPointerId:I

    .line 104
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchBegin:Z

    .line 105
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchReleaseBegin:Z

    .line 106
    return-void
.end method


# virtual methods
.method public isMultitouch()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchBegin:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const v10, 0xff00

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->scrollListener:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    if-nez v8, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v6

    .line 116
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 118
    .local v0, "action":I
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 232
    :pswitch_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->clear()V

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-static {p1, v6}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    iput v7, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->firstPointerId:I

    goto :goto_0

    .line 125
    :pswitch_2
    iget-boolean v8, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchBegin:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    if-nez v8, :cond_2

    .line 127
    iget v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->firstPointerId:I

    invoke-static {p1, v6}, Lcom/nuance/swype/input/MotionEventWrapper;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 129
    .local v3, "pointerIndex":I
    invoke-static {p1, v3}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 130
    .local v4, "x":F
    invoke-static {p1, v3}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 131
    .local v5, "y":F
    new-instance v6, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-direct {v6, v11}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;-><init>(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$1;)V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    .line 132
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setStartX(F)V

    .line 133
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setStartY(F)V

    .line 135
    and-int v6, v0, v10

    shr-int/lit8 v1, v6, 0x8

    .line 137
    .local v1, "pointer2Index":I
    invoke-static {p1, v1}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    iput v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->secondPointerId:I

    .line 139
    invoke-static {p1, v1}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 140
    invoke-static {p1, v1}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 141
    new-instance v6, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-direct {v6, v11}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;-><init>(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$1;)V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    .line 142
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setStartX(F)V

    .line 143
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setStartY(F)V

    .line 144
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchBegin:Z

    move v6, v7

    .line 145
    goto :goto_0

    .line 146
    .end local v1    # "pointer2Index":I
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_2
    iget-boolean v8, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchReleaseBegin:Z

    if-eqz v8, :cond_3

    .line 147
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchBegin:Z

    :cond_3
    move v6, v7

    .line 149
    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    if-eqz v8, :cond_0

    :cond_4
    move v6, v7

    .line 155
    goto :goto_0

    .line 159
    :pswitch_4
    iget-boolean v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchBegin:Z

    if-ne v6, v7, :cond_5

    .line 160
    and-int v6, v0, v10

    shr-int/lit8 v3, v6, 0x8

    .line 162
    .restart local v3    # "pointerIndex":I
    invoke-static {p1, v3}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 164
    .local v2, "pointerId":I
    invoke-static {p1, v3}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 165
    .restart local v4    # "x":F
    invoke-static {p1, v3}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 167
    .restart local v5    # "y":F
    iget v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->firstPointerId:I

    if-ne v2, v6, :cond_6

    .line 168
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setEndX(F)V

    .line 169
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setEndY(F)V

    .line 170
    iput v9, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->firstPointerId:I

    .line 171
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchReleaseBegin:Z

    .end local v2    # "pointerId":I
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_5
    :goto_1
    move v6, v7

    .line 179
    goto/16 :goto_0

    .line 172
    .restart local v2    # "pointerId":I
    .restart local v3    # "pointerIndex":I
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    :cond_6
    iget v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->secondPointerId:I

    if-ne v2, v6, :cond_5

    .line 173
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setEndX(F)V

    .line 174
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setEndY(F)V

    .line 175
    iput v9, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->secondPointerId:I

    .line 176
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchReleaseBegin:Z

    goto :goto_1

    .line 183
    .end local v2    # "pointerId":I
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_5
    iget-boolean v8, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchBegin:Z

    if-eqz v8, :cond_d

    iget-boolean v8, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->isMultiTouchReleaseBegin:Z

    if-eqz v8, :cond_d

    .line 184
    invoke-static {p1, v6}, Lcom/nuance/swype/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    invoke-static {p1, v6}, Lcom/nuance/swype/input/MotionEventWrapper;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 186
    .restart local v3    # "pointerIndex":I
    invoke-static {p1, v3}, Lcom/nuance/swype/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 187
    .restart local v4    # "x":F
    invoke-static {p1, v3}, Lcom/nuance/swype/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 189
    .restart local v5    # "y":F
    iget v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->firstPointerId:I

    if-eq v6, v9, :cond_9

    .line 190
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setEndX(F)V

    .line 191
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setEndY(F)V

    .line 192
    iput v9, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->firstPointerId:I

    .line 199
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->isScrollLeft()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->isScrollLeft()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 202
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->scrollListener:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    invoke-interface {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;->onScrollLeft()V

    .line 218
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->clear()V

    move v6, v7

    .line 219
    goto/16 :goto_0

    .line 193
    :cond_9
    iget v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->secondPointerId:I

    if-eq v6, v9, :cond_7

    .line 194
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setEndX(F)V

    .line 195
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->setEndY(F)V

    .line 196
    iput v9, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->secondPointerId:I

    goto :goto_2

    .line 204
    :cond_a
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->isScrollRight()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->isScrollRight()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 207
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->scrollListener:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    invoke-interface {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;->onScrollRight()V

    goto :goto_3

    .line 208
    :cond_b
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->isScrollUp()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->isScrollUp()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 211
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->scrollListener:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    invoke-interface {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;->onScrollUp()V

    goto :goto_3

    .line 212
    :cond_c
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialFirstFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->isScrollDown()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->initialSecondFinger:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$Finger;->isScrollDown()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 215
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->scrollListener:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    invoke-interface {v6}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;->onScrollDown()V

    goto :goto_3

    .line 221
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_d
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->clear()V

    goto/16 :goto_0

    .line 227
    :pswitch_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->clear()V

    goto/16 :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setScrollListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V
    .locals 0
    .param p1, "aScrollListener"    # Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector;->scrollListener:Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;

    .line 97
    return-void
.end method
