.class final Landroid/support/v7/view/menu/CascadingMenuPopup;
.super Landroid/support/v7/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field private mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field private final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShownAnchorView:Landroid/view/View;

.field private final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "popupStyleAttr"    # I
    .param p4, "popupStyleRes"    # I
    .param p5, "overflowOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Landroid/support/v7/view/menu/MenuPopup;-><init>()V

    .line 87
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 95
    new-instance v1, Landroid/support/v7/view/menu/CascadingMenuPopup$1;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$1;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 116
    new-instance v1, Landroid/support/v7/view/menu/CascadingMenuPopup$2;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$2;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    .line 176
    iput v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 177
    iput v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 201
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 203
    iput p3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    .line 204
    iput p4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    .line 205
    iput-boolean p5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    .line 207
    iput-boolean v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 208
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 211
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 212
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 211
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    .line 214
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    .line 215
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/view/menu/CascadingMenuPopup;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/view/menu/CascadingMenuPopup;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/view/menu/CascadingMenuPopup;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v7/view/menu/CascadingMenuPopup;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/view/menu/CascadingMenuPopup;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    return p1
.end method

.method private getInitialMenuPosition()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 291
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 292
    if-ne v1, v0, :cond_a

    const/4 v0, 0x0

    :cond_a
    return v0
.end method

.method private showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 31
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 346
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Landroid/support/v7/view/menu/MenuAdapter;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-direct {v3, v0, v5, v1}, Landroid/support/v7/view/menu/MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    .line 352
    .local v3, "adapter":Landroid/support/v7/view/menu/MenuAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v21

    if-nez v21, :cond_252

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    move/from16 v21, v0

    if-eqz v21, :cond_252

    .line 2052
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v3, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z

    .line 361
    :cond_2d
    :goto_2d
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v8

    .line 3223
    .local v8, "menuWidth":I
    new-instance v14, Landroid/support/v7/widget/MenuPopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v14, v0, v1, v2}, Landroid/support/v7/widget/MenuPopupWindow;-><init>(Landroid/content/Context;II)V

    .line 3225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    move-object/from16 v21, v0

    .line 4091
    move-object/from16 v0, v21

    iput-object v0, v14, Landroid/support/v7/widget/MenuPopupWindow;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    .line 4591
    move-object/from16 v0, p0

    iput-object v0, v14, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3227
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 3228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    move-object/from16 v21, v0

    .line 5461
    move-object/from16 v0, v21

    iput-object v0, v14, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 3229
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    move/from16 v21, v0

    .line 5518
    move/from16 v0, v21

    iput v0, v14, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 3230
    invoke-virtual {v14}, Landroid/support/v7/widget/MenuPopupWindow;->setModal$1385ff()V

    .line 363
    .local v14, "popupWindow":Landroid/support/v7/widget/MenuPopupWindow;
    invoke-virtual {v14, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5535
    iput v8, v14, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    move/from16 v21, v0

    .line 6518
    move/from16 v0, v21

    iput v0, v14, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_2e2

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 7478
    .local v10, "parentInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v0, v10, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object/from16 v23, v0

    .line 8457
    const/16 v21, 0x0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v24

    move/from16 v22, v21

    :goto_cb
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_268

    .line 8458
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 8459
    invoke-interface/range {v21 .. v21}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v25

    if-eqz v25, :cond_262

    invoke-interface/range {v21 .. v21}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_262

    move-object/from16 v25, v21

    .line 7479
    :goto_eb
    if-nez v25, :cond_26e

    .line 7481
    const/4 v13, 0x0

    .line 377
    .local v13, "parentView":Landroid/view/View;
    :goto_ee
    if-eqz v13, :cond_319

    .line 9099
    sget-object v21, Landroid/support/v7/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    if-eqz v21, :cond_10f

    .line 9101
    :try_start_f4
    sget-object v21, Landroid/support/v7/widget/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    iget-object v0, v14, Landroid/support/v7/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_10f} :catch_2e6

    .line 10079
    :cond_10f
    :goto_10f
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x17

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_122

    .line 10080
    iget-object v0, v14, Landroid/support/v7/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 10305
    :cond_122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 10741
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    move-object/from16 v21, v0

    .line 10909
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object/from16 v21, v0

    .line 10307
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 10308
    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 10310
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 10311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 10313
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2f2

    .line 10314
    const/16 v24, 0x0

    aget v22, v22, v24

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ListView;->getWidth()I

    move-result v21

    add-int v21, v21, v22

    add-int v21, v21, v8

    .line 10315
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_2fd

    .line 10318
    const/4 v9, 0x1

    .line 383
    .local v9, "nextMenuPosition":I
    :goto_18a
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_300

    const/4 v15, 0x1

    .line 384
    .local v15, "showOnRight":Z
    :goto_191
    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 386
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 390
    .local v16, "tempLocation":[I
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 391
    iget-object v0, v10, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    move-object/from16 v21, v0

    .line 11468
    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move/from16 v21, v0

    .line 391
    const/16 v22, 0x0

    aget v22, v16, v22

    add-int v11, v21, v22

    .line 392
    .local v11, "parentOffsetLeft":I
    iget-object v0, v10, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v21

    const/16 v22, 0x1

    aget v22, v16, v22

    add-int v12, v21, v22

    .line 397
    .local v12, "parentOffsetTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x5

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_30b

    .line 398
    if-eqz v15, :cond_303

    .line 399
    add-int v19, v11, v8

    .line 11477
    .local v19, "x":I
    :goto_1d4
    move/from16 v0, v19

    iput v0, v14, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 413
    move/from16 v20, v12

    .line 414
    .local v20, "y":I
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 426
    .end local v9    # "nextMenuPosition":I
    .end local v11    # "parentOffsetLeft":I
    .end local v12    # "parentOffsetTop":I
    .end local v15    # "showOnRight":Z
    .end local v16    # "tempLocation":[I
    .end local v19    # "x":I
    .end local v20    # "y":I
    :goto_1df
    new-instance v7, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-direct {v7, v14, v0, v1}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/support/v7/widget/MenuPopupWindow;Landroid/support/v7/view/menu/MenuBuilder;I)V

    .line 427
    .local v7, "menuInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {v14}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 432
    if-nez v10, :cond_251

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z

    move/from16 v21, v0

    if-eqz v21, :cond_251

    .line 14275
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .line 432
    if-eqz v21, :cond_251

    .line 14909
    iget-object v6, v14, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 434
    .local v6, "listView":Landroid/widget/ListView;
    sget v21, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 436
    .local v17, "titleItemView":Landroid/widget/FrameLayout;
    const v21, 0x1020016

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 437
    .local v18, "titleView":Landroid/widget/TextView;
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 15275
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .line 438
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 442
    invoke-virtual {v14}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 444
    .end local v6    # "listView":Landroid/widget/ListView;
    .end local v17    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v18    # "titleView":Landroid/widget/TextView;
    :cond_251
    return-void

    .line 355
    .end local v7    # "menuInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v8    # "menuWidth":I
    .end local v10    # "parentInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v13    # "parentView":Landroid/view/View;
    .end local v14    # "popupWindow":Landroid/support/v7/widget/MenuPopupWindow;
    :cond_252
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_2d

    .line 357
    invoke-static/range {p1 .. p1}, Landroid/support/v7/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v21

    .line 3052
    move/from16 v0, v21

    iput-boolean v0, v3, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z

    goto/16 :goto_2d

    .line 8457
    .restart local v8    # "menuWidth":I
    .restart local v10    # "parentInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .restart local v14    # "popupWindow":Landroid/support/v7/widget/MenuPopupWindow;
    :cond_262
    add-int/lit8 v21, v22, 0x1

    move/from16 v22, v21

    goto/16 :goto_cb

    .line 8464
    :cond_268
    const/16 v21, 0x0

    move-object/from16 v25, v21

    goto/16 :goto_eb

    .line 8741
    :cond_26e
    iget-object v0, v10, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    move-object/from16 v21, v0

    .line 8909
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object/from16 v26, v0

    .line 7488
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v21

    .line 7489
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/HeaderViewListAdapter;

    move/from16 v22, v0

    if-eqz v22, :cond_2b9

    .line 7490
    check-cast v21, Landroid/widget/HeaderViewListAdapter;

    .line 7491
    invoke-virtual/range {v21 .. v21}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v22

    .line 7492
    invoke-virtual/range {v21 .. v21}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v21

    check-cast v21, Landroid/support/v7/view/menu/MenuAdapter;

    .line 7499
    :goto_290
    const/16 v24, -0x1

    .line 7500
    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/view/menu/MenuAdapter;->getCount()I

    move-result v27

    :goto_298
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_346

    .line 7501
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_2be

    move/from16 v21, v23

    .line 7506
    :goto_2ae
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2c1

    .line 7508
    const/4 v13, 0x0

    goto/16 :goto_ee

    .line 7494
    :cond_2b9
    const/16 v22, 0x0

    .line 7495
    check-cast v21, Landroid/support/v7/view/menu/MenuAdapter;

    goto :goto_290

    .line 7500
    :cond_2be
    add-int/lit8 v23, v23, 0x1

    goto :goto_298

    .line 7512
    :cond_2c1
    add-int v21, v21, v22

    .line 7515
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v21, v21, v22

    .line 7516
    if-ltz v21, :cond_2d5

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getChildCount()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2d8

    .line 7518
    :cond_2d5
    const/4 v13, 0x0

    goto/16 :goto_ee

    .line 7521
    :cond_2d8
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    goto/16 :goto_ee

    .line 373
    .end local v10    # "parentInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_2e2
    const/4 v10, 0x0

    .line 374
    .restart local v10    # "parentInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v13, 0x0

    .restart local v13    # "parentView":Landroid/view/View;
    goto/16 :goto_ee

    .line 9103
    :catch_2e6
    move-exception v21

    const-string/jumbo v21, "MenuPopupWindow"

    const-string/jumbo v22, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10f

    .line 10320
    :cond_2f2
    const/16 v21, 0x0

    aget v21, v22, v21

    sub-int v21, v21, v8

    .line 10321
    if-gez v21, :cond_2fd

    .line 10322
    const/4 v9, 0x1

    goto/16 :goto_18a

    .line 10324
    :cond_2fd
    const/4 v9, 0x0

    goto/16 :goto_18a

    .line 383
    .restart local v9    # "nextMenuPosition":I
    :cond_300
    const/4 v15, 0x0

    goto/16 :goto_191

    .line 401
    .restart local v11    # "parentOffsetLeft":I
    .restart local v12    # "parentOffsetTop":I
    .restart local v15    # "showOnRight":Z
    .restart local v16    # "tempLocation":[I
    :cond_303
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v21

    sub-int v19, v11, v21

    .restart local v19    # "x":I
    goto/16 :goto_1d4

    .line 404
    .end local v19    # "x":I
    :cond_30b
    if-eqz v15, :cond_315

    .line 405
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v21

    add-int v19, v11, v21

    .restart local v19    # "x":I
    goto/16 :goto_1d4

    .line 407
    .end local v19    # "x":I
    :cond_315
    sub-int v19, v11, v8

    .restart local v19    # "x":I
    goto/16 :goto_1d4

    .line 416
    .end local v9    # "nextMenuPosition":I
    .end local v11    # "parentOffsetLeft":I
    .end local v12    # "parentOffsetTop":I
    .end local v15    # "showOnRight":Z
    .end local v16    # "tempLocation":[I
    .end local v19    # "x":I
    :cond_319
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    move/from16 v21, v0

    if-eqz v21, :cond_32b

    .line 417
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I

    move/from16 v21, v0

    .line 12477
    move/from16 v0, v21

    iput v0, v14, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 419
    :cond_32b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    move/from16 v21, v0

    if-eqz v21, :cond_33e

    .line 420
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 13076
    :cond_33e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 13508
    .local v4, "epicenterBounds":Landroid/graphics/Rect;
    iput-object v4, v14, Landroid/support/v7/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    goto/16 :goto_1df

    .end local v4    # "epicenterBounds":Landroid/graphics/Rect;
    .end local v13    # "parentView":Landroid/view/View;
    :cond_346
    move/from16 v21, v24

    goto/16 :goto_2ae
.end method


# virtual methods
.method public final addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 333
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 337
    :goto_e
    return-void

    .line 335
    :cond_f
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public final dismiss()V
    .registers 7

    .prologue
    .line 263
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 264
    .local v3, "length":I
    if-lez v3, :cond_2a

    .line 265
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v5, v3, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 266
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 267
    .local v0, "addedMenus":[Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_2a

    .line 268
    aget-object v2, v0, v1

    .line 269
    .local v2, "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    .line 1823
    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    .line 269
    if-eqz v4, :cond_27

    .line 270
    iget-object v4, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 267
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 274
    .end local v0    # "addedMenus":[Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_2a
    return-void
.end method

.method public final flagActionItems()Z
    .registers 2

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public final getListView()Landroid/widget/ListView;
    .registers 3

    .prologue
    .line 706
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 708
    :goto_9
    return-object v0

    .line 706
    :cond_a
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 708
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 20741
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    .line 20909
    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    goto :goto_9
.end method

.method public final isShowing()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    .line 15823
    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 529
    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c
.end method

.method public final onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 12
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 608
    .line 19596
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v2, v5

    :goto_9
    if-ge v2, v6, :cond_1d

    .line 19597
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 19598
    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_1a

    .line 609
    .local v2, "menuIndex":I
    :goto_17
    if-gez v2, :cond_1f

    .line 663
    :cond_19
    :goto_19
    return-void

    .line 19596
    .end local v2    # "menuIndex":I
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 19603
    :cond_1d
    const/4 v2, -0x1

    goto :goto_17

    .line 614
    .restart local v2    # "menuIndex":I
    :cond_1f
    add-int/lit8 v3, v2, 0x1

    .line 615
    .local v3, "nextMenuIndex":I
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 616
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 617
    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 621
    :cond_36
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 622
    .local v1, "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, p0}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 623
    iget-boolean v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    if-eqz v4, :cond_5b

    .line 625
    iget-object v4, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    .line 20085
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_54

    .line 20086
    iget-object v4, v4, Landroid/support/v7/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 626
    :cond_54
    iget-object v4, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    .line 20432
    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 628
    :cond_5b
    iget-object v4, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 630
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 631
    .local v0, "count":I
    if-lez v0, :cond_a1

    .line 632
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 637
    :goto_76
    if-nez v0, :cond_a8

    .line 639
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 641
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v4, :cond_85

    .line 642
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 645
    :cond_85
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v4, :cond_9a

    .line 646
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 647
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 649
    :cond_98
    iput-object v8, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 655
    :cond_9a
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v4}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto/16 :goto_19

    .line 634
    :cond_a1
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v4

    iput v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_76

    .line 656
    :cond_a8
    if-eqz p2, :cond_19

    .line 660
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 661
    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto/16 :goto_19
.end method

.method public final onDismiss()V
    .registers 7

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, "dismissedInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_8
    if-ge v2, v0, :cond_1d

    .line 541
    iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 542
    .local v3, "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v3, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    .line 16823
    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    .line 542
    if-nez v4, :cond_26

    .line 543
    move-object v1, v3

    .line 550
    .end local v3    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1d
    if-eqz v1, :cond_25

    .line 551
    iget-object v4, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 553
    :cond_25
    return-void

    .line 540
    .restart local v3    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 278
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_f

    const/16 v1, 0x52

    if-ne p2, v1, :cond_f

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 282
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 6
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/SubMenuBuilder;

    .prologue
    const/4 v1, 0x1

    .line 570
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 571
    .local v0, "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_7

    .line 18741
    iget-object v2, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    .line 18909
    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 573
    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    .line 586
    .end local v0    # "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1e
    :goto_1e
    return v1

    .line 578
    :cond_1f
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 579
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 581
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_1e

    .line 582
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v2, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    goto :goto_1e

    .line 586
    :cond_32
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 690
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_14

    .line 691
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 694
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 695
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 694
    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 697
    :cond_14
    return-void
.end method

.method public final setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .prologue
    .line 564
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 565
    return-void
.end method

.method public final setForceShowIcon(Z)V
    .registers 2
    .param p1, "forceShow"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 220
    return-void
.end method

.method public final setGravity(I)V
    .registers 3
    .param p1, "dropDownGravity"    # I

    .prologue
    .line 681
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_12

    .line 682
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 683
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 684
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 683
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 686
    :cond_12
    return-void
.end method

.method public final setHorizontalOffset(I)V
    .registers 3
    .param p1, "x"    # I

    .prologue
    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    .line 714
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I

    .line 715
    return-void
.end method

.method public final setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 701
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 702
    return-void
.end method

.method public final setShowTitle(Z)V
    .registers 2
    .param p1, "showTitle"    # Z

    .prologue
    .line 725
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z

    .line 726
    return-void
.end method

.method public final setVerticalOffset(I)V
    .registers 3
    .param p1, "y"    # I

    .prologue
    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    .line 720
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I

    .line 721
    return-void
.end method

.method public final show()V
    .registers 5

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 255
    :cond_6
    :goto_6
    return-void

    .line 241
    :cond_7
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuBuilder;

    .line 242
    .local v1, "menu":Landroid/support/v7/view/menu/MenuBuilder;
    invoke-direct {p0, v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    goto :goto_d

    .line 244
    .end local v1    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_1d
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 246
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 248
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 249
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v2, :cond_41

    const/4 v0, 0x1

    .line 250
    .local v0, "addGlobalListener":Z
    :goto_2f
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 251
    if-eqz v0, :cond_6

    .line 252
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_6

    .line 249
    .end local v0    # "addGlobalListener":Z
    :cond_41
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public final updateMenuView(Z)V
    .registers 4
    .param p1, "cleared"    # Z

    .prologue
    .line 557
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 17741
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    .line 17909
    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 558
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 560
    :cond_22
    return-void
.end method
