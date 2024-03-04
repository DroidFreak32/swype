.class public final Lcom/nuance/swype/view/PopupViewManager;
.super Ljava/lang/Object;
.source "PopupViewManager.java"

# interfaces
.implements Lcom/nuance/swype/view/ShowHideAnimManager$Listener;


# instance fields
.field private final activeViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

.field private final overlayView:Lcom/nuance/swype/view/OverlayView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "PopupViewManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/view/OverlayView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlay"    # Lcom/nuance/swype/view/OverlayView;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/view/PopupViewManager;->activeViews:Ljava/util/Set;

    .line 36
    iput-object p2, p0, Lcom/nuance/swype/view/PopupViewManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 37
    sget v1, Lcom/nuance/swype/input/R$style;->PopupAnimationStyle:I

    sget-object v2, Lcom/nuance/swype/input/R$styleable;->PopupAnimation:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "props":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 39
    new-instance v1, Lcom/nuance/swype/view/ShowHideAnimManager;

    sget v2, Lcom/nuance/swype/input/R$styleable;->PopupAnimation_popupShowAnimation:I

    sget v3, Lcom/nuance/swype/input/R$styleable;->PopupAnimation_popupHideAnimation:I

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/nuance/swype/view/ShowHideAnimManager;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;II)V

    iput-object v1, p0, Lcom/nuance/swype/view/PopupViewManager;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    iget-object v1, p0, Lcom/nuance/swype/view/PopupViewManager;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/view/ShowHideAnimManager;->setListener(Lcom/nuance/swype/view/ShowHideAnimManager$Listener;)V

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final onHideComplete(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/swype/view/PopupViewManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/view/OverlayView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nuance/swype/view/PopupViewManager;->activeViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public final onShowComplete(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 79
    return-void
.end method
