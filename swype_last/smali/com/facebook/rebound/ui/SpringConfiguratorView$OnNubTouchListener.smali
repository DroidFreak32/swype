.class Lcom/facebook/rebound/ui/SpringConfiguratorView$OnNubTouchListener;
.super Ljava/lang/Object;
.source "SpringConfiguratorView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnNubTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V
    .registers 2

    .prologue
    .line 320
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$OnNubTouchListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/rebound/ui/SpringConfiguratorView;
    .param p2, "x1"    # Lcom/facebook/rebound/ui/SpringConfiguratorView$1;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$OnNubTouchListener;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 323
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    .line 324
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$OnNubTouchListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    # invokes: Lcom/facebook/rebound/ui/SpringConfiguratorView;->togglePosition()V
    invoke-static {v0}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$1200(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    .line 326
    :cond_b
    const/4 v0, 0x1

    return v0
.end method
