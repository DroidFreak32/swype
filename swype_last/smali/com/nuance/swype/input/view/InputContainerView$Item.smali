.class Lcom/nuance/swype/input/view/InputContainerView$Item;
.super Ljava/lang/Object;
.source "InputContainerView.java"

# interfaces
.implements Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/view/InputContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field private allowDragX:Z

.field private allowDragY:Z

.field private dockGravity:I

.field private dragFrame:Lcom/nuance/swype/input/view/DragFrame;

.field private dragLock:Z

.field private final dragPos:[I

.field private final dragStart:Landroid/graphics/Rect;

.field private dxDrag:I

.field private dyDrag:I

.field private inputLayout:Lcom/nuance/swype/input/view/InputLayout;

.field private inputViewRectLastLayout:Landroid/graphics/Rect;

.field private isDocked:Z

.field private isDragFrameVisible:Z

.field private isSnapPending:Z

.field private miniDockFrame:Landroid/widget/FrameLayout;

.field private pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

.field private posTemp:[I

.field private rootView:Landroid/view/View;

.field private snapThreshold:I

.field private themeId:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/swype/input/view/InputContainerView;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/view/InputContainerView;)V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    iput-object p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/16 v0, 0x51

    iput v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dockGravity:I

    .line 205
    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    .line 210
    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    .line 213
    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragX:Z

    .line 214
    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragY:Z

    .line 215
    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock:Z

    .line 225
    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isSnapPending:Z

    .line 228
    sget-object v0, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->NOTHING:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    .line 423
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    .line 678
    iput v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dxDrag:I

    .line 679
    iput v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dyDrag:I

    .line 682
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragStart:Landroid/graphics/Rect;

    .line 685
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragPos:[I

    .line 233
    invoke-virtual {p1}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$dimen;->movable_keyboard_docking_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->snapThreshold:I

    .line 244
    invoke-virtual {p1}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z
    invoke-static {p1}, Lcom/nuance/swype/input/view/InputContainerView;->access$000(Lcom/nuance/swype/input/view/InputContainerView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->create(Landroid/content/Context;Z)Lcom/nuance/swype/input/view/InputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    .line 245
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->hasInternalDragFrame()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 247
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/view/InputLayout;->showDragFrame(Z)V

    .line 248
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/view/InputLayout;->setDragListener(Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;)V

    .line 254
    :goto_5f
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/view/InputContainerView;->addView(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    .line 256
    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    .line 258
    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {p1}, Lcom/nuance/swype/input/view/InputContainerView;->access$100(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->themeId:Ljava/lang/String;

    .line 259
    return-void

    .line 251
    :cond_75
    sget v0, Lcom/nuance/swype/input/R$layout;->input_drag_frame:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/view/DragFrame;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    .line 252
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/view/DragFrame;->setDragListener(Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;)V

    goto :goto_5f
.end method

.method static synthetic access$2100(Lcom/nuance/swype/input/view/InputContainerView$Item;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView$Item;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setDragGripIsDrag(ZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/nuance/swype/input/view/InputContainerView$Item;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView$Item;

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/nuance/swype/input/view/InputContainerView$Item;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView$Item;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->restoreFrameLayoutPos()V

    return-void
.end method

.method private confineDragMovement(II)[I
    .registers 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 688
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragPos:[I

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragStart:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    aput v1, v0, v7

    .line 689
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragPos:[I

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragStart:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    aput v1, v0, v8

    .line 690
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragPos:[I

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragStart:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragStart:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    .line 691
    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleAreaInsets()Landroid/graphics/Rect;

    move-result-object v4

    move v5, p1

    move v6, p2

    .line 690
    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->adjustConfine([IIILandroid/graphics/Rect;II)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/view/InputContainerView;->access$1600(Lcom/nuance/swype/input/view/InputContainerView;[IIILandroid/graphics/Rect;II)V

    .line 692
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragPos:[I

    aget v1, v0, v7

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragStart:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    aput v1, v0, v7

    .line 693
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragPos:[I

    aget v1, v0, v8

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragStart:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    aput v1, v0, v8

    .line 694
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragPos:[I

    return-object v0
.end method

.method private getMiniDockFrameBackgroundDrawable(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "keyboardDockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 308
    sget-object v0, Lcom/nuance/swype/input/view/InputContainerView$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardDockMode:[I

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 314
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$100(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$attr;->keyboardBackground:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_17
    return-object v0

    .line 310
    :pswitch_18
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$100(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$attr;->keyboardBackgroundWingRight:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_17

    .line 312
    :pswitch_25
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$100(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$attr;->keyboardBackgroundWingLeft:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_17

    .line 308
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_18
        :pswitch_25
    .end packed-switch
.end method

.method private getPrefBottom(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I
    .registers 6
    .param p1, "orientation"    # I
    .param p2, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$100(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 612
    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyBottom(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->access$1200(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 611
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPrefX(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I
    .registers 6
    .param p1, "orientation"    # I
    .param p2, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$100(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 603
    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyX(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->access$1000(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 602
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPrefY(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I
    .registers 6
    .param p1, "orientation"    # I
    .param p2, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$100(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 607
    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyY(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->access$1100(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 606
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDecorationAdjustment()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 484
    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->layoutChild(Landroid/view/View;)V
    invoke-static {v5, v6}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;)V

    .line 485
    const/4 v1, 0x0

    .line 487
    .local v1, "inputViewHeightChanged":Z
    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    iget-object v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/view/InputLayout;->getInputAreaRectRelativeTo(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 488
    .local v2, "inputViewRectNow":Landroid/graphics/Rect;
    if-eqz v2, :cond_5c

    .line 490
    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    if-eqz v5, :cond_5c

    .line 491
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v5, v6, :cond_4f

    .line 492
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v5, v6, :cond_4f

    .line 493
    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    .line 1190
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 1191
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    aput v6, v0, v4

    .line 1192
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, v6, v5

    aput v5, v0, v3

    .line 495
    .local v0, "diff":[I
    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    aget v6, v0, v4

    neg-int v6, v6

    aget v7, v0, v3

    neg-int v7, v7

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->moveLayoutPos(Landroid/view/View;II)V
    invoke-static {v5, v6, v7}, Lcom/nuance/swype/input/view/InputContainerView;->access$600(Landroid/view/View;II)V

    .line 497
    .end local v0    # "diff":[I
    :cond_4f
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eq v5, v6, :cond_5f

    move v1, v3

    .line 501
    :cond_5c
    :goto_5c
    iput-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    .line 502
    return v1

    :cond_5f
    move v1, v4

    .line 497
    goto :goto_5c
.end method

.method private inflate(I)Landroid/view/View;
    .registers 5
    .param p1, "layoutId"    # I

    .prologue
    .line 267
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 268
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$100(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 269
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private restoreFrameLayoutPos()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 631
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 633
    sget-object v4, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->RESTORE:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iput-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    .line 657
    :cond_e
    :goto_e
    return-void

    .line 636
    :cond_f
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 637
    .local v1, "orientation":I
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v4}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getPrefX(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I

    move-result v2

    .line 638
    .local v2, "x":I
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v4}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getPrefY(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I

    move-result v3

    .line 641
    .local v3, "y":I
    iget-boolean v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragY:Z

    if-nez v4, :cond_a1

    .line 642
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputContainerView;->getHeight()I

    move-result v0

    .line 646
    .local v0, "bottom":I
    :goto_3d
    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/view/InputContainerView;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "restoreFramePos(): or: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; x: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x1

    const-string/jumbo v7, " bottom:"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 647
    if-eq v2, v8, :cond_e

    if-eq v3, v8, :cond_e

    .line 650
    iget-boolean v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragX:Z

    if-nez v4, :cond_90

    .line 651
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    check-cast v4, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    iget v2, v4, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 653
    :cond_90
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget-object v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v6}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleAreaInsets()Landroid/graphics/Rect;

    move-result-object v6

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->setLayoutPosConfineBot(Landroid/view/View;Landroid/graphics/Rect;II)V
    invoke-static {v4, v5, v6, v2, v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$1300(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;Landroid/graphics/Rect;II)V

    .line 654
    iput-boolean v9, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    goto/16 :goto_e

    .line 644
    .end local v0    # "bottom":I
    :cond_a1
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v4}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getPrefBottom(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I

    move-result v0

    .restart local v0    # "bottom":I
    goto :goto_3d
.end method

.method private restoreFrameLayoutPosMiniKeyboard(I)V
    .registers 10
    .param p1, "height"    # I

    .prologue
    .line 660
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v5}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 661
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    .line 662
    .local v0, "orientation":I
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->getDimsRect()Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/nuance/swype/input/view/InputContainerView;->access$1400(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;

    move-result-object v1

    .line 663
    .local v1, "parent":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v4}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getPrefX(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I

    move-result v2

    .line 664
    .local v2, "x":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v3, v4, p1

    .line 665
    .local v3, "y":I
    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/view/InputContainerView;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "restoreFrameLayoutPosMiniKeyboard(): "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, " x: "

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "; y: "

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 666
    if-lez v3, :cond_65

    .line 667
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-static {v4, v2, v3}, Lcom/nuance/swype/view/BasicViewLayout;->setPos(Landroid/view/View;II)V

    .line 670
    .end local v0    # "orientation":I
    .end local v1    # "parent":Landroid/graphics/Rect;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_65
    return-void
.end method

.method private saveFrameLayoutPos()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 616
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 617
    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/view/InputContainerView;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "saveFrameLayoutPos(): waiting for layout"

    aput-object v7, v2, v9

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 618
    sget-object v0, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->SAVE:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    .line 629
    :goto_1c
    return-void

    .line 621
    :cond_1d
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 622
    .local v1, "orientation":I
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 623
    .local v6, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    iget v3, v6, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 624
    .local v3, "x":I
    iget v4, v6, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 625
    .local v4, "y":I
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, v4, v0

    .line 626
    .local v5, "bottom":I
    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/view/InputContainerView;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isLayoutRequested(): or: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; x: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; y: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v9

    const-string/jumbo v7, " bottom: "

    aput-object v7, v2, v10

    const/4 v7, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 627
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/view/InputContainerView$Item;->saveToPrefs(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;III)V

    goto :goto_1c
.end method

.method private saveToPrefs(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;III)V
    .registers 8
    .param p1, "orientation"    # I
    .param p2, "mode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyX(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$1000(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 597
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyY(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$1100(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 598
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyBottom(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$1200(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 599
    return-void
.end method

.method private setDragGripIsDrag(ZZ)V
    .registers 4
    .param p1, "isDrag"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 417
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    instance-of v0, v0, Lcom/nuance/swype/input/view/DragFrameGripPad;

    if-eqz v0, :cond_11

    .line 418
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    check-cast v0, Lcom/nuance/swype/input/view/DragFrameGripPad;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/DragFrameGripPad;->setGripIsDrag(ZZ)V

    .line 420
    :cond_11
    return-void
.end method


# virtual methods
.method protected addOuterDragFrame()V
    .registers 6

    .prologue
    .line 365
    iget-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    if-nez v2, :cond_33

    .line 367
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputLayout;->getLeft()I

    move-result v0

    .line 368
    .local v0, "x":I
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputLayout;->getTop()I

    move-result v1

    .line 369
    .local v1, "y":I
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeView(Landroid/view/View;)V

    .line 370
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/view/DragFrame;->setContentView(Lcom/nuance/swype/input/view/InputLayout;)V

    .line 372
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-static {v0, v1}, Lcom/nuance/swype/view/BasicViewLayout;->newLayoutParams(II)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/view/InputContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    iput-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    .line 374
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 375
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    .line 377
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_33
    return-void
.end method

.method public dragLock(Z)V
    .registers 5
    .param p1, "lock"    # Z

    .prologue
    const/4 v1, 0x1

    .line 575
    iput-boolean p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock:Z

    .line 576
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v2, :cond_21

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    .line 577
    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v2, :cond_21

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    .line 578
    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, v2, :cond_31

    .line 579
    :cond_21
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->hasInternalDragFrame()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 580
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    if-nez p1, :cond_32

    move v0, v1

    :goto_2e
    invoke-virtual {v2, v1, v0}, Lcom/nuance/swype/input/view/InputLayout;->setDragGripIsDrag(ZZ)V

    .line 583
    :cond_31
    return-void

    .line 580
    :cond_32
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public getCandidatesView()Landroid/view/View;
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    if-eqz v0, :cond_b

    .line 797
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->getCandidatesView()Landroid/view/View;

    move-result-object v0

    .line 799
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getInputLayout()Lcom/nuance/swype/input/view/InputLayout;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    return-object v0
.end method

.method protected getInputLayoutHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getInputView()Landroid/view/View;
    .registers 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    if-eqz v0, :cond_b

    .line 813
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->getInputView()Landroid/view/View;

    move-result-object v0

    .line 815
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getInputWindowRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-static {v0}, Lcom/nuance/swype/util/GeomUtil;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method protected getMeasuredRootFrameDims(Z)Landroid/graphics/Rect;
    .registers 7
    .param p1, "measure"    # Z

    .prologue
    const/high16 v4, -0x80000000

    .line 456
    if-eqz p1, :cond_28

    .line 457
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$100(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 458
    .local v0, "displayRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    .line 459
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 460
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 458
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 462
    .end local v0    # "displayRect":Landroid/graphics/Rect;
    :cond_28
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->getMeasuredRect(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$400(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method protected getRootView()Landroid/view/View;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public getTheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->themeId:Ljava/lang/String;

    return-object v0
.end method

.method public getVisiblePosInWindow([II)V
    .registers 8
    .param p1, "out"    # [I
    .param p2, "gravity"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 450
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->getVisiblePosInWindow([I)V

    .line 451
    aget v0, p1, v3

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    .line 1049
    and-int/lit8 v2, p2, 0x7

    sparse-switch v2, :sswitch_data_3a

    .line 451
    :goto_10
    aput v0, p1, v3

    .line 452
    aget v0, p1, v4

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    .line 1064
    and-int/lit8 v2, p2, 0x70

    sparse-switch v2, :sswitch_data_44

    .line 452
    :goto_1b
    aput v0, p1, v4

    .line 453
    return-void

    .line 1054
    :sswitch_1e
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1055
    goto :goto_10

    .line 1057
    :sswitch_26
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_10

    .line 1069
    :sswitch_2c
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1070
    goto :goto_1b

    .line 1072
    :sswitch_34
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1b

    .line 1049
    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_1e
        0x5 -> :sswitch_26
    .end sparse-switch

    .line 1064
    :sswitch_data_44
    .sparse-switch
        0x10 -> :sswitch_2c
        0x50 -> :sswitch_34
    .end sparse-switch
.end method

.method public getVisibleWindowRect()Landroid/graphics/Rect;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 432
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 433
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    .line 434
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 436
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleTopInWindow()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 437
    return-object v0
.end method

.method public handleLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 509
    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/view/InputContainerView;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleLayout(): ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "); "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, p4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, p5, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 512
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->handleDecorationAdjustment()Z

    move-result v1

    if-nez v1, :cond_4a

    if-eqz p1, :cond_81

    .line 517
    :cond_4a
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v2}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    .line 518
    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z
    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$000(Lcom/nuance/swype/input/view/InputContainerView;)Z

    move-result v1

    if-nez v1, :cond_81

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v2}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    .line 519
    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v2}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 520
    :cond_7c
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->restorePos()V
    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$800(Lcom/nuance/swype/input/view/InputContainerView;)V

    .line 524
    :cond_81
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleAreaInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 526
    .local v0, "insets":Landroid/graphics/Rect;
    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isSnapPending:Z

    if-eqz v1, :cond_94

    .line 528
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->snapThreshold:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setLayoutSnapToEdge(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 529
    iput-boolean v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isSnapPending:Z

    .line 537
    :cond_94
    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    if-eqz v1, :cond_a1

    .line 539
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dockGravity:I

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->setLayoutDocked(Landroid/view/View;I)V
    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/view/InputContainerView;->access$900(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;I)V

    .line 542
    :cond_a1
    sget-object v1, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->RESTORE:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 543
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->restoreFrameLayoutPos()V

    .line 544
    sget-object v1, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->NOTHING:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iput-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    .line 552
    :cond_b2
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v1, v2, v0, v5}, Lcom/nuance/swype/input/view/InputContainerView;->setLayoutConfined(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 554
    sget-object v1, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->SAVE:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 555
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->saveFrameLayoutPos()V

    .line 556
    sget-object v1, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->NOTHING:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iput-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    .line 559
    :cond_ca
    return-void
.end method

.method public isCoverShowing()Z
    .registers 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->getCoverView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public moveFrameBy(II)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    .line 674
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleAreaInsets()Landroid/graphics/Rect;

    move-result-object v2

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->moveConfine(Landroid/view/View;Landroid/graphics/Rect;II)V
    invoke-static {v0, v1, v2, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->access$1500(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;Landroid/graphics/Rect;II)V

    .line 675
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 875
    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/view/InputContainerView;->access$700()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onClick"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 876
    return-void
.end method

.method public onDrag(Landroid/view/View;II)V
    .registers 9
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v2, 0x0

    .line 711
    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock:Z

    if-eqz v1, :cond_6

    .line 727
    .end local p2    # "dx":I
    .end local p3    # "dy":I
    :goto_5
    return-void

    .line 715
    .restart local p2    # "dx":I
    .restart local p3    # "dy":I
    :cond_6
    iget v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dxDrag:I

    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragX:Z

    if-eqz v1, :cond_4a

    move v1, p2

    :goto_d
    add-int/2addr v1, v3

    iput v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dxDrag:I

    .line 716
    iget v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dyDrag:I

    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragY:Z

    if-eqz v1, :cond_4c

    move v1, p3

    :goto_17
    add-int/2addr v1, v3

    iput v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dyDrag:I

    .line 717
    invoke-static {}, Lcom/nuance/android/compat/ViewCompat;->supports2dTranslation()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 719
    iget v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dxDrag:I

    iget v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dyDrag:I

    invoke-direct {p0, v1, v3}, Lcom/nuance/swype/input/view/InputContainerView$Item;->confineDragMovement(II)[I

    move-result-object v0

    .line 720
    .local v0, "delta":[I
    aget v1, v0, v2

    iput v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dxDrag:I

    .line 721
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dyDrag:I

    .line 722
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dxDrag:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dyDrag:I

    int-to-float v4, v4

    invoke-static {v1, v3, v4}, Lcom/nuance/android/compat/ViewCompat;->setTranslation(Landroid/view/View;FF)V

    .line 726
    .end local v0    # "delta":[I
    :goto_3c
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    iget-boolean v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragX:Z

    if-eqz v3, :cond_52

    .end local p2    # "dx":I
    :goto_42
    iget-boolean v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragY:Z

    if-eqz v3, :cond_54

    .end local p3    # "dy":I
    :goto_46
    invoke-virtual {v1, p2, p3}, Lcom/nuance/swype/input/view/InputLayout;->onDrag(II)V

    goto :goto_5

    .restart local p2    # "dx":I
    .restart local p3    # "dy":I
    :cond_4a
    move v1, v2

    .line 715
    goto :goto_d

    :cond_4c
    move v1, v2

    .line 716
    goto :goto_17

    .line 724
    :cond_4e
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/view/InputContainerView$Item;->moveFrameBy(II)V

    goto :goto_3c

    :cond_52
    move p2, v2

    .line 726
    goto :goto_42

    .end local p2    # "dx":I
    :cond_54
    move p3, v2

    goto :goto_46
.end method

.method public onDragBegin(Landroid/view/View;)V
    .registers 9
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 699
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock:Z

    if-eqz v0, :cond_6

    .line 707
    :goto_5
    return-void

    .line 702
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragStart:Landroid/graphics/Rect;

    .line 2021
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 2022
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 2021
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 703
    iput v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dxDrag:I

    .line 704
    iput v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dyDrag:I

    .line 705
    iput-boolean v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    .line 706
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->onBeginDrag()V

    goto :goto_5
.end method

.method public onDragEnd(Landroid/view/View;)V
    .registers 5
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 733
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock:Z

    if-eqz v0, :cond_7

    .line 745
    :goto_6
    return-void

    .line 736
    :cond_7
    invoke-static {}, Lcom/nuance/android/compat/ViewCompat;->supports2dTranslation()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 737
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-static {v0, v1, v1}, Lcom/nuance/android/compat/ViewCompat;->setTranslation(Landroid/view/View;FF)V

    .line 738
    iget v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dxDrag:I

    iget v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dyDrag:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->moveFrameBy(II)V

    .line 740
    :cond_19
    iput v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dxDrag:I

    .line 741
    iput v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dyDrag:I

    .line 742
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->onEndDrag()V

    .line 743
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->snap()V

    .line 744
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->saveFrameLayoutPos()V

    goto :goto_6
.end method

.method public removeDragFrame()V
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-eqz v0, :cond_a

    .line 394
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeView(Landroid/view/View;)V

    .line 398
    :cond_9
    :goto_9
    return-void

    .line 395
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    if-eqz v0, :cond_9

    .line 396
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeView(Landroid/view/View;)V

    goto :goto_9
.end method

.method protected removeMiniDockFrame()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->miniDockFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_6

    .line 301
    :goto_5
    return-void

    .line 292
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->miniDockFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->miniDockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeView(Landroid/view/View;)V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->miniDockFrame:Landroid/widget/FrameLayout;

    .line 296
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-static {v2, v2}, Lcom/nuance/swype/view/BasicViewLayout;->newLayoutParams(II)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/view/InputContainerView;->addView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    goto :goto_5
.end method

.method protected removeOuterDragFrame()V
    .registers 6

    .prologue
    .line 380
    iget-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    if-eqz v2, :cond_32

    .line 381
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/DragFrame;->getLeft()I

    move-result v0

    .line 382
    .local v0, "x":I
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/DragFrame;->getTop()I

    move-result v1

    .line 383
    .local v1, "y":I
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeView(Landroid/view/View;)V

    .line 384
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/view/DragFrame;->setContentView(Lcom/nuance/swype/input/view/InputLayout;)V

    .line 385
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-static {v0, v1}, Lcom/nuance/swype/view/BasicViewLayout;->newLayoutParams(II)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/view/InputContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    iput-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    .line 387
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 388
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    .line 390
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_32
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 819
    invoke-static {p1}, Lcom/nuance/swype/util/FrameworkUtil;->disownParent(Landroid/view/View;)V

    .line 820
    return-void
.end method

.method public setAllowedMovement(ZZ)V
    .registers 3
    .param p1, "allowDragX"    # Z
    .param p2, "allowDragY"    # Z

    .prologue
    .line 570
    iput-boolean p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragX:Z

    .line 571
    iput-boolean p2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragY:Z

    .line 572
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .registers 3
    .param p1, "candidatesView"    # Landroid/view/View;

    .prologue
    .line 791
    invoke-static {p1}, Lcom/nuance/swype/util/ViewUtil;->resetView(Landroid/view/View;)V

    .line 792
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->setCandidatesView(Landroid/view/View;)V

    .line 793
    return-void
.end method

.method public setCover(Landroid/view/View;Z)V
    .registers 4
    .param p1, "coverView"    # Landroid/view/View;
    .param p2, "enableAnim"    # Z

    .prologue
    .line 776
    invoke-static {p1}, Lcom/nuance/swype/util/ViewUtil;->resetView(Landroid/view/View;)V

    .line 777
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/InputLayout;->setCoverView(Landroid/view/View;Z)V

    .line 778
    return-void
.end method

.method public setCover(Landroid/view/View;ZII)V
    .registers 6
    .param p1, "coverView"    # Landroid/view/View;
    .param p2, "enableAnim"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 781
    invoke-static {p1}, Lcom/nuance/swype/util/ViewUtil;->resetView(Landroid/view/View;)V

    .line 782
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/swype/input/view/InputLayout;->setCoverView(Landroid/view/View;ZII)V

    .line 783
    return-void
.end method

.method public setDockGravity(I)V
    .registers 3
    .param p1, "dockGravity"    # I

    .prologue
    .line 563
    iget v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dockGravity:I

    if-eq v0, p1, :cond_b

    .line 564
    iput p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dockGravity:I

    .line 565
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 567
    :cond_b
    return-void
.end method

.method public setDocked(Z)V
    .registers 3
    .param p1, "dock"    # Z

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    if-eq v0, p1, :cond_b

    .line 590
    iput-boolean p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    .line 591
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 593
    :cond_b
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .registers 3
    .param p1, "inputView"    # Landroid/view/View;

    .prologue
    .line 807
    invoke-static {p1}, Lcom/nuance/swype/util/ViewUtil;->resetView(Landroid/view/View;)V

    .line 808
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->setInputView(Landroid/view/View;)V

    .line 809
    return-void
.end method

.method protected setLayoutSnapToEdge(Landroid/view/View;Landroid/graphics/Rect;I)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "threshold"    # I

    .prologue
    .line 831
    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->getMeasuredRect(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/nuance/swype/input/view/InputContainerView;->access$1700(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 832
    .local v3, "frame":Landroid/graphics/Rect;
    if-eqz p2, :cond_9

    .line 833
    invoke-static {v3, p2}, Lcom/nuance/swype/util/GeomUtil;->shrink(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 835
    :cond_9
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->getDimsRect()Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/nuance/swype/input/view/InputContainerView;->access$1800(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 836
    .local v0, "container":Landroid/graphics/Rect;
    invoke-static {v3, v0, p3}, Lcom/nuance/swype/util/GeomUtil;->getSnapDistHor(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    .line 837
    .local v1, "dx":I
    invoke-static {v3, v0, p3}, Lcom/nuance/swype/util/GeomUtil;->getSnapDistVer(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 838
    .local v2, "dy":I
    if-nez v1, :cond_1b

    if-eqz v2, :cond_2d

    .line 840
    :cond_1b
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->moveLayoutPos(Landroid/view/View;II)V
    invoke-static {v4, v1, v2}, Lcom/nuance/swype/input/view/InputContainerView;->access$1900(Landroid/view/View;II)V

    .line 841
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputLayout;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 842
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v4, v1, v2}, Lcom/nuance/swype/input/view/InputLayout;->onSnapToEdge(II)V

    .line 845
    :cond_2d
    return-void
.end method

.method public showCandidates(Z)V
    .registers 3
    .param p1, "shown"    # Z

    .prologue
    .line 760
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->showCandidates(Z)V

    .line 761
    return-void
.end method

.method protected showDragFrame(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 408
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->hasInternalDragFrame()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 409
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->showDragFrame(Z)V

    .line 413
    :goto_d
    iput-boolean p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    .line 414
    return-void

    .line 411
    :cond_10
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->showDragFrameOuter(Z)V

    goto :goto_d
.end method

.method protected showDragFrameOuter(Z)V
    .registers 2
    .param p1, "show"    # Z

    .prologue
    .line 400
    if-eqz p1, :cond_6

    .line 401
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->addOuterDragFrame()V

    .line 405
    :goto_5
    return-void

    .line 403
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeOuterDragFrame()V

    goto :goto_5
.end method

.method public showInput(Z)V
    .registers 3
    .param p1, "shown"    # Z

    .prologue
    .line 767
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->showInput(Z)V

    .line 768
    return-void
.end method

.method public showShadow(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 764
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->showShadow(Z)V

    .line 765
    return-void
.end method

.method protected snap()V
    .registers 4

    .prologue
    .line 749
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputLayout;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_16

    .line 751
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleAreaInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 752
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->snapThreshold:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->snapToEdge(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 757
    .end local v0    # "insets":Landroid/graphics/Rect;
    :goto_15
    return-void

    .line 755
    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isSnapPending:Z

    goto :goto_15
.end method

.method protected snapToEdge(Landroid/view/View;Landroid/graphics/Rect;I)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "threshold"    # I

    .prologue
    .line 856
    invoke-static {p1}, Lcom/nuance/swype/util/GeomUtil;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 857
    .local v3, "frame":Landroid/graphics/Rect;
    if-eqz p2, :cond_9

    .line 858
    invoke-static {v3, p2}, Lcom/nuance/swype/util/GeomUtil;->shrink(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 860
    :cond_9
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # invokes: Lcom/nuance/swype/input/view/InputContainerView;->getDimsRect()Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/nuance/swype/input/view/InputContainerView;->access$2000(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 861
    .local v0, "container":Landroid/graphics/Rect;
    invoke-static {v3, v0, p3}, Lcom/nuance/swype/util/GeomUtil;->getSnapDistHor(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    .line 862
    .local v1, "dx":I
    invoke-static {v3, v0, p3}, Lcom/nuance/swype/util/GeomUtil;->getSnapDistVer(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 863
    .local v2, "dy":I
    if-nez v1, :cond_1b

    if-eqz v2, :cond_2b

    .line 866
    :cond_1b
    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->moveFrameBy(II)V

    .line 867
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputLayout;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 868
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v4, v1, v2}, Lcom/nuance/swype/input/view/InputLayout;->onSnapToEdge(II)V

    .line 871
    :cond_2b
    return-void
.end method

.method protected updateMiniDockFrame()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 321
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->miniDockFullAppAreaMode:Z
    invoke-static {v2}, Lcom/nuance/swype/input/view/InputContainerView;->access$200(Lcom/nuance/swype/input/view/InputContainerView;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 322
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeMiniDockFrame()V

    .line 362
    :goto_d
    return-void

    .line 327
    :cond_e
    sget-object v2, Lcom/nuance/swype/input/view/InputContainerView$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardDockMode:[I

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v3}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_86

    .line 335
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeMiniDockFrame()V

    goto :goto_d

    .line 329
    :pswitch_23
    const v0, 0x800003

    .line 339
    .local v0, "gravity":I
    :goto_26
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->miniDockFrame:Landroid/widget/FrameLayout;

    if-nez v2, :cond_62

    .line 342
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeView(Landroid/view/View;)V

    .line 344
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->miniDockFrame:Landroid/widget/FrameLayout;

    .line 347
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 348
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/view/InputLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->miniDockFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->miniDockFrame:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    invoke-static {v5, v5, v3, v4}, Lcom/nuance/swype/view/BasicViewLayout;->newLayoutParams(IIII)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->miniDockFrame:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    .line 355
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->miniDockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/view/InputContainerView;->addView(Landroid/view/View;)V

    .line 357
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_62
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 358
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 360
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->miniDockFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    # getter for: Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-static {v3}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getMiniDockFrameBackgroundDrawable(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    goto :goto_d

    .line 332
    .end local v0    # "gravity":I
    :pswitch_81
    const v0, 0x800005

    .line 333
    .restart local v0    # "gravity":I
    goto :goto_26

    .line 327
    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_23
        :pswitch_81
    .end packed-switch
.end method
