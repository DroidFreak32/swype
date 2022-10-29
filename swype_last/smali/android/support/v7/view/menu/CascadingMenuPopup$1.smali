.class final Landroid/support/v7/view/menu/CascadingMenuPopup$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/view/menu/CascadingMenuPopup;

    .prologue
    .line 95
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 4

    .prologue
    .line 101
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
    invoke-static {v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3a

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    .line 102
    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
    invoke-static {v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v1, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    .line 1339
    iget-boolean v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    .line 102
    if-nez v1, :cond_3a

    .line 103
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$100(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 105
    :cond_35
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 113
    .end local v0    # "anchor":Landroid/view/View;
    :cond_3a
    return-void

    .line 108
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_3b
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
    invoke-static {v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 109
    iget-object v1, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    goto :goto_45
.end method
