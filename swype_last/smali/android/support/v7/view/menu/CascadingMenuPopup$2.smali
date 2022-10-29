.class final Landroid/support/v7/view/menu/CascadingMenuPopup$2;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/support/v7/widget/MenuItemHoverListener;


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
    .line 116
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .registers 15
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 129
    iget-object v8, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$200(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 132
    const/4 v2, -0x1

    .line 133
    .local v2, "menuIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v8, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
    invoke-static {v8}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_16
    if-ge v1, v0, :cond_29

    .line 134
    iget-object v8, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
    invoke-static {v8}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v8, :cond_2d

    .line 135
    move v2, v1

    .line 140
    :cond_29
    const/4 v8, -0x1

    if-ne v2, v8, :cond_30

    .line 173
    :goto_2c
    return-void

    .line 133
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 145
    :cond_30
    add-int/lit8 v3, v2, 0x1

    .line 146
    .local v3, "nextIndex":I
    iget-object v8, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
    invoke-static {v8}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_61

    .line 147
    iget-object v8, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
    invoke-static {v8}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 152
    .local v4, "nextInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :goto_4a
    new-instance v5, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;

    invoke-direct {v5, p0, v4, p2, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup$2$1;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup$2;Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 171
    .local v5, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xc8

    add-long v6, v8, v10

    .line 172
    .local v6, "uptimeMillis":J
    iget-object v8, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$200(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5, p1, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_2c

    .line 149
    .end local v4    # "nextInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v5    # "runnable":Ljava/lang/Runnable;
    .end local v6    # "uptimeMillis":J
    :cond_61
    const/4 v4, 0x0

    .restart local v4    # "nextInfo":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    goto :goto_4a
.end method

.method public final onItemHoverExit(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$200(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 123
    return-void
.end method
