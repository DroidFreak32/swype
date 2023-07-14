.class public Lcom/nuance/swype/input/store/ThemePageAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ThemePageAdapter.java"


# static fields
.field private static final fragmentsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private registeredFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "ThemePageAdapter"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/store/ThemePageAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragmentsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->registeredFragments:Landroid/util/SparseArray;

    .line 24
    return-void
.end method


# virtual methods
.method public addFragments(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "fragmentsList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    sget-object v0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragmentsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/nuance/swype/input/store/ThemePageAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "addFragments...fragments: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...fragmentsMap: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragmentsMap:Ljava/util/Map;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/nuance/swype/input/store/ThemePageAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "destroyItem...position: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...registeredFragments: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->registeredFragments:Landroid/util/SparseArray;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRegisteredFragment(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 91
    sget-object v0, Lcom/nuance/swype/input/store/ThemePageAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getRegisteredFragment...position: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "...registeredFragments: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->registeredFragments:Landroid/util/SparseArray;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRegisteredFragmentByCategory(I)Landroid/support/v4/app/Fragment;
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 101
    sget-object v4, Lcom/nuance/swype/input/store/ThemePageAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "getRegisteredFragmentByCategory...position: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "...fragments: "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "...registeredFragments: "

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->registeredFragments:Landroid/util/SparseArray;

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 103
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 105
    .local v1, "fm":Landroid/support/v4/app/Fragment;
    instance-of v4, v1, Lcom/nuance/swype/input/settings/ThemesFragment;

    if-eqz v4, :cond_1

    .line 106
    check-cast v1, Lcom/nuance/swype/input/settings/ThemesFragment;

    .end local v1    # "fm":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesFragment;->getFragmentCategory()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "category":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 109
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 110
    .local v3, "item":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/ThemesFragment;->getFragmentCategory()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/ThemesFragment;->getFragmentCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    .end local v0    # "category":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/support/v4/app/Fragment;
    :goto_1
    return-object v3

    .line 108
    .restart local v0    # "category":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "category":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public declared-synchronized instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 64
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 67
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 68
    .local v0, "fm":Landroid/support/v4/app/Fragment;
    instance-of v2, v0, Lcom/nuance/swype/input/settings/ThemesFragment;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/nuance/swype/input/settings/ThemesFragment;

    .end local v0    # "fm":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getFragmentCategory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 70
    sget-object v2, Lcom/nuance/swype/input/store/ThemePageAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "instantiateItem...replace fragment at position: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    invoke-interface {v2, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    :cond_0
    sget-object v2, Lcom/nuance/swype/input/store/ThemePageAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "instantiateItem...position: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "...fragment: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "...registeredFragments: "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->registeredFragments:Landroid/util/SparseArray;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "...fragments: "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "...fragmentsMap: "

    aput-object v5, v3, v4

    const/16 v4, 0x9

    sget-object v5, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragmentsMap:Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-object v1

    .line 63
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setCurrentFragments(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragmentsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lcom/nuance/swype/input/store/ThemePageAdapter;->notifyDataSetChanged()V

    .line 34
    sget-object v0, Lcom/nuance/swype/input/store/ThemePageAdapter;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setCurrentFragments...key: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "....fragments: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragments:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "...fragmentsMap: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/nuance/swype/input/store/ThemePageAdapter;->fragmentsMap:Ljava/util/Map;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
