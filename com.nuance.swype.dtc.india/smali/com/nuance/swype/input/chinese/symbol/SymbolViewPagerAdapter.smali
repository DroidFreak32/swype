.class Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SymbolViewPagerAdapter.java"


# instance fields
.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->views:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->addView(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public addView(Landroid/view/View;I)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 86
    return p2
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 23
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 24
    const/4 v0, -0x2

    .line 26
    .end local v0    # "index":I
    :cond_0
    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 36
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 37
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 67
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeView(Landroid/support/v4/view/ViewPager;I)I
    .locals 1
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "position"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 111
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 114
    return p2
.end method

.method public removeView(Landroid/support/v4/view/ViewPager;Landroid/view/View;)I
    .locals 1
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->removeView(Landroid/support/v4/view/ViewPager;I)I

    move-result v0

    return v0
.end method
