.class public abstract Landroid/support/v7/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;,
        Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 64
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/ForwardingListener;->mScaledTouchSlop:F

    .line 66
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    .line 68
    iget v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ForwardingListener;->mLongPressTimeout:I

    .line 69
    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ForwardingListener;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ForwardingListener;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ForwardingListener;)V
    .registers 11
    .param p0, "x0"    # Landroid/support/v7/widget/ForwardingListener;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 33
    .line 4203
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    .line 4205
    iget-object v8, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 4206
    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4209
    :cond_13
    :goto_13
    return-void

    .line 4212
    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4217
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4221
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 4222
    invoke-virtual {v8, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4223
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 4225
    iput-boolean v9, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    goto :goto_13
.end method

.method private clearCallbacks()V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 194
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 198
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 200
    :cond_16
    return-void
.end method


# virtual methods
.method public abstract getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
.end method

.method public onForwardingStarted()Z
    .registers 3

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    .line 117
    .local v0, "popup":Landroid/support/v7/view/menu/ShowableListMenu;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_f

    .line 118
    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->show()V

    .line 120
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method protected onForwardingStopped()Z
    .registers 3

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    .line 134
    .local v0, "popup":Landroid/support/v7/view/menu/ShowableListMenu;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 135
    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->dismiss()V

    .line 137
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 85
    iget-boolean v10, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    .line 87
    .local v10, "wasForwarding":Z
    if-eqz v10, :cond_78

    .line 1236
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 1237
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    .line 1238
    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v2

    if-nez v2, :cond_28

    :cond_16
    move v0, v7

    .line 88
    :goto_17
    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStopped()Z

    move-result v0

    if-nez v0, :cond_76

    :cond_1f
    move v9, v11

    .line 102
    .local v9, "forwarding":Z
    :cond_20
    :goto_20
    iput-boolean v9, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    .line 103
    if-nez v9, :cond_26

    if-eqz v10, :cond_27

    :cond_26
    move v7, v11

    :cond_27
    return v7

    .line 1242
    .end local v9    # "forwarding":Z
    :cond_28
    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/DropDownListView;

    .line 1243
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->isShown()Z

    move-result v2

    if-nez v2, :cond_38

    :cond_36
    move v0, v7

    .line 1244
    goto :goto_17

    .line 1248
    :cond_38
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1286
    iget-object v3, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 1287
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1288
    aget v1, v3, v7

    int-to-float v1, v1

    aget v3, v3, v11

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2275
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 2276
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2277
    aget v3, v1, v7

    neg-int v3, v3

    int-to-float v3, v3

    aget v1, v1, v11

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1253
    iget v1, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v1

    .line 1254
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1257
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1258
    if-eq v0, v11, :cond_72

    if-eq v0, v4, :cond_72

    move v0, v11

    .line 1261
    :goto_6c
    if-eqz v1, :cond_74

    if-eqz v0, :cond_74

    move v0, v11

    goto :goto_17

    :cond_72
    move v0, v7

    .line 1258
    goto :goto_6c

    :cond_74
    move v0, v7

    .line 1261
    goto :goto_17

    :cond_76
    move v9, v7

    .line 88
    goto :goto_20

    .line 3147
    :cond_78
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 3148
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 3152
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 3153
    packed-switch v0, :pswitch_data_128

    :cond_87
    :goto_87
    move v0, v7

    .line 90
    :goto_88
    if-eqz v0, :cond_125

    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v0

    if-eqz v0, :cond_125

    move v9, v11

    .line 92
    .restart local v9    # "forwarding":Z
    :goto_91
    if-eqz v9, :cond_20

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    .line 95
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 97
    .local v8, "e":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_20

    .line 3155
    .end local v8    # "e":Landroid/view/MotionEvent;
    .end local v9    # "forwarding":Z
    :pswitch_a7
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    .line 3157
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v0, :cond_b8

    .line 3158
    new-instance v0, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;

    invoke-direct {v0, p0, v7}, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/support/v7/widget/ForwardingListener;B)V

    iput-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 3160
    :cond_b8
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v2, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3162
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v0, :cond_cb

    .line 3163
    new-instance v0, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;

    invoke-direct {v0, p0, v7}, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/support/v7/widget/ForwardingListener;B)V

    iput-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 3165
    :cond_cb
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v2, p0, Landroid/support/v7/widget/ForwardingListener;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_87

    .line 3168
    :pswitch_d4
    iget v0, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 3169
    if-ltz v0, :cond_87

    .line 3170
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 3171
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 3174
    iget v3, p0, Landroid/support/v7/widget/ForwardingListener;->mScaledTouchSlop:F

    .line 3265
    neg-float v6, v3

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_11e

    neg-float v6, v3

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_11e

    .line 3266
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v6, v12

    int-to-float v6, v6

    add-float/2addr v6, v3

    cmpg-float v2, v2, v6

    if-gez v2, :cond_11e

    .line 3267
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_11e

    move v0, v11

    .line 3174
    :goto_10f
    if-nez v0, :cond_87

    .line 3175
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    .line 3178
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v11

    .line 3179
    goto/16 :goto_88

    :cond_11e
    move v0, v7

    .line 3267
    goto :goto_10f

    .line 3185
    :pswitch_120
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    goto/16 :goto_87

    :cond_125
    move v9, v7

    .line 90
    goto/16 :goto_91

    .line 3153
    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_120
        :pswitch_d4
        :pswitch_120
    .end packed-switch
.end method
