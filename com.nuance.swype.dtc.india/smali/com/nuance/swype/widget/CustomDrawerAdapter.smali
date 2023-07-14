.class public final Lcom/nuance/swype/widget/CustomDrawerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CustomDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/nuance/swype/widget/DrawerItem;",
        ">;"
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field context:Landroid/content/Context;

.field drawerItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/widget/DrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field layoutResID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "CustomDrawerAdapter"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/widget/CustomDrawerAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/widget/DrawerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p3, "listItems":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/widget/DrawerItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 28
    iput-object p1, p0, Lcom/nuance/swype/widget/CustomDrawerAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/nuance/swype/widget/CustomDrawerAdapter;->drawerItemList:Ljava/util/List;

    .line 30
    iput p2, p0, Lcom/nuance/swype/widget/CustomDrawerAdapter;->layoutResID:I

    .line 32
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 40
    .line 42
    move-object v3, p2

    .local v3, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 43
    iget-object v4, p0, Lcom/nuance/swype/widget/CustomDrawerAdapter;->context:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 44
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;

    invoke-direct {v1, v8}, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;-><init>(B)V

    .line 46
    .local v1, "drawerHolder":Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;
    iget v4, p0, Lcom/nuance/swype/widget/CustomDrawerAdapter;->layoutResID:I

    invoke-virtual {v2, v4, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 47
    sget v4, Lcom/nuance/swype/input/R$id;->drawer_item:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;->drawerItem:Landroid/widget/LinearLayout;

    .line 48
    sget v4, Lcom/nuance/swype/input/R$id;->drawer_itemName:I

    .line 49
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;->ItemName:Landroid/widget/TextView;

    .line 50
    sget v4, Lcom/nuance/swype/input/R$id;->drawer_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;->icon:Landroid/widget/ImageView;

    .line 51
    sget v4, Lcom/nuance/swype/input/R$id;->divider:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;->divider:Landroid/view/View;

    .line 52
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/widget/CustomDrawerAdapter;->drawerItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/widget/DrawerItem;

    .line 60
    .local v0, "dItem":Lcom/nuance/swype/widget/DrawerItem;
    iget-object v4, v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1021
    iget v6, v0, Lcom/nuance/swype/widget/DrawerItem;->imgResID:I

    .line 60
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v4, v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;->ItemName:Landroid/widget/TextView;

    .line 2015
    iget-object v5, v0, Lcom/nuance/swype/widget/DrawerItem;->ItemName:Ljava/lang/String;

    .line 62
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget-object v4, Lcom/nuance/swype/widget/CustomDrawerAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v11, [Ljava/lang/Object;

    const-string/jumbo v6, "getView...position: "

    aput-object v6, v5, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "...name: "

    aput-object v6, v5, v9

    .line 3015
    iget-object v6, v0, Lcom/nuance/swype/widget/DrawerItem;->ItemName:Ljava/lang/String;

    .line 63
    aput-object v6, v5, v10

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4015
    iget-object v4, v0, Lcom/nuance/swype/widget/DrawerItem;->ItemName:Ljava/lang/String;

    .line 64
    iget-object v5, p0, Lcom/nuance/swype/widget/CustomDrawerAdapter;->context:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->drawer_divider_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    sget-object v4, Lcom/nuance/swype/widget/CustomDrawerAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "getView...drawerHolder.ItemName: "

    aput-object v6, v5, v8

    iget-object v6, v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;->ItemName:Landroid/widget/TextView;

    aput-object v6, v5, v7

    const-string/jumbo v6, "...drawerHolder.icon: "

    aput-object v6, v5, v9

    iget-object v6, v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;->icon:Landroid/widget/ImageView;

    aput-object v6, v5, v10

    const-string/jumbo v6, "...drawerHolder.divider: "

    aput-object v6, v5, v11

    const/4 v6, 0x5

    iget-object v7, v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;->divider:Landroid/view/View;

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 68
    iget-object v4, v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;->drawerItem:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget-object v4, v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;->divider:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    return-object v3

    .line 55
    .end local v0    # "dItem":Lcom/nuance/swype/widget/DrawerItem;
    .end local v1    # "drawerHolder":Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;

    .restart local v1    # "drawerHolder":Lcom/nuance/swype/widget/CustomDrawerAdapter$DrawerItemHolder;
    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/nuance/swype/widget/CustomDrawerAdapter;->drawerItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/widget/DrawerItem;

    .line 78
    .local v0, "dItem":Lcom/nuance/swype/widget/DrawerItem;
    if-eqz v0, :cond_0

    .line 5015
    iget-object v1, v0, Lcom/nuance/swype/widget/DrawerItem;->ItemName:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/nuance/swype/widget/CustomDrawerAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/nuance/swype/input/R$string;->drawer_divider_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    const/4 v1, 0x0

    .line 81
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
