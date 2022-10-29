.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/support/v7/widget/Toolbar$SavedState;,
        Landroid/support/v7/widget/Toolbar$LayoutParams;,
        Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private final mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

.field private final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 229
    sget v0, Landroid/support/v7/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 233
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    new-instance v21, Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-direct/range {v21 .. v21}, Landroid/support/v7/widget/RtlSpacingHelper;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    .line 176
    const v21, 0x800013

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 188
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 191
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 193
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 197
    new-instance v21, Landroid/support/v7/widget/Toolbar$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$1;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 216
    new-instance v21, Landroid/support/v7/widget/Toolbar$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$2;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/support/v7/appcompat/R$styleable;->Toolbar:[I

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move/from16 v3, p3

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    .line 239
    .local v5, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 240
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 241
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 242
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_buttonGravity:I

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    .line 245
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargin:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v20

    .line 246
    .local v20, "titleMargin":I
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_db

    .line 248
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v20

    .line 250
    :cond_db
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 252
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    .line 253
    .local v14, "marginStart":I
    if-ltz v14, :cond_105

    .line 254
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 257
    :cond_105
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    .line 258
    .local v13, "marginEnd":I
    if-ltz v13, :cond_117

    .line 259
    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 262
    :cond_117
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    .line 263
    .local v15, "marginTop":I
    if-ltz v15, :cond_129

    .line 264
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 267
    :cond_129
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 269
    .local v12, "marginBottom":I
    if-ltz v12, :cond_13b

    .line 270
    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 273
    :cond_13b
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    .line 275
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    const/high16 v22, -0x80000000

    .line 276
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 278
    .local v9, "contentInsetStart":I
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    const/high16 v22, -0x80000000

    .line 279
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 281
    .local v6, "contentInsetEnd":I
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    const/16 v22, 0x0

    .line 282
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 283
    .local v7, "contentInsetLeft":I
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    const/16 v22, 0x0

    .line 284
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 286
    .local v8, "contentInsetRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 288
    const/high16 v21, -0x80000000

    move/from16 v0, v21

    if-ne v9, v0, :cond_194

    const/high16 v21, -0x80000000

    move/from16 v0, v21

    if-eq v6, v0, :cond_19f

    .line 290
    :cond_194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v6}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 293
    :cond_19f
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 295
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEndWithActions:I

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 298
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseIcon:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 299
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 301
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_title:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 302
    .local v19, "title":Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1f4

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    :cond_1f4
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitle:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 307
    .local v18, "subtitle":Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_209

    .line 308
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 312
    :cond_209
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 313
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_popupTheme:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 315
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationIcon:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 316
    .local v17, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_237

    .line 317
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_237
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 320
    .local v16, "navDesc":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_24c

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 324
    :cond_24c
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logo:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 325
    .local v10, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_25b

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 329
    :cond_25b
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logoDescription:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 330
    .local v11, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_26e

    .line 331
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 334
    :cond_26e
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_28b

    .line 335
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 338
    :cond_28b
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_2a8

    .line 339
    sget v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 2206
    :cond_2a8
    iget-object v0, v5, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 344
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/Toolbar;)V
    .registers 5
    .param p0, "x0"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 140
    .line 13364
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_41

    .line 13365
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 13367
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13368
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14090
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>()V

    .line 13370
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 13371
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 13372
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13373
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v1, Landroid/support/v7/widget/Toolbar$3;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/Toolbar$3;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_41
    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/Toolbar;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 140
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    return v0
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .registers 10
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x1

    .line 2013
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    if-ne v6, v4, :cond_3e

    .line 2014
    .local v4, "isRtl":Z
    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 2016
    .local v2, "childCount":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    .line 2015
    invoke-static {p2, v6}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 2018
    .local v0, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2020
    if-eqz v4, :cond_40

    .line 2021
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1a
    if-ltz v3, :cond_65

    .line 2022
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2023
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 2024
    .local v5, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_3b

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3b

    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2025
    invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_3b

    .line 2026
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2021
    :cond_3b
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 2013
    .end local v0    # "absGrav":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "isRtl":Z
    .end local v5    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_3e
    const/4 v4, 0x0

    goto :goto_7

    .line 2030
    .restart local v0    # "absGrav":I
    .restart local v2    # "childCount":I
    .restart local v4    # "isRtl":Z
    :cond_40
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_41
    if-ge v3, v2, :cond_65

    .line 2031
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2032
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 2033
    .restart local v5    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_62

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_62

    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2034
    invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_62

    .line 2035
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2030
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 2039
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_65
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .prologue
    .line 1383
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1385
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1d

    .line 9090
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>()V

    .line 1392
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :goto_b
    const/4 v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1394
    if-eqz p2, :cond_2c

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2c

    .line 1395
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1396
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    :goto_1c
    return-void

    .line 1387
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_1d
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1388
    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .restart local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    goto :goto_b

    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_28
    move-object v0, v1

    .line 1390
    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .restart local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    goto :goto_b

    .line 1398
    :cond_2c
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1c
.end method

.method private ensureLogoView()V
    .registers 3

    .prologue
    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    .line 681
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 683
    :cond_f
    return-void
.end method

.method private ensureMenu()V
    .registers 4

    .prologue
    .line 1028
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 1029
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 4669
    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1029
    if-nez v1, :cond_2a

    .line 1031
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    .line 1032
    .local v0, "menu":Landroid/support/v7/view/menu/MenuBuilder;
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1d

    .line 1033
    new-instance v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;B)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1035
    :cond_1d
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1036
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1038
    .end local v0    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_2a
    return-void
.end method

.method private ensureMenuView()V
    .registers 5

    .prologue
    .line 1041
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v1, :cond_40

    .line 1042
    new-instance v1, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 1043
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1044
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1045
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 5090
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>()V

    .line 1047
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1048
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1051
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_40
    return-void
.end method

.method private ensureNavButtonView()V
    .registers 6

    .prologue
    .line 1354
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_26

    .line 1355
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 8090
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>()V

    .line 1358
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1359
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_26
    return-void
.end method

.method protected static generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
    .registers 1

    .prologue
    .line 2090
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>()V

    return-object v0
.end method

.method private static generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .registers 2
    .param p0, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2077
    instance-of v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_c

    .line 2078
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    check-cast p0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .end local p0    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p0}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/widget/Toolbar$LayoutParams;)V

    .line 2084
    .restart local p0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :goto_b
    return-object v0

    .line 2079
    :cond_c
    instance-of v0, p0, Landroid/support/v7/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_18

    .line 2080
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    check-cast p0, Landroid/support/v7/app/ActionBar$LayoutParams;

    .end local p0    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p0}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V

    goto :goto_b

    .line 2081
    .restart local p0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_24

    .line 2082
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p0    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p0}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    .line 2084
    .restart local p0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_24
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method private getChildHorizontalGravity(I)I
    .registers 5
    .param p1, "gravity"    # I

    .prologue
    .line 2042
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 2043
    .local v1, "ld":I
    invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 2044
    and-int/lit8 v0, v2, 0x7

    .line 2045
    .local v0, "hGrav":I
    packed-switch v0, :pswitch_data_14

    .line 2051
    :pswitch_d
    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    const/4 v0, 0x5

    .end local v0    # "hGrav":I
    :goto_11
    :pswitch_11
    return v0

    .restart local v0    # "hGrav":I
    :cond_12
    const/4 v0, 0x3

    goto :goto_11

    .line 2045
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_11
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .prologue
    const/4 v8, 0x0

    .line 1962
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1963
    .local v3, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1964
    .local v1, "childHeight":I
    if-lez p2, :cond_3a

    sub-int v9, v1, p2

    div-int/lit8 v0, v9, 0x2

    .line 1965
    .local v0, "alignmentOffset":I
    :goto_11
    iget v9, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 11994
    and-int/lit8 v9, v9, 0x70

    .line 11995
    sparse-switch v9, :sswitch_data_66

    .line 12001
    iget v9, p0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 v9, v9, 0x70

    .line 1965
    :sswitch_1c
    sparse-switch v9, :sswitch_data_74

    .line 1975
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v5

    .line 1976
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    .line 1977
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    .line 1978
    .local v2, "height":I
    sub-int v9, v2, v5

    sub-int/2addr v9, v4

    .line 1979
    sub-int/2addr v9, v1

    div-int/lit8 v6, v9, 0x2

    .line 1980
    .local v6, "spaceAbove":I
    iget v9, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v6, v9, :cond_51

    .line 1981
    iget v6, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    .line 1989
    :cond_37
    :goto_37
    add-int v8, v5, v6

    .end local v2    # "height":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    .end local v6    # "spaceAbove":I
    :goto_39
    return v8

    .end local v0    # "alignmentOffset":I
    :cond_3a
    move v0, v8

    .line 1964
    goto :goto_11

    .line 1967
    .restart local v0    # "alignmentOffset":I
    :sswitch_3c
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v8

    sub-int/2addr v8, v0

    goto :goto_39

    .line 1970
    :sswitch_42
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v1

    iget v9, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v0

    goto :goto_39

    .line 1983
    .restart local v2    # "height":I
    .restart local v4    # "paddingBottom":I
    .restart local v5    # "paddingTop":I
    .restart local v6    # "spaceAbove":I
    :cond_51
    sub-int v9, v2, v4

    sub-int/2addr v9, v1

    sub-int/2addr v9, v6

    sub-int v7, v9, v5

    .line 1985
    .local v7, "spaceBelow":I
    iget v9, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v7, v9, :cond_37

    .line 1986
    iget v9, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v7

    sub-int v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_37

    .line 11995
    nop

    :sswitch_data_66
    .sparse-switch
        0x10 -> :sswitch_1c
        0x30 -> :sswitch_1c
        0x50 -> :sswitch_1c
    .end sparse-switch

    .line 1965
    :sswitch_data_74
    .sparse-switch
        0x30 -> :sswitch_3c
        0x50 -> :sswitch_42
    .end sparse-switch
.end method

.method private static getHorizontalMargins(Landroid/view/View;)I
    .registers 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 2060
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2061
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 2062
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 1054
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getVerticalMargins(Landroid/view/View;)I
    .registers 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 2066
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2067
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2133
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 1937
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1938
    .local v2, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v4, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    aget v5, p3, v6

    sub-int v1, v4, v5

    .line 1939
    .local v1, "l":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr p2, v4

    .line 1940
    neg-int v4, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v6

    .line 1941
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 1942
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1943
    .local v0, "childWidth":I
    add-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1944
    iget v4, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr v4, p2

    .line 1945
    return v4
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1950
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1951
    .local v1, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v4, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    aget v5, p3, v7

    sub-int v2, v4, v5

    .line 1952
    .local v2, "r":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 1953
    neg-int v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v7

    .line 1954
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 1955
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1956
    .local v0, "childWidth":I
    sub-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1957
    iget v4, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    sub-int v4, p2, v4

    .line 1958
    return v4
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .registers 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .prologue
    .line 1525
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1527
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x0

    aget v9, p6, v9

    sub-int v3, v8, v9

    .line 1528
    .local v3, "leftDiff":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v9, 0x1

    aget v9, p6, v9

    sub-int v6, v8, v9

    .line 1529
    .local v6, "rightDiff":I
    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1530
    .local v4, "leftMargin":I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1531
    .local v7, "rightMargin":I
    add-int v2, v4, v7

    .line 1532
    .local v2, "hMargins":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    neg-int v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1533
    const/4 v8, 0x1

    const/4 v9, 0x0

    neg-int v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1536
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    add-int/2addr v8, p3

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1535
    invoke-static {p2, v8, v9}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1538
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int v8, v8, p5

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1537
    invoke-static {p4, v8, v9}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1541
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1542
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    return v8
.end method

.method private measureChildConstrained$12802926(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightConstraint"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 1500
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1503
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1502
    invoke-static {p2, v4, v5}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1506
    .local v2, "childWidthSpec":I
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x0

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1505
    invoke-static {p4, v4, v5}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1509
    .local v1, "childHeightSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1510
    .local v0, "childHeightMode":I
    if-eq v0, v6, :cond_4b

    if-ltz p5, :cond_4b

    .line 1511
    if-eqz v0, :cond_47

    .line 1512
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v4, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 1514
    .end local p5    # "heightConstraint":I
    :cond_47
    invoke-static {p5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1516
    :cond_4b
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1517
    return-void
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2056
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2095
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 12090
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>()V

    .line 140
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 140
    .line 13072
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 140
    invoke-static {p1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getContentInsetEnd()I
    .registers 3

    .prologue
    .line 1140
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    .line 6051
    iget-boolean v1, v0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v1, :cond_9

    iget v0, v0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :goto_8
    return v0

    :cond_9
    iget v0, v0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_8
.end method

.method public getContentInsetEndWithActions()I
    .registers 3

    .prologue
    .line 1261
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1263
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    goto :goto_8
.end method

.method public getContentInsetLeft()I
    .registers 2

    .prologue
    .line 1182
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    .line 7039
    iget v0, v0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 1182
    return v0
.end method

.method public getContentInsetRight()I
    .registers 2

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    .line 7043
    iget v0, v0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    .line 1202
    return v0
.end method

.method public getContentInsetStart()I
    .registers 3

    .prologue
    .line 1120
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    .line 6047
    iget-boolean v1, v0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v1, :cond_9

    iget v0, v0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :goto_8
    return v0

    :cond_9
    iget v0, v0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    goto :goto_8
.end method

.method public getContentInsetStartWithNavigation()I
    .registers 3

    .prologue
    .line 1218
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1220
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    goto :goto_8
.end method

.method public getCurrentContentInsetEnd()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1313
    const/4 v0, 0x0

    .line 1314
    .local v0, "hasActions":Z
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_13

    .line 1315
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 7669
    iget-object v1, v3, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1316
    .local v1, "mb":Landroid/support/v7/view/menu/MenuBuilder;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v0, 0x1

    .line 1318
    .end local v1    # "mb":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_13
    :goto_13
    if-eqz v0, :cond_26

    .line 1319
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1320
    :goto_23
    return v2

    .restart local v1    # "mb":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_24
    move v0, v2

    .line 1316
    goto :goto_13

    .line 1320
    .end local v1    # "mb":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_26
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    goto :goto_23
.end method

.method public getCurrentContentInsetLeft()I
    .registers 3

    .prologue
    .line 1333
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1334
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    .line 1335
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_b
.end method

.method public getCurrentContentInsetRight()I
    .registers 3

    .prologue
    .line 1348
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1349
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    .line 1350
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_b
.end method

.method public getCurrentContentInsetStart()I
    .registers 4

    .prologue
    .line 1299
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1300
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1301
    :goto_15
    return v0

    :cond_16
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    goto :goto_15
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .prologue
    .line 1002
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1003
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 884
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 976
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1023
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1024
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 779
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .registers 2

    .prologue
    .line 467
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .registers 2

    .prologue
    .line 445
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    return v0
.end method

.method public getTitleMarginStart()I
    .registers 2

    .prologue
    .line 401
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    return v0
.end method

.method public getTitleMarginTop()I
    .registers 2

    .prologue
    .line 423
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    return v0
.end method

.method public getWrapper()Landroid/support/v7/widget/DecorToolbar;
    .registers 2

    .prologue
    .line 2104
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_b

    .line 2105
    new-instance v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    .line 2107
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1444
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1445
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1446
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1479
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1480
    .local v0, "action":I
    if-ne v0, v5, :cond_c

    .line 1481
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1484
    :cond_c
    iget-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    if-nez v2, :cond_1a

    .line 1485
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1486
    .local v1, "handled":Z
    if-ne v0, v5, :cond_1a

    if-nez v1, :cond_1a

    .line 1487
    iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1491
    .end local v1    # "handled":Z
    :cond_1a
    const/16 v2, 0xa

    if-eq v0, v2, :cond_21

    const/4 v2, 0x3

    if-ne v0, v2, :cond_23

    .line 1492
    :cond_21
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1495
    :cond_23
    return v4
.end method

.method protected onLayout(ZIIII)V
    .registers 62
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1700
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_312

    const/16 v18, 0x1

    .line 1701
    .local v18, "isRtl":Z
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v46

    .line 1702
    .local v46, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v16

    .line 1703
    .local v16, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v26

    .line 1704
    .local v26, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v27

    .line 1705
    .local v27, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v28

    .line 1706
    .local v28, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v25

    .line 1707
    .local v25, "paddingBottom":I
    move/from16 v22, v26

    .line 1708
    .local v22, "left":I
    sub-int v31, v46, v27

    .line 1710
    .local v31, "right":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 1711
    .local v12, "collapsingMargins":[I
    const/16 v47, 0x0

    const/16 v48, 0x1

    const/16 v49, 0x0

    aput v49, v12, v48

    aput v49, v12, v47

    .line 1714
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    .line 1716
    .local v5, "alignmentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v47

    if-eqz v47, :cond_5e

    .line 1717
    if-eqz v18, :cond_316

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    .line 1726
    :cond_5e
    :goto_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v47

    if-eqz v47, :cond_80

    .line 1727
    if-eqz v18, :cond_328

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    .line 1736
    :cond_80
    :goto_80
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v47

    if-eqz v47, :cond_a2

    .line 1737
    if-eqz v18, :cond_33a

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    .line 1746
    :cond_a2
    :goto_a2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v13

    .line 1747
    .local v13, "contentInsetLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v14

    .line 1748
    .local v14, "contentInsetRight":I
    const/16 v47, 0x0

    const/16 v48, 0x0

    sub-int v49, v13, v22

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->max(II)I

    move-result v48

    aput v48, v12, v47

    .line 1749
    const/16 v47, 0x1

    const/16 v48, 0x0

    sub-int v49, v46, v27

    sub-int v49, v49, v31

    sub-int v49, v14, v49

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->max(II)I

    move-result v48

    aput v48, v12, v47

    .line 1750
    move/from16 v0, v22

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1751
    sub-int v47, v46, v27

    sub-int v47, v47, v14

    move/from16 v0, v31

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v47

    if-eqz v47, :cond_fa

    .line 1754
    if-eqz v18, :cond_34c

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    .line 1763
    :cond_fa
    :goto_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v47

    if-eqz v47, :cond_11c

    .line 1764
    if-eqz v18, :cond_35e

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    .line 1773
    :cond_11c
    :goto_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v20

    .line 1774
    .local v20, "layoutTitle":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v19

    .line 1775
    .local v19, "layoutSubtitle":Z
    const/16 v40, 0x0

    .line 1776
    .local v40, "titleHeight":I
    if-eqz v20, :cond_164

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1778
    .local v24, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v48

    add-int v47, v47, v48

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v48, v0

    add-int v47, v47, v48

    add-int/lit8 v40, v47, 0x0

    .line 1780
    .end local v24    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_164
    if-eqz v19, :cond_18e

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1782
    .restart local v24    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v48

    add-int v47, v47, v48

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v48, v0

    add-int v47, v47, v48

    add-int v40, v40, v47

    .line 1785
    .end local v24    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_18e
    if-nez v20, :cond_192

    if-eqz v19, :cond_2d2

    .line 1787
    :cond_192
    if-eqz v20, :cond_370

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v44, v0

    .line 1788
    .local v44, "topChild":Landroid/view/View;
    :goto_19a
    if-eqz v19, :cond_378

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1789
    .local v6, "bottomChild":Landroid/view/View;
    :goto_1a0
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v45

    check-cast v45, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1790
    .local v45, "toplp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1791
    .local v7, "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    if-eqz v20, :cond_1ba

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v47

    if-gtz v47, :cond_1c8

    :cond_1ba
    if-eqz v19, :cond_37e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    .line 1792
    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v47

    if-lez v47, :cond_37e

    :cond_1c8
    const/16 v39, 0x1

    .line 1794
    .local v39, "titleHasWidth":Z
    :goto_1ca
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x70

    sparse-switch v47, :sswitch_data_5da

    .line 1800
    sub-int v47, v16, v28

    sub-int v47, v47, v25

    .line 1801
    sub-int v47, v47, v40

    div-int/lit8 v33, v47, 0x2

    .line 1802
    .local v33, "spaceAbove":I
    move-object/from16 v0, v45

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v48, v0

    add-int v47, v47, v48

    move/from16 v0, v33

    move/from16 v1, v47

    if-ge v0, v1, :cond_398

    .line 1803
    move-object/from16 v0, v45

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v48, v0

    add-int v33, v47, v48

    .line 1812
    :cond_1ff
    :goto_1ff
    add-int v43, v28, v33

    .line 1819
    .end local v33    # "spaceAbove":I
    .local v43, "titleTop":I
    :goto_201
    if-eqz v18, :cond_3e4

    .line 1820
    if-eqz v39, :cond_3e0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v47, v0

    :goto_20b
    const/16 v48, 0x1

    aget v48, v12, v48

    sub-int v30, v47, v48

    .line 1821
    .local v30, "rd":I
    const/16 v47, 0x0

    move/from16 v0, v47

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v47

    sub-int v31, v31, v47

    .line 1822
    const/16 v47, 0x1

    const/16 v48, 0x0

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->max(II)I

    move-result v48

    aput v48, v12, v47

    .line 1823
    move/from16 v42, v31

    .line 1824
    .local v42, "titleRight":I
    move/from16 v37, v31

    .line 1826
    .local v37, "subtitleRight":I
    if-eqz v20, :cond_279

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1828
    .restart local v24    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v47

    sub-int v41, v42, v47

    .line 1829
    .local v41, "titleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v38, v43, v47

    .line 1830
    .local v38, "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v41

    move/from16 v2, v43

    move/from16 v3, v42

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1831
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v47, v0

    sub-int v42, v41, v47

    .line 1832
    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v43, v38, v47

    .line 1834
    .end local v24    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v38    # "titleBottom":I
    .end local v41    # "titleLeft":I
    :cond_279
    if-eqz v19, :cond_2c8

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1836
    .restart local v24    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    add-int v43, v43, v47

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v47

    sub-int v36, v37, v47

    .line 1838
    .local v36, "subtitleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v35, v43, v47

    .line 1839
    .local v35, "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v36

    move/from16 v2, v43

    move/from16 v3, v37

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1840
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v47, v0

    sub-int v37, v37, v47

    .line 1841
    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    .line 1843
    .end local v24    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v35    # "subtitleBottom":I
    .end local v36    # "subtitleLeft":I
    :cond_2c8
    if-eqz v39, :cond_2d2

    .line 1844
    move/from16 v0, v42

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 1879
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v30    # "rd":I
    .end local v37    # "subtitleRight":I
    .end local v39    # "titleHasWidth":Z
    .end local v42    # "titleRight":I
    .end local v43    # "titleTop":I
    .end local v44    # "topChild":Landroid/view/View;
    .end local v45    # "toplp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_2d2
    :goto_2d2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    const/16 v48, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1881
    .local v23, "leftViewsCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2ef
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_4b9

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    .line 1881
    add-int/lit8 v17, v17, 0x1

    goto :goto_2ef

    .line 1700
    .end local v5    # "alignmentHeight":I
    .end local v12    # "collapsingMargins":[I
    .end local v13    # "contentInsetLeft":I
    .end local v14    # "contentInsetRight":I
    .end local v16    # "height":I
    .end local v17    # "i":I
    .end local v18    # "isRtl":Z
    .end local v19    # "layoutSubtitle":Z
    .end local v20    # "layoutTitle":Z
    .end local v22    # "left":I
    .end local v23    # "leftViewsCount":I
    .end local v25    # "paddingBottom":I
    .end local v26    # "paddingLeft":I
    .end local v27    # "paddingRight":I
    .end local v28    # "paddingTop":I
    .end local v31    # "right":I
    .end local v40    # "titleHeight":I
    .end local v46    # "width":I
    :cond_312
    const/16 v18, 0x0

    goto/16 :goto_e

    .line 1721
    .restart local v5    # "alignmentHeight":I
    .restart local v12    # "collapsingMargins":[I
    .restart local v16    # "height":I
    .restart local v18    # "isRtl":Z
    .restart local v22    # "left":I
    .restart local v25    # "paddingBottom":I
    .restart local v26    # "paddingLeft":I
    .restart local v27    # "paddingRight":I
    .restart local v28    # "paddingTop":I
    .restart local v31    # "right":I
    .restart local v46    # "width":I
    :cond_316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_5e

    .line 1731
    :cond_328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_80

    .line 1741
    :cond_33a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    goto/16 :goto_a2

    .line 1758
    .restart local v13    # "contentInsetLeft":I
    .restart local v14    # "contentInsetRight":I
    :cond_34c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_fa

    .line 1768
    :cond_35e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_11c

    .line 1787
    .restart local v19    # "layoutSubtitle":Z
    .restart local v20    # "layoutTitle":Z
    .restart local v40    # "titleHeight":I
    :cond_370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v44, v0

    goto/16 :goto_19a

    .line 1788
    .restart local v44    # "topChild":Landroid/view/View;
    :cond_378
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto/16 :goto_1a0

    .line 1792
    .restart local v6    # "bottomChild":Landroid/view/View;
    .restart local v7    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .restart local v45    # "toplp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_37e
    const/16 v39, 0x0

    goto/16 :goto_1ca

    .line 1796
    .restart local v39    # "titleHasWidth":Z
    :sswitch_382
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v47

    move-object/from16 v0, v45

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v48, v0

    add-int v47, v47, v48

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v48, v0

    add-int v43, v47, v48

    .line 1797
    .restart local v43    # "titleTop":I
    goto/16 :goto_201

    .line 1805
    .end local v43    # "titleTop":I
    .restart local v33    # "spaceAbove":I
    :cond_398
    sub-int v47, v16, v25

    sub-int v47, v47, v40

    sub-int v47, v47, v33

    sub-int v34, v47, v28

    .line 1807
    .local v34, "spaceBelow":I
    move-object/from16 v0, v45

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v48, v0

    add-int v47, v47, v48

    move/from16 v0, v34

    move/from16 v1, v47

    if-ge v0, v1, :cond_1ff

    .line 1808
    const/16 v47, 0x0

    iget v0, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v49, v0

    add-int v48, v48, v49

    sub-int v48, v48, v34

    sub-int v48, v33, v48

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v33

    goto/16 :goto_1ff

    .line 1815
    .end local v33    # "spaceAbove":I
    .end local v34    # "spaceBelow":I
    :sswitch_3cc
    sub-int v47, v16, v25

    iget v0, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v48, v0

    sub-int v47, v47, v48

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v48, v0

    sub-int v47, v47, v48

    sub-int v43, v47, v40

    .restart local v43    # "titleTop":I
    goto/16 :goto_201

    .line 1820
    :cond_3e0
    const/16 v47, 0x0

    goto/16 :goto_20b

    .line 1847
    :cond_3e4
    if-eqz v39, :cond_4b5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v47, v0

    :goto_3ec
    const/16 v48, 0x0

    aget v48, v12, v48

    sub-int v21, v47, v48

    .line 1848
    .local v21, "ld":I
    const/16 v47, 0x0

    move/from16 v0, v47

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v47

    add-int v22, v22, v47

    .line 1849
    const/16 v47, 0x0

    const/16 v48, 0x0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v49, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->max(II)I

    move-result v48

    aput v48, v12, v47

    .line 1850
    move/from16 v41, v22

    .line 1851
    .restart local v41    # "titleLeft":I
    move/from16 v36, v22

    .line 1853
    .restart local v36    # "subtitleLeft":I
    if-eqz v20, :cond_45a

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1855
    .restart local v24    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v47

    add-int v42, v41, v47

    .line 1856
    .restart local v42    # "titleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v38, v43, v47

    .line 1857
    .restart local v38    # "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v41

    move/from16 v2, v43

    move/from16 v3, v42

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1858
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v47, v0

    add-int v41, v42, v47

    .line 1859
    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v43, v38, v47

    .line 1861
    .end local v24    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v38    # "titleBottom":I
    .end local v42    # "titleRight":I
    :cond_45a
    if-eqz v19, :cond_4a9

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1863
    .restart local v24    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    add-int v43, v43, v47

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v47

    add-int v37, v36, v47

    .line 1865
    .restart local v37    # "subtitleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v35, v43, v47

    .line 1866
    .restart local v35    # "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v36

    move/from16 v2, v43

    move/from16 v3, v37

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1867
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v47, v0

    add-int v36, v37, v47

    .line 1868
    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    .line 1870
    .end local v24    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v35    # "subtitleBottom":I
    .end local v37    # "subtitleRight":I
    :cond_4a9
    if-eqz v39, :cond_2d2

    .line 1871
    move/from16 v0, v41

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_2d2

    .line 1847
    .end local v21    # "ld":I
    .end local v36    # "subtitleLeft":I
    .end local v41    # "titleLeft":I
    :cond_4b5
    const/16 v47, 0x0

    goto/16 :goto_3ec

    .line 1886
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v39    # "titleHasWidth":Z
    .end local v43    # "titleTop":I
    .end local v44    # "topChild":Landroid/view/View;
    .end local v45    # "toplp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .restart local v17    # "i":I
    .restart local v23    # "leftViewsCount":I
    :cond_4b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    const/16 v48, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 1888
    .local v32, "rightViewsCount":I
    const/16 v17, 0x0

    :goto_4d6
    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_4f9

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    .line 1888
    add-int/lit8 v17, v17, 0x1

    goto :goto_4d6

    .line 1895
    :cond_4f9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1896
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v52, v0

    .line 11917
    const/16 v47, 0x0

    aget v49, v12, v47

    .line 11918
    const/16 v47, 0x1

    aget v48, v12, v47

    .line 11919
    const/4 v11, 0x0

    .line 11920
    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v53

    .line 11921
    const/16 v47, 0x0

    move/from16 v50, v48

    move/from16 v51, v49

    move/from16 v49, v47

    :goto_525
    move/from16 v0, v49

    move/from16 v1, v53

    if-ge v0, v1, :cond_588

    .line 11922
    move-object/from16 v0, v52

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/view/View;

    .line 11923
    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v48

    check-cast v48, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 11924
    move-object/from16 v0, v48

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    move/from16 v54, v0

    sub-int v51, v54, v51

    .line 11925
    move-object/from16 v0, v48

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    move/from16 v48, v0

    sub-int v48, v48, v50

    .line 11926
    const/16 v50, 0x0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(II)I

    move-result v54

    .line 11927
    const/16 v50, 0x0

    move/from16 v0, v50

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v55

    .line 11928
    const/16 v50, 0x0

    move/from16 v0, v51

    neg-int v0, v0

    move/from16 v51, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(II)I

    move-result v50

    .line 11929
    const/16 v51, 0x0

    move/from16 v0, v48

    neg-int v0, v0

    move/from16 v48, v0

    move/from16 v0, v51

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v48

    .line 11930
    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getMeasuredWidth()I

    move-result v47

    add-int v47, v47, v54

    add-int v47, v47, v55

    add-int v11, v11, v47

    .line 11921
    add-int/lit8 v47, v49, 0x1

    move/from16 v49, v47

    move/from16 v51, v50

    move/from16 v50, v48

    goto :goto_525

    .line 1897
    .local v11, "centerViewsWidth":I
    :cond_588
    sub-int v47, v46, v26

    sub-int v47, v47, v27

    div-int/lit8 v47, v47, 0x2

    add-int v29, v26, v47

    .line 1898
    .local v29, "parentCenter":I
    div-int/lit8 v15, v11, 0x2

    .line 1899
    .local v15, "halfCenterViewsWidth":I
    sub-int v8, v29, v15

    .line 1900
    .local v8, "centerLeft":I
    add-int v9, v8, v11

    .line 1901
    .local v9, "centerRight":I
    move/from16 v0, v22

    if-ge v8, v0, :cond_5c7

    .line 1902
    move/from16 v8, v22

    .line 1907
    :cond_59c
    :goto_59c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1908
    .local v10, "centerViewsCount":I
    const/16 v17, 0x0

    :goto_5a8
    move/from16 v0, v17

    if-ge v0, v10, :cond_5d0

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v8, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v8

    .line 1908
    add-int/lit8 v17, v17, 0x1

    goto :goto_5a8

    .line 1903
    .end local v10    # "centerViewsCount":I
    :cond_5c7
    move/from16 v0, v31

    if-le v9, v0, :cond_59c

    .line 1904
    sub-int v47, v9, v31

    sub-int v8, v8, v47

    goto :goto_59c

    .line 1913
    .restart local v10    # "centerViewsCount":I
    :cond_5d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->clear()V

    .line 1914
    return-void

    .line 1794
    :sswitch_data_5da
    .sparse-switch
        0x30 -> :sswitch_382
        0x50 -> :sswitch_3cc
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1565
    const/16 v27, 0x0

    .line 1566
    .local v27, "height":I
    const/16 v24, 0x0

    .line 1568
    .local v24, "childState":I
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 1571
    .local v9, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_20f

    .line 1572
    const/16 v30, 0x1

    .line 1573
    .local v30, "marginStartIndex":I
    const/16 v29, 0x0

    .line 1581
    .local v29, "marginEndIndex":I
    :goto_12
    const/16 v34, 0x0

    .line 1582
    .local v34, "navWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 1583
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained$12802926(Landroid/view/View;IIII)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v34, v3, v5

    .line 1586
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1587
    invoke-static {v7}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1586
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1588
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1589
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v5

    .line 1588
    invoke-static {v3, v5}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v24

    .line 1592
    :cond_67
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 1593
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained$12802926(Landroid/view/View;IIII)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1596
    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v34, v3, v5

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1598
    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1597
    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1599
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1600
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 1599
    move/from16 v0, v24

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v24

    .line 1603
    :cond_bc
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v26

    .line 1604
    .local v26, "contentInsetStart":I
    move/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v3, 0x0

    .line 1605
    .local v6, "width":I
    const/4 v3, 0x0

    sub-int v5, v26, v34

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v9, v30

    .line 1607
    const/16 v33, 0x0

    .line 1608
    .local v33, "menuWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 1609
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained$12802926(Landroid/view/View;IIII)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v33, v3, v5

    .line 1612
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 1613
    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1612
    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1614
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 1615
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 1614
    move/from16 v0, v24

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v24

    .line 1618
    :cond_129
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v25

    .line 1619
    .local v25, "contentInsetEnd":I
    move/from16 v0, v25

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1620
    const/4 v3, 0x0

    sub-int v5, v25, v33

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v9, v29

    .line 1622
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 1623
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1625
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1626
    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1625
    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1627
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1628
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 1627
    move/from16 v0, v24

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v24

    .line 1631
    :cond_180
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1c1

    .line 1632
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1634
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1635
    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1634
    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1636
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1637
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 1636
    move/from16 v0, v24

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v24

    .line 1640
    :cond_1c1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v23

    .line 1641
    .local v23, "childCount":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_1c7
    move/from16 v0, v28

    move/from16 v1, v23

    if-ge v0, v1, :cond_215

    .line 1642
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1643
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1644
    iget v3, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v3, :cond_20c

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_20c

    .line 1649
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1651
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v4}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1653
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 1652
    move/from16 v0, v24

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v24

    .line 1641
    :cond_20c
    add-int/lit8 v28, v28, 0x1

    goto :goto_1c7

    .line 1575
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "width":I
    .end local v23    # "childCount":I
    .end local v25    # "contentInsetEnd":I
    .end local v26    # "contentInsetStart":I
    .end local v28    # "i":I
    .end local v29    # "marginEndIndex":I
    .end local v30    # "marginStartIndex":I
    .end local v33    # "menuWidth":I
    .end local v34    # "navWidth":I
    :cond_20f
    const/16 v30, 0x0

    .line 1576
    .restart local v30    # "marginStartIndex":I
    const/16 v29, 0x1

    .restart local v29    # "marginEndIndex":I
    goto/16 :goto_12

    .line 1656
    .restart local v6    # "width":I
    .restart local v23    # "childCount":I
    .restart local v25    # "contentInsetEnd":I
    .restart local v26    # "contentInsetStart":I
    .restart local v28    # "i":I
    .restart local v33    # "menuWidth":I
    .restart local v34    # "navWidth":I
    :cond_215
    const/16 v37, 0x0

    .line 1657
    .local v37, "titleWidth":I
    const/16 v35, 0x0

    .line 1658
    .local v35, "titleHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int v15, v3, v5

    .line 1659
    .local v15, "titleVertMargins":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int v36, v3, v5

    .line 1660
    .local v36, "titleHorizMargins":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_27c

    .line 1661
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v13, v6, v36

    move-object/from16 v10, p0

    move/from16 v12, p1

    move/from16 v14, p2

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 1664
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v37, v3, v5

    .line 1665
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int v35, v3, v5

    .line 1666
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1667
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 1666
    move/from16 v0, v24

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v24

    .line 1669
    :cond_27c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2c5

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    add-int v19, v6, v36

    add-int v21, v35, v15

    move-object/from16 v16, p0

    move/from16 v18, p1

    move/from16 v20, p2

    move-object/from16 v22, v9

    invoke-direct/range {v16 .. v22}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    move/from16 v0, v37

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1674
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1675
    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int v35, v35, v3

    .line 1676
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1677
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 1676
    move/from16 v0, v24

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v24

    .line 1680
    :cond_2c5
    add-int v6, v6, v37

    .line 1681
    move/from16 v0, v27

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1685
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v6, v3

    .line 1686
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int v27, v27, v3

    .line 1689
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x1000000

    and-int v5, v5, v24

    .line 1688
    move/from16 v0, p1

    invoke-static {v3, v0, v5}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v32

    .line 1692
    .local v32, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v24, 0x10

    .line 1691
    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v31

    .line 11549
    .local v31, "measuredHeight":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    if-nez v3, :cond_31d

    const/4 v3, 0x0

    .line 1695
    :goto_30f
    if-eqz v3, :cond_313

    const/16 v31, 0x0

    .end local v31    # "measuredHeight":I
    :cond_313
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1696
    return-void

    .line 11551
    .restart local v31    # "measuredHeight":I
    :cond_31d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v5

    .line 11552
    const/4 v3, 0x0

    :goto_322
    if-ge v3, v5, :cond_343

    .line 11553
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 11554
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_340

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lez v8, :cond_340

    .line 11555
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-lez v7, :cond_340

    .line 11556
    const/4 v3, 0x0

    goto :goto_30f

    .line 11552
    :cond_340
    add-int/lit8 v3, v3, 0x1

    goto :goto_322

    .line 11559
    :cond_343
    const/4 v3, 0x1

    goto :goto_30f
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1416
    instance-of v3, p1, Landroid/support/v7/widget/Toolbar$SavedState;

    if-nez v3, :cond_8

    .line 1417
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1435
    :cond_7
    :goto_7
    return-void

    :cond_8
    move-object v2, p1

    .line 1421
    check-cast v2, Landroid/support/v7/widget/Toolbar$SavedState;

    .line 10073
    .local v2, "ss":Landroid/support/v7/widget/Toolbar$SavedState;
    iget-object v3, v2, Landroid/support/v4/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 1422
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1424
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 10669
    iget-object v1, v3, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1425
    .local v1, "menu":Landroid/view/Menu;
    :goto_18
    iget v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_2d

    if-eqz v1, :cond_2d

    .line 1426
    iget v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1427
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_2d

    .line 1428
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    .line 1432
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_2d
    iget-boolean v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v3, :cond_7

    .line 11438
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11439
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 1424
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_3c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 6
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v0, 0x1

    const/high16 v3, -0x80000000

    .line 484
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_c

    .line 485
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 487
    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-ne p1, v0, :cond_2d

    .line 3074
    :goto_10
    iget-boolean v2, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eq v0, v2, :cond_2c

    .line 3077
    iput-boolean v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 3078
    iget-boolean v2, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    if-eqz v2, :cond_4c

    .line 3079
    if-eqz v0, :cond_35

    .line 3080
    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    if-eq v0, v3, :cond_2f

    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    :goto_22
    iput v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 3081
    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    if-eq v0, v3, :cond_32

    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    :goto_2a
    iput v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    .line 3084
    :cond_2c
    :goto_2c
    return-void

    .line 487
    :cond_2d
    const/4 v0, 0x0

    goto :goto_10

    .line 3080
    :cond_2f
    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    goto :goto_22

    .line 3081
    :cond_32
    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    goto :goto_2a

    .line 3083
    :cond_35
    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    if-eq v0, v3, :cond_46

    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    :goto_3b
    iput v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 3084
    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    if-eq v0, v3, :cond_49

    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    :goto_43
    iput v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_2c

    .line 3083
    :cond_46
    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    goto :goto_3b

    .line 3084
    :cond_49
    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    goto :goto_43

    .line 3087
    :cond_4c
    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 3088
    iget v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput v0, v1, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_2c
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1404
    new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1406
    .local v0, "state":Landroid/support/v7/widget/Toolbar$SavedState;
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v3, :cond_1f

    .line 1407
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    iput v3, v0, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 9515
    :cond_1f
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_39

    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 9697
    iget-object v4, v3, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v4, :cond_37

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_37

    move v3, v1

    .line 9515
    :goto_32
    if-eqz v3, :cond_39

    .line 1410
    :goto_34
    iput-boolean v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1411
    return-object v0

    :cond_37
    move v3, v2

    .line 9697
    goto :goto_32

    :cond_39
    move v1, v2

    .line 9515
    goto :goto_34
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1455
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1456
    .local v0, "action":I
    if-nez v0, :cond_a

    .line 1457
    iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1460
    :cond_a
    iget-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    if-nez v2, :cond_18

    .line 1461
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1462
    .local v1, "handled":Z
    if-nez v0, :cond_18

    if-nez v1, :cond_18

    .line 1463
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1467
    .end local v1    # "handled":Z
    :cond_18
    if-eq v0, v3, :cond_1d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1f

    .line 1468
    :cond_1d
    iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1471
    :cond_1f
    return v3
.end method

.method public setCollapsible(Z)V
    .registers 2
    .param p1, "collapsible"    # Z

    .prologue
    .line 2142
    iput-boolean p1, p0, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    .line 2143
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2144
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .registers 3
    .param p1, "insetEndWithActions"    # I

    .prologue
    .line 1279
    if-gez p1, :cond_4

    .line 1280
    const/high16 p1, -0x80000000

    .line 1282
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_13

    .line 1283
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1284
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1285
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1288
    :cond_13
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .registers 3
    .param p1, "insetStartWithNavigation"    # I

    .prologue
    .line 1237
    if-gez p1, :cond_4

    .line 1238
    const/high16 p1, -0x80000000

    .line 1240
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_13

    .line 1241
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1242
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1243
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1246
    :cond_13
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .registers 4
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .prologue
    .line 1162
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1163
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .registers 4
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .prologue
    .line 1100
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1101
    return-void
.end method

.method public setLogo(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    .line 500
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3181
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 500
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 501
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 616
    if-eqz p1, :cond_1d

    .line 617
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 618
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 619
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 625
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    .line 626
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    :cond_1c
    return-void

    .line 621
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 622
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 623
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public setLogoDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 651
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 662
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 663
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 665
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 666
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 668
    :cond_12
    return-void
.end method

.method public setMenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .registers 8
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 543
    if-nez p1, :cond_9

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v1, :cond_9

    .line 575
    :cond_8
    :goto_8
    return-void

    .line 547
    :cond_9
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 548
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 3669
    iget-object v0, v1, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 549
    .local v0, "oldMenu":Landroid/support/v7/view/menu/MenuBuilder;
    if-eq v0, p1, :cond_8

    .line 553
    if-eqz v0, :cond_1e

    .line 554
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 555
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 558
    :cond_1e
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_2a

    .line 559
    new-instance v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;B)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 4162
    :cond_2a
    iput-boolean v3, p2, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 563
    if-eqz p1, :cond_49

    .line 564
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 565
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 572
    :goto_3a
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 573
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 574
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    goto :goto_8

    .line 567
    :cond_49
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 568
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 569
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 570
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_3a
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .registers 4
    .param p1, "pcb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .prologue
    .line 2151
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 2152
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 2153
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_d

    .line 2154
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 2156
    :cond_d
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 898
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 899
    return-void

    .line 898
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 912
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 913
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 915
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_12

    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 918
    :cond_12
    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    .line 935
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4181
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 935
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 936
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 953
    if-eqz p1, :cond_1d

    .line 954
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 955
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 956
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 962
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1c

    .line 963
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 965
    :cond_1c
    return-void

    .line 958
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 959
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 960
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 989
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 990
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .prologue
    .line 1078
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 1079
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1012
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1013
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1014
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 354
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_e

    .line 355
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    .line 356
    if-nez p1, :cond_f

    .line 357
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 362
    :cond_e
    :goto_e
    return-void

    .line 359
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_e
.end method

.method public setSubtitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 790
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 791
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 801
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 802
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_37

    .line 803
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 804
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 805
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 806
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 807
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_2c

    .line 808
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 810
    :cond_2c
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_37

    .line 811
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 814
    .end local v0    # "context":Landroid/content/Context;
    :cond_37
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 815
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 821
    :cond_45
    :goto_45
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4e

    .line 822
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    :cond_4e
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 825
    return-void

    .line 817
    :cond_51
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_45

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 818
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 819
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_45
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 843
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 844
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 845
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 847
    :cond_b
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 867
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    .line 868
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 869
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 871
    :cond_b
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 735
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 736
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 747
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 748
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_37

    .line 749
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 750
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 751
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 752
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 753
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_2c

    .line 754
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 756
    :cond_2c
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    if-eqz v1, :cond_37

    .line 757
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 760
    .end local v0    # "context":Landroid/content/Context;
    :cond_37
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 761
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 767
    :cond_45
    :goto_45
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4e

    .line 768
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    :cond_4e
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 771
    return-void

    .line 763
    :cond_51
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_45

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 764
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 765
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_45
.end method

.method public setTitleMargin(IIII)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 387
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 388
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 389
    iput p3, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 390
    iput p4, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 392
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 393
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .registers 2
    .param p1, "margin"    # I

    .prologue
    .line 478
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 480
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 481
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .registers 2
    .param p1, "margin"    # I

    .prologue
    .line 456
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 458
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 459
    return-void
.end method

.method public setTitleMarginStart(I)V
    .registers 2
    .param p1, "margin"    # I

    .prologue
    .line 412
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 414
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 415
    return-void
.end method

.method public setTitleMarginTop(I)V
    .registers 2
    .param p1, "margin"    # I

    .prologue
    .line 434
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 436
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 437
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 832
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 833
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 834
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 836
    :cond_b
    return-void
.end method

.method public setTitleTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 855
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    .line 856
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 857
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 859
    :cond_b
    return-void
.end method
