.class Landroid/support/v7/widget/DropDownListView;
.super Landroid/support/v7/widget/ListViewCompat;
.source "DropDownListView.java"


# instance fields
.field private mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 86
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    iput-boolean p2, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/DropDownListView;->setCacheColorHint(I)V

    .line 89
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .registers 2

    .prologue
    .line 275
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 255
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 265
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isInTouchMode()Z
    .registers 2

    .prologue
    .line 245
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .registers 24
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    .line 98
    const/4 v8, 0x1

    .line 99
    .local v8, "handledEvent":Z
    const/4 v7, 0x0

    .line 101
    .local v7, "clearPressedItem":Z
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    .line 102
    .local v4, "actionMasked":I
    packed-switch v4, :pswitch_data_212

    .line 135
    :cond_9
    :goto_9
    if-eqz v8, :cond_d

    if-eqz v7, :cond_42

    .line 3174
    :cond_d
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 3175
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 3177
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->drawableStateChanged()V

    .line 3179
    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3180
    if-eqz v12, :cond_30

    .line 3181
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setPressed(Z)V

    .line 3184
    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v12, :cond_42

    .line 3185
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 3186
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 140
    :cond_42
    if-eqz v8, :cond_202

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-nez v12, :cond_55

    .line 142
    new-instance v12, Landroid/support/v4/widget/ListViewAutoScrollHelper;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/support/v4/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    .line 144
    :cond_55
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 145
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 150
    :cond_68
    :goto_68
    return v8

    .line 104
    :pswitch_69
    const/4 v8, 0x0

    .line 105
    goto :goto_9

    .line 107
    :pswitch_6b
    const/4 v8, 0x0

    .line 110
    :pswitch_6c
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 111
    .local v5, "activeIndex":I
    if-gez v5, :cond_74

    .line 112
    const/4 v8, 0x0

    .line 113
    goto :goto_9

    .line 116
    :cond_74
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    float-to-int v10, v12

    .line 117
    .local v10, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    float-to-int v11, v12

    .line 118
    .local v11, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result v9

    .line 119
    .local v9, "position":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_8e

    .line 120
    const/4 v7, 0x1

    .line 121
    goto/16 :goto_9

    .line 124
    :cond_8e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int v12, v9, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 125
    .local v6, "child":Landroid/view/View;
    int-to-float v14, v10

    int-to-float v15, v11

    .line 1191
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 1194
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_ac

    .line 1195
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/support/v7/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 1197
    :cond_ac
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->isPressed()Z

    move-result v12

    if-nez v12, :cond_b8

    .line 1198
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 1202
    :cond_b8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->layoutChildren()V

    .line 1206
    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_df

    .line 1207
    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1208
    if-eqz v12, :cond_df

    if-eq v12, v6, :cond_df

    invoke-virtual {v12}, Landroid/view/View;->isPressed()Z

    move-result v13

    if-eqz v13, :cond_df

    .line 1209
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1212
    :cond_df
    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    .line 1215
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v14, v12

    .line 1216
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v15, v13

    .line 1217
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0x15

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_fe

    .line 1218
    invoke-virtual {v6, v12, v13}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1220
    :cond_fe
    invoke-virtual {v6}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-nez v12, :cond_108

    .line 1221
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/view/View;->setPressed(Z)V

    .line 2200
    :cond_108
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 2201
    if-eqz v16, :cond_1f5

    const/4 v12, -0x1

    if-eq v9, v12, :cond_1f5

    const/4 v12, 0x1

    move v13, v12

    .line 2202
    :goto_113
    if-eqz v13, :cond_11f

    .line 2203
    const/4 v12, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2218
    :cond_11f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 2219
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v17

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v18

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v19

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2222
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 2223
    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 2224
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 2225
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 2230
    :try_start_17e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v12

    .line 2231
    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v17

    move/from16 v0, v17

    if-eq v0, v12, :cond_1aa

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    move-object/from16 v17, v0

    if-nez v12, :cond_1f9

    const/4 v12, 0x1

    :goto_199
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2233
    const/4 v12, -0x1

    if-eq v9, v12, :cond_1aa

    .line 2234
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->refreshDrawableState()V
    :try_end_1aa
    .catch Ljava/lang/IllegalAccessException; {:try_start_17e .. :try_end_1aa} :catch_1fb

    .line 2208
    :cond_1aa
    :goto_1aa
    if-eqz v13, :cond_1cf

    .line 2209
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 2210
    invoke-virtual {v12}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v13

    .line 2211
    invoke-virtual {v12}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v17

    .line 2212
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getVisibility()I

    move-result v12

    if-nez v12, :cond_200

    const/4 v12, 0x1

    :goto_1bf
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2213
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v13, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 2191
    :cond_1cf
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 2192
    if-eqz v12, :cond_1db

    const/4 v13, -0x1

    if-eq v9, v13, :cond_1db

    .line 2193
    invoke-static {v12, v14, v15}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1230
    :cond_1db
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 1234
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->refreshDrawableState()V

    .line 126
    const/4 v8, 0x1

    .line 128
    const/4 v12, 0x1

    if-ne v4, v12, :cond_9

    .line 3158
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v12

    .line 3159
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v12, v13}, Landroid/support/v7/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_9

    .line 2201
    :cond_1f5
    const/4 v12, 0x0

    move v13, v12

    goto/16 :goto_113

    .line 2232
    :cond_1f9
    const/4 v12, 0x0

    goto :goto_199

    .line 2238
    :catch_1fb
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1aa

    .line 2212
    :cond_200
    const/4 v12, 0x0

    goto :goto_1bf

    .line 146
    .end local v5    # "activeIndex":I
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "position":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_202
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-eqz v12, :cond_68

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    goto/16 :goto_68

    .line 102
    :pswitch_data_212
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_6c
        :pswitch_69
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .registers 2
    .param p1, "hideListSelection"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    .line 171
    return-void
.end method

.method protected final touchModeDrawsInPressedStateCompat()Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
