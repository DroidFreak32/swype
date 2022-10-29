.class final Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .prologue
    .line 2054
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2056
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 3145
    iget-object v1, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 3449
    iget v2, v1, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    .line 3146
    iget v1, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-ne v1, v6, :cond_5a

    move v3, v4

    .line 3147
    :goto_e
    if-eqz v3, :cond_5c

    .line 3148
    iget-object v1, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v6}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 3149
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :cond_1d
    add-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    .line 3155
    :goto_20
    if-eqz v2, :cond_59

    if-eqz v3, :cond_2a

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v1, :cond_32

    :cond_2a
    if-nez v3, :cond_59

    .line 3156
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v1, :cond_59

    :cond_32
    iget-object v0, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    .line 3157
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_59

    .line 3158
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 3159
    iget-object v3, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3, v2, v1, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 3160
    # setter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z
    invoke-static {v0, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$202(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z

    .line 3161
    iget-object v0, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 3163
    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 3165
    iget-object v0, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->cancelChildViewTouch()V

    .line 2057
    :cond_59
    return-void

    :cond_5a
    move v3, v0

    .line 3146
    goto :goto_e

    .line 3151
    :cond_5c
    iget-object v0, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 3152
    iget-object v0, v5, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    goto :goto_20
.end method
