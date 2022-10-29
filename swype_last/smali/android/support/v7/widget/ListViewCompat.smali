.class public Landroid/support/v7/widget/ListViewCompat;
.super Landroid/widget/ListView;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
    }
.end annotation


# static fields
.field private static final STATE_SET_NOTHING:[I


# instance fields
.field mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field protected mMotionPosition:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

.field final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Landroid/support/v7/widget/ListViewCompat;->STATE_SET_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 49
    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    .line 50
    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    .line 51
    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    .line 52
    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    .line 72
    :try_start_13
    const-class v0, Landroid/widget/AbsListView;

    const-string/jumbo v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 73
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_24
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_24} :catch_25

    .line 77
    :goto_24
    return-void

    .line 75
    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_24
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    .line 1139
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1140
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1141
    if-eqz v0, :cond_16

    .line 1142
    iget-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1143
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 111
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 99
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ListViewCompat;->setSelectorEnabled(Z)V

    .line 1124
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1125
    if-eqz v1, :cond_22

    .line 1131
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1125
    :goto_19
    if-eqz v0, :cond_22

    .line 1126
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 101
    :cond_22
    return-void

    .line 1131
    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final measureHeightOfChildrenCompat$2e71581f$4868d301(II)I
    .registers 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingTop()I

    move-result v11

    .line 273
    .local v11, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingBottom()I

    move-result v10

    .line 274
    .local v10, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingLeft()I

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingRight()I

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getDividerHeight()I

    move-result v12

    .line 277
    .local v12, "reportedDividerHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 279
    .local v5, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 281
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1f

    .line 282
    add-int p2, v11, v10

    .line 351
    .end local p2    # "maxHeight":I
    :cond_1e
    :goto_1e
    return p2

    .line 286
    .restart local p2    # "maxHeight":I
    :cond_1f
    add-int v13, v11, v10

    .line 287
    .local v13, "returnedHeight":I
    if-lez v12, :cond_6d

    if-eqz v5, :cond_6d

    move v6, v12

    .line 294
    .local v6, "dividerHeight":I
    :goto_26
    const/4 v2, 0x0

    .line 295
    .local v2, "child":Landroid/view/View;
    const/4 v14, 0x0

    .line 296
    .local v14, "viewType":I
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 297
    .local v4, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2d
    if-ge v8, v4, :cond_77

    .line 298
    invoke-interface {v1, v8}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    .line 299
    .local v9, "newType":I
    if-eq v9, v14, :cond_37

    .line 300
    const/4 v2, 0x0

    .line 301
    move v14, v9

    .line 303
    :cond_37
    move-object/from16 v0, p0

    invoke-interface {v1, v8, v2, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 309
    .local v3, "childLp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_4a

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 311
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    :cond_4a
    iget v15, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v15, :cond_6f

    .line 315
    iget v15, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 320
    .local v7, "heightMeasureSpec":I
    :goto_56
    move/from16 v0, p1

    invoke-virtual {v2, v0, v7}, Landroid/view/View;->measure(II)V

    .line 324
    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 326
    if-lez v8, :cond_61

    .line 328
    add-int/2addr v13, v6

    .line 331
    :cond_61
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v13, v15

    .line 333
    move/from16 v0, p2

    if-ge v13, v0, :cond_1e

    .line 297
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 287
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "count":I
    .end local v6    # "dividerHeight":I
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "i":I
    .end local v9    # "newType":I
    .end local v14    # "viewType":I
    :cond_6d
    const/4 v6, 0x0

    goto :goto_26

    .line 318
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "count":I
    .restart local v6    # "dividerHeight":I
    .restart local v8    # "i":I
    .restart local v9    # "newType":I
    .restart local v14    # "viewType":I
    :cond_6f
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "heightMeasureSpec":I
    goto :goto_56

    .end local v3    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "heightMeasureSpec":I
    .end local v9    # "newType":I
    :cond_77
    move/from16 p2, v13

    .line 351
    goto :goto_1e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 120
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 117
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/ListViewCompat;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ListViewCompat;->mMotionPosition:I

    goto :goto_7

    .line 115
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 81
    if-eqz p1, :cond_29

    new-instance v1, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    invoke-direct {v1, p1}, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    iput-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    .line 82
    iget-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    invoke-super {p0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 85
    .local v0, "padding":Landroid/graphics/Rect;
    if-eqz p1, :cond_18

    .line 86
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 89
    :cond_18
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    .line 90
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    .line 91
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    .line 92
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    .line 93
    return-void

    .line 81
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_29
    const/4 v1, 0x0

    goto :goto_7
.end method

.method protected setSelectorEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 355
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    if-eqz v0, :cond_8

    .line 356
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    .line 1369
    iput-boolean p1, v0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    .line 358
    :cond_8
    return-void
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method
