.class public final Landroid/support/v7/view/menu/SubMenuBuilder;
.super Landroid/support/v7/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field public mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentMenu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p3, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 41
    iput-object p3, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 42
    return-void
.end method


# virtual methods
.method public final collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method final dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 85
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public final getItem()Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public final getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final isQwertyMode()Z
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public final isShortcutsVisible()Z
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public final setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 75
    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 8
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 103
    .line 2258
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-super/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 103
    check-cast p0, Landroid/view/SubMenu;

    .end local p0    # "this":Landroid/support/v7/view/menu/SubMenuBuilder;
    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 8
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    .line 2246
    invoke-super/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 99
    check-cast p0, Landroid/view/SubMenu;

    .end local p0    # "this":Landroid/support/v7/view/menu/SubMenuBuilder;
    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 8
    .param p1, "titleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 111
    .line 3234
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-super/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 111
    check-cast p0, Landroid/view/SubMenu;

    .end local p0    # "this":Landroid/support/v7/view/menu/SubMenuBuilder;
    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 8
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 107
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    .line 3222
    invoke-super/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 107
    check-cast p0, Landroid/view/SubMenu;

    .end local p0    # "this":Landroid/support/v7/view/menu/SubMenuBuilder;
    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    .line 3270
    invoke-super/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 115
    check-cast p0, Landroid/view/SubMenu;

    .end local p0    # "this":Landroid/support/v7/view/menu/SubMenuBuilder;
    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .registers 3
    .param p1, "iconRes"    # I

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 95
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 90
    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .registers 3
    .param p1, "isQwerty"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/view/menu/SubMenuBuilder;->mParentMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 47
    return-void
.end method
