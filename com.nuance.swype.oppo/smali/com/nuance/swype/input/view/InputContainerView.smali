.class public Lcom/nuance/swype/input/view/InputContainerView;
.super Lcom/nuance/swype/view/BasicViewLayout;
.source "InputContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/view/InputContainerView$Item;,
        Lcom/nuance/swype/input/view/InputContainerView$PersistOp;
    }
.end annotation


# static fields
.field private static final PREFKEY_PREFIX_BOTTOM:Ljava/lang/String; = "keyboard.bt.offset"

.field private static final PREFKEY_PREFIX_X:Ljava/lang/String; = "keyboard.x.offset"

.field private static final PREFKEY_PREFIX_Y:Ljava/lang/String; = "keyboard.y.offset"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private isFullScreenMode:Z

.field private item:Lcom/nuance/swype/input/view/InputContainerView$Item;

.field private keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field private useWings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "InputContainerView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/nuance/swype/view/BasicViewLayout;-><init>(Landroid/content/Context;)V

    .line 65
    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->isFullScreenMode:Z

    .line 68
    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    .line 842
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/view/BasicViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->isFullScreenMode:Z

    .line 68
    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    .line 842
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 103
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/view/InputContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    return v0
.end method

.method static synthetic access$1000(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyBottom(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;Landroid/graphics/Rect;III)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/graphics/Rect;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 57
    invoke-virtual/range {p0 .. p5}, Lcom/nuance/swype/input/view/InputContainerView;->setLayoutPosConfine(Landroid/view/View;Landroid/graphics/Rect;III)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;Landroid/graphics/Rect;II)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/graphics/Rect;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/view/InputContainerView;->moveConfine(Landroid/view/View;Landroid/graphics/Rect;II)V

    return-void
.end method

.method static synthetic access$1500(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getMeasuredRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/view/View;II)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->moveLayoutPos(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getMeasuredRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->layoutChild(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Landroid/view/View;II)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->moveLayoutPos(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/view/InputContainerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView;->restorePos()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->setLayoutDocked(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$800(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyX(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyY(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPrefKeyBottom(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    .locals 2
    .param p0, "orientation"    # I
    .param p1, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keyboard.bt.offset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPrefKeyX(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    .locals 2
    .param p0, "orientation"    # I
    .param p1, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keyboard.x.offset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPrefKeyY(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    .locals 2
    .param p0, "orientation"    # I
    .param p1, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keyboard.y.offset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initModeDraggable(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    const/4 v0, 0x1

    .line 859
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->initModeHelper(I)V

    .line 861
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView;->showDragFrame(Z)V

    .line 862
    invoke-direct {p0, v0, v0}, Lcom/nuance/swype/input/view/InputContainerView;->setDragGripIsDrag(ZZ)V

    .line 863
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView;->restorePos()V

    .line 864
    return-void
.end method

.method private initModeFixed(IZ)V
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "showGripPad"    # Z

    .prologue
    const/4 v1, 0x0

    .line 872
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->initModeHelper(I)V

    .line 873
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/view/InputContainerView;->showDragFrame(Z)V

    .line 882
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/view/InputContainerView;->showDragFrame(Z)V

    .line 878
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/view/InputContainerView;->setDragGripIsDrag(ZZ)V

    .line 880
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView;->restorePos()V

    goto :goto_0
.end method

.method private initModeHelper(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 854
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView;->dock(Z)V

    .line 855
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->setDockGravity(I)V

    .line 856
    return-void
.end method

.method private restorePos()V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->access$2100(Lcom/nuance/swype/input/view/InputContainerView$Item;)V

    .line 912
    :cond_0
    return-void
.end method

.method private setDragGripIsDrag(ZZ)V
    .locals 1
    .param p1, "isDrag"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 831
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-static {v0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->access$1900(Lcom/nuance/swype/input/view/InputContainerView$Item;ZZ)V

    .line 834
    :cond_0
    return-void
.end method


# virtual methods
.method public dock(Z)V
    .locals 1
    .param p1, "dock"    # Z

    .prologue
    .line 819
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->dock(Z)V

    .line 822
    :cond_0
    return-void
.end method

.method public dragLock(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 926
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock(Z)V

    .line 929
    :cond_0
    return-void
.end method

.method protected getAppAreaScreenHeight()I
    .locals 2

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 787
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 788
    return v0
.end method

.method public getRootViewHeight()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getInputLayoutHeight()I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 4

    .prologue
    .line 768
    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->isFullScreenMode:Z

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getMeasuredRootFrameDims(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 774
    .local v0, "dims":Landroid/graphics/Rect;
    sget-object v1, Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "measureRootFrame(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 775
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 778
    .end local v0    # "dims":Landroid/graphics/Rect;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getSuggestedMinimumHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getVisibleTopInWindow([I)V
    .locals 1
    .param p1, "out"    # [I

    .prologue
    .line 755
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getVisibleTopInWindow([I)V

    .line 758
    :cond_0
    return-void
.end method

.method public getVisibleTopInWindow([II)V
    .locals 1
    .param p1, "out"    # [I
    .param p2, "gravity"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getVisibleTopInWindow([II)V

    .line 752
    :cond_0
    return-void
.end method

.method public getVisibleWindowRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getVisibleWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3
    .param p1, "inputView"    # Landroid/view/View;
    .param p2, "candidatesView"    # Landroid/view/View;
    .param p3, "forceUseWing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    if-eq p3, v2, :cond_1

    const/4 v0, 0x1

    .line 110
    .local v0, "styleChanged":Z
    :goto_0
    iput-boolean p3, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    .line 113
    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->removeItem()V

    .line 119
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-nez v2, :cond_0

    .line 120
    new-instance v2, Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;-><init>(Lcom/nuance/swype/input/view/InputContainerView;)V

    iput-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setInputView(Landroid/view/View;)V

    .line 123
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setCandidatesView(Landroid/view/View;)V

    .line 124
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock(Z)V

    .line 125
    return-void

    .end local v0    # "styleChanged":Z
    :cond_1
    move v0, v1

    .line 108
    goto :goto_0

    .line 116
    .restart local v0    # "styleChanged":Z
    :cond_2
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->disownParent(Landroid/view/View;)V

    goto :goto_1
.end method

.method public initStyle(Z)V
    .locals 4
    .param p1, "forceUseWing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    if-eq p1, v2, :cond_1

    const/4 v2, 0x1

    .line 134
    :goto_0
    if-nez v2, :cond_2

    .line 157
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 133
    goto :goto_0

    .line 137
    :cond_2
    const/4 v1, 0x0

    .line 138
    .local v1, "inputView":Landroid/view/View;
    const/4 v0, 0x0

    .line 139
    .local v0, "candidateView":Landroid/view/View;
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->inputView()Landroid/view/View;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->candidateView()Landroid/view/View;

    move-result-object v0

    .line 143
    :cond_3
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 147
    iput-boolean p1, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    .line 149
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->removeItem()V

    .line 151
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-nez v2, :cond_4

    .line 152
    new-instance v2, Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;-><init>(Lcom/nuance/swype/input/view/InputContainerView;)V

    iput-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    .line 154
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setInputView(Landroid/view/View;)V

    .line 155
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setCandidatesView(Landroid/view/View;)V

    .line 156
    iget-object v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock(Z)V

    goto :goto_1
.end method

.method public isFullAppAreaMode()Z
    .locals 2

    .prologue
    .line 850
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->access$2000(Lcom/nuance/swype/input/view/InputContainerView$Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 795
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/view/InputContainerView$Item;->handleLayout(ZIIII)V

    .line 798
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/view/BasicViewLayout;->onLayout(ZIIII)V

    .line 800
    return-void
.end method

.method public removeItem()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->disownParent(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setInputView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setCandidatesView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeDragFrame()V

    .line 166
    :cond_0
    iput-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    .line 167
    return-void
.end method

.method public restoreMiniKeyboardLayoutPos(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->access$000(Lcom/nuance/swype/input/view/InputContainerView$Item;I)V

    .line 176
    return-void
.end method

.method public setAllowedMovement(ZZ)V
    .locals 1
    .param p1, "allowDragX"    # Z
    .param p2, "allowDragY"    # Z

    .prologue
    .line 837
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setAllowedMovement(ZZ)V

    .line 840
    :cond_0
    return-void
.end method

.method public setDockGravity(I)V
    .locals 1
    .param p1, "dockGravity"    # I

    .prologue
    .line 803
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setDockGravity(I)V

    .line 806
    :cond_0
    return-void
.end method

.method public setFullScreenMode(Z)V
    .locals 2
    .param p1, "isFullScreenMode"    # Z

    .prologue
    .line 733
    iput-boolean p1, p0, Lcom/nuance/swype/input/view/InputContainerView;->isFullScreenMode:Z

    .line 739
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getFrame()Lcom/nuance/swype/input/view/InputLayout;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/view/InputLayout;->showShadow(Z)V

    .line 742
    :cond_0
    return-void

    .line 740
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    const/16 v2, 0x51

    const/4 v1, 0x1

    .line 885
    iput-object p1, p0, Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 886
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/view/InputContainerView;->initModeDraggable(I)V

    .line 895
    :goto_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->isFullScreenMode:Z

    if-eqz v0, :cond_3

    .line 897
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$attr;->keyboardBackground:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/android/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 898
    sget-object v0, Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "setMode...setBackgroundColor: Color.BLACK"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 903
    :goto_1
    return-void

    .line 888
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    const/16 v0, 0x53

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/view/InputContainerView;->initModeFixed(IZ)V

    goto :goto_0

    .line 890
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    const/16 v0, 0x55

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/view/InputContainerView;->initModeFixed(IZ)V

    goto :goto_0

    .line 893
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/nuance/swype/input/view/InputContainerView;->initModeFixed(IZ)V

    goto :goto_0

    .line 900
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/android/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 901
    sget-object v0, Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "setMode...setBackgroundColor: null"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRootViewTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 810
    return-void
.end method

.method public showCandidates(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 915
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->showCandidates(Z)V

    .line 918
    :cond_0
    return-void
.end method

.method public showDragFrame(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 825
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->showDragFrame(Z)V

    .line 828
    :cond_0
    return-void
.end method

.method public showInputArea(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 921
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->showInput(Z)V

    .line 924
    :cond_0
    return-void
.end method
