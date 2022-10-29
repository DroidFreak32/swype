.class abstract Landroid/support/v7/view/menu/BaseMenuWrapper;
.super Landroid/support/v7/view/menu/BaseWrapper;
.source "BaseMenuWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/view/menu/BaseWrapper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field mMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/internal/view/SupportMenuItem;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field mSubMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/internal/view/SupportSubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Landroid/support/v7/view/menu/BaseMenuWrapper;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Landroid/support/v7/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .registers 7
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 42
    .local p0, "this":Landroid/support/v7/view/menu/BaseMenuWrapper;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    instance-of v2, p1, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v2, :cond_41

    move-object v0, p1

    .line 43
    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    .line 46
    .local v0, "supportMenuItem":Landroid/support/v4/internal/view/SupportMenuItem;
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v2, :cond_12

    .line 47
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    .line 51
    :cond_12
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 53
    .local v1, "wrappedItem":Landroid/view/MenuItem;
    if-nez v1, :cond_2e

    .line 55
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    .line 1043
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2f

    .line 1044
    new-instance v1, Landroid/support/v7/view/menu/MenuItemWrapperJB;

    .end local v1    # "wrappedItem":Landroid/view/MenuItem;
    invoke-direct {v1, v2, v0}, Landroid/support/v7/view/menu/MenuItemWrapperJB;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    .line 56
    .restart local v1    # "wrappedItem":Landroid/view/MenuItem;
    :goto_29
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v0    # "supportMenuItem":Landroid/support/v4/internal/view/SupportMenuItem;
    .end local v1    # "wrappedItem":Landroid/view/MenuItem;
    :cond_2e
    :goto_2e
    return-object v1

    .line 1045
    .restart local v0    # "supportMenuItem":Landroid/support/v4/internal/view/SupportMenuItem;
    .restart local v1    # "wrappedItem":Landroid/view/MenuItem;
    :cond_2f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_3b

    .line 1046
    new-instance v1, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    .end local v1    # "wrappedItem":Landroid/view/MenuItem;
    invoke-direct {v1, v2, v0}, Landroid/support/v7/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    goto :goto_29

    .line 1048
    .restart local v1    # "wrappedItem":Landroid/view/MenuItem;
    :cond_3b
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .end local v0    # "supportMenuItem":Landroid/support/v4/internal/view/SupportMenuItem;
    .end local v1    # "wrappedItem":Landroid/view/MenuItem;
    :cond_41
    move-object v1, p1

    .line 61
    goto :goto_2e
.end method

.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .registers 7
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 65
    .local p0, "this":Landroid/support/v7/view/menu/BaseMenuWrapper;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    instance-of v2, p1, Landroid/support/v4/internal/view/SupportSubMenu;

    if-eqz v2, :cond_35

    move-object v0, p1

    .line 66
    check-cast v0, Landroid/support/v4/internal/view/SupportSubMenu;

    .line 69
    .local v0, "supportSubMenu":Landroid/support/v4/internal/view/SupportSubMenu;
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    if-nez v2, :cond_12

    .line 70
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    .line 73
    :cond_12
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SubMenu;

    .line 75
    .local v1, "wrappedMenu":Landroid/view/SubMenu;
    if-nez v1, :cond_2e

    .line 76
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    .line 1052
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_2f

    .line 1053
    new-instance v1, Landroid/support/v7/view/menu/SubMenuWrapperICS;

    .end local v1    # "wrappedMenu":Landroid/view/SubMenu;
    invoke-direct {v1, v2, v0}, Landroid/support/v7/view/menu/SubMenuWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)V

    .line 77
    .restart local v1    # "wrappedMenu":Landroid/view/SubMenu;
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v0    # "supportSubMenu":Landroid/support/v4/internal/view/SupportSubMenu;
    .end local v1    # "wrappedMenu":Landroid/view/SubMenu;
    :cond_2e
    :goto_2e
    return-object v1

    .line 1055
    .restart local v0    # "supportSubMenu":Landroid/support/v4/internal/view/SupportSubMenu;
    .restart local v1    # "wrappedMenu":Landroid/view/SubMenu;
    :cond_2f
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .end local v0    # "supportSubMenu":Landroid/support/v4/internal/view/SupportSubMenu;
    .end local v1    # "wrappedMenu":Landroid/view/SubMenu;
    :cond_35
    move-object v1, p1

    .line 81
    goto :goto_2e
.end method
