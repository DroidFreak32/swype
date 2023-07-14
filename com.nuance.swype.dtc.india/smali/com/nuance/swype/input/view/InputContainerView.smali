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
.field private app:Lcom/nuance/swype/input/IMEApplication;

.field private isFullScreenMode:Z

.field private item:Lcom/nuance/swype/input/view/InputContainerView$Item;

.field private keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field private miniDockFullAppAreaMode:Z

.field private overlayView:Lcom/nuance/swype/view/OverlayView;

.field private popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

.field private useWings:Z

.field private final widgetViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "InputContainerView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/view/InputContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/view/BasicViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->isFullScreenMode:Z

    .line 78
    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    .line 2033
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->widgetViews:Ljava/util/Set;

    .line 988
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1042
    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->miniDockFullAppAreaMode:Z

    .line 119
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/view/InputContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/IMEApplication;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;

    return-object v0
.end method

.method static synthetic access$1000(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyX(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyY(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->getPrefKeyBottom(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;Landroid/graphics/Rect;II)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/graphics/Rect;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/view/InputContainerView;->setLayoutPosConfineBot(Landroid/view/View;Landroid/graphics/Rect;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;Landroid/graphics/Rect;II)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/graphics/Rect;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/view/InputContainerView;->moveConfine(Landroid/view/View;Landroid/graphics/Rect;II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/view/InputContainerView;[IIILandroid/graphics/Rect;II)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;
    .param p1, "x1"    # [I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/graphics/Rect;
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 67
    invoke-virtual/range {p0 .. p6}, Lcom/nuance/swype/input/view/InputContainerView;->adjustConfine([IIILandroid/graphics/Rect;II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getMeasuredRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Landroid/view/View;II)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->moveLayoutPos(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/view/InputContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->miniDockFullAppAreaMode:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/nuance/swype/input/view/InputContainerView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/view/InputContainerView;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getMeasuredRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->layoutChild(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Landroid/view/View;II)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->moveLayoutPos(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$700()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/view/InputContainerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView;->restorePos()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/view/InputContainerView;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/view/InputContainerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView;->setLayoutDocked(Landroid/view/View;I)V

    return-void
.end method

.method private static getPrefKeyBottom(ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Ljava/lang/String;
    .locals 2
    .param p0, "orientation"    # I
    .param p1, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "keyboard.bt.offset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
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
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "keyboard.x.offset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
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
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "keyboard.y.offset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
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

    .line 1005
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->initModeHelper(I)V

    .line 1007
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView;->showDragFrame(Z)V

    .line 1008
    invoke-direct {p0, v0, v0}, Lcom/nuance/swype/input/view/InputContainerView;->setDragGripIsDrag(ZZ)V

    .line 1009
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView;->restorePos()V

    .line 1010
    return-void
.end method

.method private initModeFixed(IZ)V
    .locals 6
    .param p1, "gravity"    # I
    .param p2, "showGripPad"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1021
    sget-object v0, Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "initModeFixed(): use wings: "

    aput-object v2, v1, v4

    iget-boolean v2, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "; show grip: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1022
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->initModeHelper(I)V

    .line 1023
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/view/InputContainerView;->showDragFrame(Z)V

    .line 1033
    :goto_0
    return-void

    .line 1028
    :cond_0
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/view/InputContainerView;->showDragFrame(Z)V

    .line 1029
    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/view/InputContainerView;->setDragGripIsDrag(ZZ)V

    .line 1031
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputContainerView;->restorePos()V

    goto :goto_0
.end method

.method private initModeHelper(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1000
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView;->setDocked(Z)V

    .line 1001
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->setDockGravity(I)V

    .line 1002
    return-void
.end method

.method private restorePos()V
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->access$2300(Lcom/nuance/swype/input/view/InputContainerView$Item;)V

    .line 1091
    :cond_0
    return-void
.end method

.method private setDragGripIsDrag(ZZ)V
    .locals 1
    .param p1, "isDrag"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 977
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-static {v0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->access$2100(Lcom/nuance/swype/input/view/InputContainerView$Item;ZZ)V

    .line 980
    :cond_0
    return-void
.end method


# virtual methods
.method public addWidgetView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1141
    invoke-static {p1}, Lcom/nuance/swype/util/FrameworkUtil;->disownParent(Landroid/view/View;)V

    .line 1142
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView;->removeView(Landroid/view/View;)V

    .line 1143
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/view/InputContainerView;->addView(Landroid/view/View;)V

    .line 1144
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView;->addView(Landroid/view/View;)V

    .line 1145
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->widgetViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1146
    return-void
.end method

.method public detachOverlayView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1213
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->overlayView:Lcom/nuance/swype/view/OverlayView;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0}, Lcom/nuance/swype/view/OverlayView;->detach()V

    .line 1215
    iput-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 1217
    iput-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    .line 1219
    :cond_0
    return-void
.end method

.method public dragLock(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock(Z)V

    .line 1109
    :cond_0
    return-void
.end method

.method public getInputLayoutHeight()I
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getInputLayout()Lcom/nuance/swype/input/view/InputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getInputWindowRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getInputWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1132
    invoke-static {p1}, Lcom/nuance/swype/util/GeomUtil;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1133
    .local v1, "rc":Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/nuance/swype/util/CoordUtils;->getWindowPos(Landroid/view/View;)[I

    move-result-object v2

    .line 1134
    .local v2, "widgetViewPos":[I
    invoke-static {p0}, Lcom/nuance/swype/util/CoordUtils;->getWindowPos(Landroid/view/View;)[I

    move-result-object v0

    .line 1135
    .local v0, "containerViewPos":[I
    invoke-static {v2, v0, v2}, Lcom/nuance/swype/util/CoordUtils;->subtract([I[I[I)V

    .line 1136
    invoke-static {v1, v2}, Lcom/nuance/swype/util/GeomUtil;->moveRectTo(Landroid/graphics/Rect;[I)V

    .line 1137
    return-object v1
.end method

.method public final getOverlayViewCreate()Lcom/nuance/swype/view/OverlayView;
    .locals 3

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->overlayView:Lcom/nuance/swype/view/OverlayView;

    if-nez v0, :cond_0

    .line 1193
    new-instance v0, Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 1194
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/view/OverlayView;->attach(Landroid/view/View;)V

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->overlayView:Lcom/nuance/swype/view/OverlayView;

    return-object v0
.end method

.method public final getPopupViewManager()Lcom/nuance/swype/view/PopupViewManager;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    return-object v0
.end method

.method public final getPopupViewManagerCreate()Lcom/nuance/swype/view/PopupViewManager;
    .locals 3

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    if-nez v0, :cond_0

    .line 1228
    new-instance v0, Lcom/nuance/swype/view/PopupViewManager;

    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getOverlayViewCreate()Lcom/nuance/swype/view/OverlayView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/view/PopupViewManager;-><init>(Landroid/content/Context;Lcom/nuance/swype/view/OverlayView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->popupViewManager:Lcom/nuance/swype/view/PopupViewManager;

    return-object v0
.end method

.method public getRootViewHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getInputLayoutHeight()I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 915
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->isFullScreenMode:Z

    if-eqz v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getMeasuredRootFrameDims(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 921
    .local v0, "dims":Landroid/graphics/Rect;
    sget-object v1, Lcom/nuance/swype/input/view/InputContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "measureRootFrame(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 922
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 924
    .end local v0    # "dims":Landroid/graphics/Rect;
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2072
    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getDisplayHeight()I

    move-result v2

    .line 3056
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3057
    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3058
    if-lez v3, :cond_1

    .line 3059
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2074
    :goto_1
    sub-int v1, v2, v1

    .line 924
    goto :goto_0

    .line 3061
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3062
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3063
    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public getVisiblePosInWindow([II)V
    .locals 1
    .param p1, "out"    # [I
    .param p2, "gravity"    # I

    .prologue
    .line 902
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getVisiblePosInWindow([II)V

    .line 905
    :cond_0
    return-void
.end method

.method public getVisibleWindowRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getVisibleWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetViewTouchableRegion()Landroid/graphics/Region;
    .locals 5

    .prologue
    .line 1115
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->widgetViews:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    .line 1116
    if-lez v3, :cond_2

    .line 1117
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 1118
    .local v1, "region":Landroid/graphics/Region;
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->widgetViews:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1119
    .local v2, "widget":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1120
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/view/InputContainerView;->getOverlayRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1121
    .local v0, "rec":Landroid/graphics/Rect;
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 1124
    .end local v0    # "rec":Landroid/graphics/Rect;
    .end local v2    # "widget":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1128
    .end local v1    # "region":Landroid/graphics/Region;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hideWidgetView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1168
    if-eqz p1, :cond_0

    .line 1169
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    :cond_0
    return-void
.end method

.method public init(Landroid/view/View;Landroid/view/View;Z)V
    .locals 5
    .param p1, "inputView"    # Landroid/view/View;
    .param p2, "candidatesView"    # Landroid/view/View;
    .param p3, "supportsFullMiniMovement"    # Z

    .prologue
    const/4 v2, 0x0

    .line 124
    if-nez p3, :cond_2

    const/4 v1, 0x1

    .line 125
    .local v1, "shouldUseWings":Z
    :goto_0
    iget-boolean v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    if-eq v1, v3, :cond_3

    .line 127
    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->useWings:Z

    .line 128
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->removeItem()V

    .line 137
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-nez v3, :cond_1

    .line 138
    new-instance v3, Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/view/InputContainerView$Item;-><init>(Lcom/nuance/swype/input/view/InputContainerView;)V

    iput-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setInputView(Landroid/view/View;)V

    .line 141
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v3, p2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setCandidatesView(Landroid/view/View;)V

    .line 142
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setCover(Landroid/view/View;Z)V

    .line 143
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->dragLock(Z)V

    .line 145
    invoke-static {p0}, Lcom/nuance/swype/util/ViewUtil;->resetView(Landroid/view/View;)V

    .line 148
    return-void

    .end local v1    # "shouldUseWings":Z
    :cond_2
    move v1, v2

    .line 124
    goto :goto_0

    .line 129
    .restart local v1    # "shouldUseWings":Z
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "currentTheme":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v3}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getTheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputContainerView;->removeItem()V

    goto :goto_1
.end method

.method public invalidateItem()V
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1241
    :cond_0
    return-void
.end method

.method public isActiveWidgetView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1149
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->widgetViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoverShowing()Z
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->isCoverShowing()Z

    move-result v0

    return v0
.end method

.method public isFullAppAreaMode()Z
    .locals 2

    .prologue
    .line 996
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->access$2200(Lcom/nuance/swype/input/view/InputContainerView$Item;)Z

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

.method public moveWidgetView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rc"    # Landroid/graphics/Rect;

    .prologue
    .line 1157
    invoke-static {p1, p2}, Lcom/nuance/swype/view/OverlayView;->setGeometry(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1158
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1181
    invoke-super {p0}, Lcom/nuance/swype/view/BasicViewLayout;->onAttachedToWindow()V

    .line 1182
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->overlayView:Lcom/nuance/swype/view/OverlayView;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/view/OverlayView;->attach(Landroid/view/View;)V

    .line 1185
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 931
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/view/InputContainerView$Item;->handleLayout(ZIIII)V

    .line 934
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/view/BasicViewLayout;->onLayout(ZIIII)V

    .line 936
    return-void
.end method

.method public refresh(Z)V
    .locals 2
    .param p1, "supportsFullMiniMovement"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bad state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getInputView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getCandidatesView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/nuance/swype/input/view/InputContainerView;->init(Landroid/view/View;Landroid/view/View;Z)V

    .line 159
    return-void
.end method

.method public removeActiveWidegtView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->widgetViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1154
    return-void
.end method

.method public removeItem()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setInputView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setCandidatesView(Landroid/view/View;)V

    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->removeDragFrame()V

    .line 168
    :cond_0
    iput-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    .line 169
    return-void
.end method

.method public setAllowedMovement(ZZ)V
    .locals 1
    .param p1, "allowDragX"    # Z
    .param p2, "allowDragY"    # Z

    .prologue
    .line 983
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setAllowedMovement(ZZ)V

    .line 986
    :cond_0
    return-void
.end method

.method public setCover(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enableAnim"    # Z

    .prologue
    .line 950
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setCover(Landroid/view/View;Z)V

    .line 951
    return-void
.end method

.method public setCover(Landroid/view/View;ZII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enableAnim"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 954
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setCover(Landroid/view/View;ZII)V

    .line 955
    return-void
.end method

.method public setDockGravity(I)V
    .locals 1
    .param p1, "dockGravity"    # I

    .prologue
    .line 939
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setDockGravity(I)V

    .line 942
    :cond_0
    return-void
.end method

.method public setDocked(Z)V
    .locals 1
    .param p1, "dock"    # Z

    .prologue
    .line 965
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->setDocked(Z)V

    .line 968
    :cond_0
    return-void
.end method

.method public setFullScreenMode(Z)V
    .locals 2
    .param p1, "isFullScreenMode"    # Z

    .prologue
    .line 881
    iput-boolean p1, p0, Lcom/nuance/swype/input/view/InputContainerView;->isFullScreenMode:Z

    .line 887
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->getInputLayout()Lcom/nuance/swype/input/view/InputLayout;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/view/InputLayout;->showShadow(Z)V

    .line 890
    :cond_0
    return-void

    .line 888
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    const/16 v3, 0x51

    const/4 v2, 0x0

    .line 1045
    iput-object p1, p0, Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 4023
    sget-boolean v0, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 1046
    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputContainerView;->keyboardDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setKeyboardMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 1048
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBillboardManager()Lcom/nuance/swype/input/ads/BillboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/BillboardManager;->canShowBillboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->app:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBillboardManager()Lcom/nuance/swype/input/ads/BillboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/BillboardManager;->hide()V

    .line 1054
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/view/InputContainerView;->initModeDraggable(I)V

    .line 1074
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView$Item;->updateMiniDockFrame()V

    .line 1076
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->isFullScreenMode:Z

    if-eqz v0, :cond_6

    .line 1078
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputContainerView;->setBackgroundColor(I)V

    .line 1082
    :goto_1
    return-void

    .line 1056
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1057
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->miniDockFullAppAreaMode:Z

    if-eqz v0, :cond_2

    .line 1058
    const v0, 0x800053

    invoke-direct {p0, v0, v2}, Lcom/nuance/swype/input/view/InputContainerView;->initModeFixed(IZ)V

    goto :goto_0

    .line 1060
    :cond_2
    invoke-direct {p0, v3, v2}, Lcom/nuance/swype/input/view/InputContainerView;->initModeFixed(IZ)V

    goto :goto_0

    .line 1062
    :cond_3
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1063
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->miniDockFullAppAreaMode:Z

    if-eqz v0, :cond_4

    .line 1064
    const v0, 0x800055

    invoke-direct {p0, v0, v2}, Lcom/nuance/swype/input/view/InputContainerView;->initModeFixed(IZ)V

    goto :goto_0

    .line 1066
    :cond_4
    invoke-direct {p0, v3, v2}, Lcom/nuance/swype/input/view/InputContainerView;->initModeFixed(IZ)V

    goto :goto_0

    .line 1070
    :cond_5
    invoke-direct {p0, v3, v2}, Lcom/nuance/swype/input/view/InputContainerView;->initModeFixed(IZ)V

    goto :goto_0

    .line 1080
    :cond_6
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nuance/android/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public showCandidates(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->showCandidates(Z)V

    .line 1097
    :cond_0
    return-void
.end method

.method public showDragFrame(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 971
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->showDragFrame(Z)V

    .line 974
    :cond_0
    return-void
.end method

.method public showInputArea(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->item:Lcom/nuance/swype/input/view/InputContainerView$Item;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/InputContainerView$Item;->showInput(Z)V

    .line 1103
    :cond_0
    return-void
.end method

.method public showWidgetView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1161
    if-eqz p1, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputContainerView;->widgetViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1163
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    :cond_0
    return-void
.end method
