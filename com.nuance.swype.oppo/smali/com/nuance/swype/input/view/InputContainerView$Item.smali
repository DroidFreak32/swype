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
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field private allowDragX:Z

.field private allowDragY:Z

.field private dockGravity:I

.field private dragFrame:Lcom/nuance/swype/input/view/DragFrame;

.field private dragLock:Z

.field private inputLayout:Lcom/nuance/swype/input/view/InputLayout;

.field private inputViewRectLastLayout:Landroid/graphics/Rect;

.field private isDocked:Z

.field private isDragFrameVisible:Z

.field private isSnapPending:Z

.field private pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

.field private posTemp:[I

.field private rootView:Landroid/view/View;

.field private snapThreshold:I

.field final synthetic this$0:Lcom/nuance/swype/input/view/InputContainerView;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/view/InputContainerView;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    iput-object p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/16 v0, 0x51

    iput v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dockGravity:I

    .line 203
    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    .line 208
    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    .line 211
    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragX:Z

    .line 212
    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragY:Z

    .line 213
    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock:Z

    .line 223
    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isSnapPending:Z

    .line 226
    sget-object v0, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->NOTHING:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    .line 332
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    .line 232
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

    invoke-static {p1}, Lcom/nuance/swype/input/view/InputContainerView;->access$100(Lcom/nuance/swype/input/view/InputContainerView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->create(Landroid/content/Context;Z)Lcom/nuance/swype/input/view/InputLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    .line 245
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->hasInternalDragFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/view/InputLayout;->showDragFrame(Z)V

    .line 248
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/view/InputLayout;->setDragListener(Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/view/InputContainerView;->addView(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    .line 256
    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    .line 257
    return-void

    .line 251
    :cond_0
    sget v0, Lcom/nuance/swype/input/R$layout;->input_drag_frame:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/view/DragFrame;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    .line 252
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/view/DragFrame;->setDragListener(Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/view/InputContainerView$Item;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView$Item;
    .param p1, "x1"    # I

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->restoreFrameLayoutPosMiniKeyboard(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/view/InputContainerView$Item;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView$Item;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setDragGripIsDrag(ZZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/nuance/swype/input/view/InputContainerView$Item;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView$Item;

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/nuance/swype/input/view/InputContainerView$Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView$Item;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->restoreFrameLayoutPos()V

    return-void
.end method

.method private getPrefBottom(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->access$1000(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPrefX(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->access$800(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPrefY(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->access$900(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDecorationAdjustment()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 399
    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-static {v5, v6}, Lcom/nuance/swype/input/view/InputContainerView;->access$300(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;)V

    .line 400
    const/4 v1, 0x0

    .line 402
    .local v1, "inputViewHeightChanged":Z
    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    iget-object v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/view/InputLayout;->getInputAreaRectRelativeTo(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 403
    .local v2, "inputViewRectNow":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    .line 405
    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    if-eqz v5, :cond_1

    .line 406
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 408
    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    const/4 v6, 0x2

    new-array v0, v6, [I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    aput v6, v0, v4

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, v6, v5

    aput v5, v0, v3

    .line 410
    .local v0, "diff":[I
    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    aget v6, v0, v4

    neg-int v6, v6

    aget v7, v0, v3

    neg-int v7, v7

    invoke-static {v5, v6, v7}, Lcom/nuance/swype/input/view/InputContainerView;->access$400(Landroid/view/View;II)V

    .line 412
    .end local v0    # "diff":[I
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eq v5, v6, :cond_2

    move v1, v3

    .line 416
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputViewRectLastLayout:Landroid/graphics/Rect;

    .line 417
    return v1

    :cond_2
    move v1, v4

    .line 412
    goto :goto_0
.end method

.method private inflate(I)Landroid/view/View;
    .locals 3
    .param p1, "layoutId"    # I

    .prologue
    .line 260
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 261
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private restoreFrameLayoutPos()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 542
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    sget-object v0, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->RESTORE:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 548
    .local v6, "orientation":I
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getPrefX(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I

    move-result v3

    .line 549
    .local v3, "x":I
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getPrefY(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I

    move-result v4

    .line 551
    .local v4, "y":I
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragY:Z

    if-nez v0, :cond_4

    .line 553
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getHeight()I

    move-result v5

    .line 557
    .local v5, "bottom":I
    :goto_1
    invoke-static {}, Lcom/nuance/swype/input/view/InputContainerView;->access$1100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restoreFramePos(): or: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " bottom:"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v2, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    if-eq v3, v8, :cond_0

    if-eq v4, v8, :cond_0

    .line 561
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragX:Z

    if-nez v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    iget v3, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 564
    :cond_2
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragY:Z

    if-nez v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    iget v4, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 567
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleAreaInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcom/nuance/swype/input/view/InputContainerView;->access$1200(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;Landroid/graphics/Rect;III)V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    goto/16 :goto_0

    .line 555
    .end local v5    # "bottom":I
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getPrefBottom(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I

    move-result v5

    .restart local v5    # "bottom":I
    goto :goto_1
.end method

.method private restoreFrameLayoutPosMiniKeyboard(I)V
    .locals 10
    .param p1, "height"    # I

    .prologue
    .line 574
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 576
    .local v6, "orientation":I
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$1300(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;

    move-result-object v7

    .line 577
    .local v7, "parent":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getPrefX(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)I

    move-result v8

    .line 578
    .local v8, "x":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v9, v0, p1

    .line 579
    .local v9, "y":I
    invoke-static {}, Lcom/nuance/swype/input/view/InputContainerView;->access$1100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "restoreFrameLayoutPosMiniKeyboard(): "

    const-string v2, " x: "

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "; y: "

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 580
    if-lez v9, :cond_0

    .line 581
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-static {v0, v8, v9}, Lcom/nuance/swype/view/BasicViewLayout;->setPos(Landroid/view/View;II)V

    .line 584
    .end local v6    # "orientation":I
    .end local v7    # "parent":Landroid/graphics/Rect;
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_0
    return-void
.end method

.method private saveFrameLayoutPos()V
    .locals 9

    .prologue
    .line 527
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {}, Lcom/nuance/swype/input/view/InputContainerView;->access$1100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v2, "saveFramePos(): waiting for layout"

    invoke-virtual {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 529
    sget-object v0, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->SAVE:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    .line 540
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 533
    .local v1, "orientation":I
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 534
    .local v6, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    iget v3, v6, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 535
    .local v3, "x":I
    iget v4, v6, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 536
    .local v4, "y":I
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v5, v4, v0

    .line 537
    .local v5, "bottom":I
    invoke-static {}, Lcom/nuance/swype/input/view/InputContainerView;->access$1100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "isLayoutRequested(): or: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "; x: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "; y: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, " bottom: "

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v2, v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/view/InputContainerView$Item;->saveToPrefs(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;III)V

    goto :goto_0
.end method

.method private saveToPrefs(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;III)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$800(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 508
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$900(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 509
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$1000(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/nuance/swype/input/AppPreferences;->setInt(Ljava/lang/String;I)V

    .line 510
    return-void
.end method

.method private setDragGripIsDrag(ZZ)V
    .locals 1
    .param p1, "isDrag"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 326
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    instance-of v0, v0, Lcom/nuance/swype/input/view/DragFrameGripPad;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    check-cast v0, Lcom/nuance/swype/input/view/DragFrameGripPad;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/DragFrameGripPad;->setGripIsDrag(ZZ)V

    .line 329
    :cond_0
    return-void
.end method


# virtual methods
.method protected addOuterDragFrame()V
    .locals 5

    .prologue
    .line 274
    iget-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    if-nez v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputLayout;->getLeft()I

    move-result v0

    .line 277
    .local v0, "x":I
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputLayout;->getTop()I

    move-result v1

    .line 278
    .local v1, "y":I
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeView(Landroid/view/View;)V

    .line 279
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/view/DragFrame;->setContentView(Lcom/nuance/swype/input/view/InputLayout;)V

    .line 281
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-static {v0, v1}, Lcom/nuance/swype/view/BasicViewLayout;->newLayoutParams(II)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/view/InputContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    iput-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    .line 283
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 284
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    .line 286
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    return-void
.end method

.method public candidateView()Landroid/view/View;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->candidatesView()Landroid/view/View;

    move-result-object v0

    .line 651
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dock(Z)V
    .locals 1
    .param p1, "dock"    # Z

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    if-eq v0, p1, :cond_0

    .line 501
    iput-boolean p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    .line 502
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 504
    :cond_0
    return-void
.end method

.method public dragLock(Z)V
    .locals 3
    .param p1, "lock"    # Z

    .prologue
    const/4 v1, 0x1

    .line 490
    iput-boolean p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock:Z

    .line 491
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, v2, :cond_1

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->hasInternalDragFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/nuance/swype/input/view/InputLayout;->setDragGripIsDrag(ZZ)V

    .line 498
    :cond_1
    return-void

    .line 495
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFrame()Lcom/nuance/swype/input/view/InputLayout;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    return-object v0
.end method

.method protected getInputLayoutHeight()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getMeasuredRootFrameDims(Z)Landroid/graphics/Rect;
    .locals 5
    .param p1, "measure"    # Z

    .prologue
    const/high16 v4, -0x80000000

    .line 372
    if-eqz p1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 374
    .local v0, "displayRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 378
    .end local v0    # "displayRect":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public getVisibleTopInWindow([I)V
    .locals 1
    .param p1, "out"    # [I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleTopInWindow([I)V

    .line 369
    return-void
.end method

.method public getVisibleTopInWindow([II)V
    .locals 4
    .param p1, "out"    # [I
    .param p2, "gravity"    # I

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleTopInWindow([I)V

    .line 361
    aget v0, p1, v3

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    and-int/lit8 v2, p2, 0x7

    sparse-switch v2, :sswitch_data_0

    :goto_0
    aput v0, p1, v3

    .line 362
    return-void

    .line 361
    :sswitch_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public getVisibleWindowRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 341
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 342
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    aget v2, v2, v6

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 345
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleTopInWindow([I)V

    .line 346
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->posTemp:[I

    aget v1, v1, v6

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 347
    return-object v0
.end method

.method public handleLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 427
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->handleDecorationAdjustment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v2}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$100(Lcom/nuance/swype/input/view/InputContainerView;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v2}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v2}, Lcom/nuance/swype/input/view/InputContainerView;->access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v1}, Lcom/nuance/swype/input/view/InputContainerView;->access$600(Lcom/nuance/swype/input/view/InputContainerView;)V

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleAreaInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 441
    .local v0, "insets":Landroid/graphics/Rect;
    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isSnapPending:Z

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->snapThreshold:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setLayoutSnapToEdge(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 444
    iput-boolean v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isSnapPending:Z

    .line 452
    :cond_2
    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    if-eqz v1, :cond_3

    .line 454
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dockGravity:I

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/view/InputContainerView;->access$700(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;I)V

    .line 457
    :cond_3
    sget-object v1, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->RESTORE:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 458
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->restoreFrameLayoutPos()V

    .line 459
    sget-object v1, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->NOTHING:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iput-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    .line 467
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-virtual {v1, v2, v0, v4}, Lcom/nuance/swype/input/view/InputContainerView;->setLayoutConfined(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 469
    sget-object v1, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->SAVE:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 470
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->saveFrameLayoutPos()V

    .line 471
    sget-object v1, Lcom/nuance/swype/input/view/InputContainerView$PersistOp;->NOTHING:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    iput-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->pendingPersistOp:Lcom/nuance/swype/input/view/InputContainerView$PersistOp;

    .line 474
    :cond_5
    return-void
.end method

.method public inputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->inputView()Landroid/view/View;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveFrameBy(II)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    .line 588
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleAreaInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->access$1400(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;Landroid/graphics/Rect;II)V

    .line 589
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 727
    invoke-static {}, Lcom/nuance/swype/input/view/InputContainerView;->access$1100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 728
    return-void
.end method

.method public onDrag(Landroid/view/View;II)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v1, 0x0

    .line 602
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock:Z

    if-eqz v0, :cond_0

    .line 607
    .end local p2    # "dx":I
    .end local p3    # "dy":I
    :goto_0
    return-void

    .line 605
    .restart local p2    # "dx":I
    .restart local p3    # "dy":I
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragX:Z

    if-eqz v0, :cond_1

    move v0, p2

    :goto_1
    iget-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragY:Z

    if-eqz v2, :cond_2

    move v2, p3

    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->moveFrameBy(II)V

    .line 606
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    iget-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragX:Z

    if-eqz v2, :cond_3

    .end local p2    # "dx":I
    :goto_3
    iget-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragY:Z

    if-eqz v2, :cond_4

    .end local p3    # "dy":I
    :goto_4
    invoke-virtual {v0, p2, p3}, Lcom/nuance/swype/input/view/InputLayout;->onDrag(II)V

    goto :goto_0

    .restart local p2    # "dx":I
    .restart local p3    # "dy":I
    :cond_1
    move v0, v1

    .line 605
    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move p2, v1

    .line 606
    goto :goto_3

    .end local p2    # "dx":I
    :cond_4
    move p3, v1

    goto :goto_4
.end method

.method public onDragBegin(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock:Z

    if-eqz v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDocked:Z

    .line 597
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->onBeginDrag()V

    goto :goto_0
.end method

.method public onDragEnd(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock:Z

    if-eqz v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->onEndDrag()V

    .line 615
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->snap()V

    .line 616
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->saveFrameLayoutPos()V

    goto :goto_0
.end method

.method public removeDragFrame()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeView(Landroid/view/View;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected removeOuterDragFrame()V
    .locals 5

    .prologue
    .line 289
    iget-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/DragFrame;->getLeft()I

    move-result v0

    .line 291
    .local v0, "x":I
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/DragFrame;->getTop()I

    move-result v1

    .line 292
    .local v1, "y":I
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeView(Landroid/view/View;)V

    .line 293
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/view/DragFrame;->setContentView(Lcom/nuance/swype/input/view/InputLayout;)V

    .line 294
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-static {v0, v1}, Lcom/nuance/swype/view/BasicViewLayout;->newLayoutParams(II)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/view/InputContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    iput-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    .line 296
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 297
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    .line 299
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 671
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->disownParent(Landroid/view/View;)V

    .line 672
    return-void
.end method

.method public setAllowedMovement(ZZ)V
    .locals 0
    .param p1, "allowDragX"    # Z
    .param p2, "allowDragY"    # Z

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragX:Z

    .line 486
    iput-boolean p2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->allowDragY:Z

    .line 487
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 1
    .param p1, "candidatesView"    # Landroid/view/View;

    .prologue
    .line 643
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->disownParent(Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->setCandidatesView(Landroid/view/View;)V

    .line 645
    return-void
.end method

.method public setDockGravity(I)V
    .locals 1
    .param p1, "dockGravity"    # I

    .prologue
    .line 478
    iget v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dockGravity:I

    if-eq v0, p1, :cond_0

    .line 479
    iput p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->dockGravity:I

    .line 480
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 482
    :cond_0
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 1
    .param p1, "inputView"    # Landroid/view/View;

    .prologue
    .line 659
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->disownParent(Landroid/view/View;)V

    .line 660
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->setInputView(Landroid/view/View;)V

    .line 661
    return-void
.end method

.method protected setLayoutSnapToEdge(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "threshold"    # I

    .prologue
    .line 683
    invoke-static {p1}, Lcom/nuance/swype/input/view/InputContainerView;->access$1500(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 684
    .local v3, "frame":Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    .line 685
    invoke-static {v3, p2}, Landroid/support/v4/app/ActivityCompatHoneycomb;->shrink(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 687
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v4}, Lcom/nuance/swype/input/view/InputContainerView;->access$1600(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 688
    .local v0, "container":Landroid/graphics/Rect;
    invoke-static {v3, v0, p3}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getSnapDistHor(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    .line 689
    .local v1, "dx":I
    invoke-static {v3, v0, p3}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getSnapDistVer(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 690
    .local v2, "dy":I
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 692
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    invoke-static {v4, v1, v2}, Lcom/nuance/swype/input/view/InputContainerView;->access$1700(Landroid/view/View;II)V

    .line 693
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputLayout;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_2

    .line 694
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v4, v1, v2}, Lcom/nuance/swype/input/view/InputLayout;->onSnapToEdge(II)V

    .line 697
    :cond_2
    return-void
.end method

.method public showCandidates(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 632
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->showCandidates(Z)V

    .line 633
    return-void
.end method

.method protected showDragFrame(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->hasInternalDragFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->showDragFrame(Z)V

    .line 322
    :goto_0
    iput-boolean p1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isDragFrameVisible:Z

    .line 323
    return-void

    .line 320
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->showDragFrameOuter(Z)V

    goto :goto_0
.end method

.method protected showDragFrameOuter(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->addOuterDragFrame()V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeOuterDragFrame()V

    goto :goto_0
.end method

.method public showInput(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 639
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->showInput(Z)V

    .line 640
    return-void
.end method

.method public showShadow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 636
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputLayout;->showShadow(Z)V

    .line 637
    return-void
.end method

.method protected snap()V
    .locals 3

    .prologue
    .line 621
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputLayout;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputLayout;->getVisibleAreaInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 624
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->rootView:Landroid/view/View;

    iget v2, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->snapThreshold:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->snapToEdge(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 629
    .end local v0    # "insets":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 627
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->isSnapPending:Z

    goto :goto_0
.end method

.method protected snapToEdge(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "threshold"    # I

    .prologue
    .line 708
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 709
    .local v3, "frame":Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    .line 710
    invoke-static {v3, p2}, Landroid/support/v4/app/ActivityCompatHoneycomb;->shrink(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 712
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->this$0:Lcom/nuance/swype/input/view/InputContainerView;

    invoke-static {v4}, Lcom/nuance/swype/input/view/InputContainerView;->access$1800(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 713
    .local v0, "container":Landroid/graphics/Rect;
    invoke-static {v3, v0, p3}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getSnapDistHor(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    .line 714
    .local v1, "dx":I
    invoke-static {v3, v0, p3}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getSnapDistVer(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 715
    .local v2, "dy":I
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 718
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->moveFrameBy(II)V

    .line 719
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v4}, Lcom/nuance/swype/input/view/InputLayout;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_2

    .line 720
    iget-object v4, p0, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputLayout:Lcom/nuance/swype/input/view/InputLayout;

    invoke-virtual {v4, v1, v2}, Lcom/nuance/swype/input/view/InputLayout;->onSnapToEdge(II)V

    .line 723
    :cond_2
    return-void
.end method
