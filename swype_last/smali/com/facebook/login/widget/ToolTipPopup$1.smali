.class Lcom/facebook/login/widget/ToolTipPopup$1;
.super Ljava/lang/Object;
.source "ToolTipPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/ToolTipPopup;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/ToolTipPopup;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$000(Lcom/facebook/login/widget/ToolTipPopup;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$100(Lcom/facebook/login/widget/ToolTipPopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$100(Lcom/facebook/login/widget/ToolTipPopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 79
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$100(Lcom/facebook/login/widget/ToolTipPopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 80
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;
    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$200(Lcom/facebook/login/widget/ToolTipPopup;)Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->showBottomArrow()V

    .line 85
    :cond_35
    :goto_35
    return-void

    .line 82
    :cond_36
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$1;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    # getter for: Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;
    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup;->access$200(Lcom/facebook/login/widget/ToolTipPopup;)Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->showTopArrow()V

    goto :goto_35
.end method
