.class public final Lcom/nuance/swype/view/PopupViewManager;
.super Ljava/lang/Object;
.source "PopupViewManager.java"

# interfaces
.implements Lcom/nuance/swype/view/ShowHideAnimManager$Listener;


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


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
    const-string/jumbo v0, "PopupViewManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/PopupViewManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/view/OverlayView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlay"    # Lcom/nuance/swype/view/OverlayView;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 33
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

    .line 1067
    sget v1, Lcom/nuance/swype/input/R$styleable;->PopupAnimation_popupShowAnimation:I

    invoke-static {p1, v0, v1}, Lcom/nuance/swype/view/PopupViewManager;->loadAnim(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/animation/Animator;

    move-result-object v1

    .line 1068
    sget v2, Lcom/nuance/swype/input/R$styleable;->PopupAnimation_popupHideAnimation:I

    invoke-static {p1, v0, v2}, Lcom/nuance/swype/view/PopupViewManager;->loadAnim(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/animation/Animator;

    move-result-object v2

    .line 1069
    new-instance v3, Lcom/nuance/swype/view/ShowHideAnimManager;

    invoke-direct {v3, v1, v2}, Lcom/nuance/swype/view/ShowHideAnimManager;-><init>(Landroid/animation/Animator;Landroid/animation/Animator;)V

    iput-object v3, p0, Lcom/nuance/swype/view/PopupViewManager;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    .line 1070
    iget-object v1, p0, Lcom/nuance/swype/view/PopupViewManager;->animManager:Lcom/nuance/swype/view/ShowHideAnimManager;

    .line 1080
    iput-object p0, v1, Lcom/nuance/swype/view/ShowHideAnimManager;->listener:Lcom/nuance/swype/view/ShowHideAnimManager$Listener;

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    :cond_0
    return-void
.end method

.method private static loadAnim(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/animation/Animator;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # Landroid/content/res/TypedArray;
    .param p2, "idx"    # I

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "out":Landroid/animation/Animator;
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 76
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 77
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 79
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final onHideComplete(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    .line 1155
    iget-object v0, p0, Lcom/nuance/swype/view/PopupViewManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/view/OverlayView;->removeView(Landroid/view/View;)V

    .line 1156
    iget-object v0, p0, Lcom/nuance/swype/view/PopupViewManager;->activeViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method
