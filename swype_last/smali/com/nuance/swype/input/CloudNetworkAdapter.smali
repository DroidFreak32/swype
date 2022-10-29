.class public Lcom/nuance/swype/input/CloudNetworkAdapter;
.super Landroid/widget/BaseAdapter;
.source "CloudNetworkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/CloudNetworkAdapter$Holder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentNetworkKey:Ljava/lang/String;

.field private final mKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetWorkOpt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "currentNetworkKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "NetWorkOpt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "keySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/nuance/swype/input/CloudNetworkAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/nuance/swype/input/CloudNetworkAdapter;->mNetWorkOpt:Ljava/util/Map;

    .line 26
    iput-object p3, p0, Lcom/nuance/swype/input/CloudNetworkAdapter;->mKeyList:Ljava/util/List;

    .line 27
    iput-object p4, p0, Lcom/nuance/swype/input/CloudNetworkAdapter;->mCurrentNetworkKey:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/CloudNetworkAdapter;->mNetWorkOpt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/CloudNetworkAdapter;->mKeyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    if-nez p2, :cond_29

    .line 57
    iget-object v4, p0, Lcom/nuance/swype/input/CloudNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$layout;->chinese_cloud_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    const v4, 0x1020014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 60
    .local v3, "label":Landroid/widget/TextView;
    const v4, 0x1020019

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 61
    .local v0, "button":Landroid/widget/RadioButton;
    new-instance v4, Lcom/nuance/swype/input/CloudNetworkAdapter$Holder;

    invoke-direct {v4, v3, v0}, Lcom/nuance/swype/input/CloudNetworkAdapter$Holder;-><init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_29
    iget-object v4, p0, Lcom/nuance/swype/input/CloudNetworkAdapter;->mNetWorkOpt:Ljava/util/Map;

    iget-object v5, p0, Lcom/nuance/swype/input/CloudNetworkAdapter;->mKeyList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, "label":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/CloudNetworkAdapter;->mCurrentNetworkKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/swype/input/CloudNetworkAdapter;->mKeyList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 72
    .local v1, "checked":Z
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/CloudNetworkAdapter$Holder;

    .line 73
    .local v2, "holder":Lcom/nuance/swype/input/CloudNetworkAdapter$Holder;
    iget-object v4, v2, Lcom/nuance/swype/input/CloudNetworkAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, v2, Lcom/nuance/swype/input/CloudNetworkAdapter$Holder;->checkable:Landroid/widget/Checkable;

    invoke-interface {v4, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 75
    return-object p2
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
