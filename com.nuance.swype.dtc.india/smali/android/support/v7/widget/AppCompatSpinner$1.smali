.class final Landroid/support/v7/widget/AppCompatSpinner$1;
.super Landroid/support/v7/widget/ForwardingListener;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/AppCompatSpinner;

.field final synthetic val$popup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/AppCompatSpinner;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 254
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$1;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    iput-object p3, p0, Landroid/support/v7/widget/AppCompatSpinner$1;->val$popup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$1;->val$popup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    return-object v0
.end method

.method public final onForwardingStarted()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$1;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->access$000(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    move-result-object v0

    .line 1823
    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 262
    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$1;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->access$000(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->show()V

    .line 265
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
