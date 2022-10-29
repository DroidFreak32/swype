.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddonDictionariesPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChineseDictionariesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_ENTRY:I = 0x1

.field private static final TYPE_HEADER:I


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cdbList:Lcom/nuance/swype/input/CategoryDBList;

.field private connected:Z

.field private final dataChanged:Ljava/lang/Runnable;

.field private final dictionaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;",
            ">;>;"
        }
    .end annotation
.end field

.field private downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

.field private final handler:Landroid/os/Handler;

.field private final listDataChanged:Ljava/lang/Runnable;

.field private final parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Landroid/os/Handler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadManager"    # Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
    .param p3, "parent"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 380
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->categories:Ljava/util/List;

    .line 360
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    .line 362
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$1;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dataChanged:Ljava/lang/Runnable;

    .line 369
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->listDataChanged:Ljava/lang/Runnable;

    .line 381
    iput-object p2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    .line 382
    iput-object p3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .line 383
    iput-object p4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->handler:Landroid/os/Handler;

    .line 384
    new-instance v0, Lcom/nuance/swype/input/CategoryDBList;

    invoke-direct {v0, p1}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    .line 385
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->updateListData()V

    .line 386
    return-void
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;)Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method dataChanged()V
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dataChanged:Ljava/lang/Runnable;

    # invokes: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$900(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method public getCount()I
    .registers 5

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "count":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 485
    .local v1, "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 486
    add-int/lit8 v0, v0, 0x1

    .line 487
    goto :goto_b

    .line 488
    .end local v1    # "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    :cond_25
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 8
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 493
    if-gez p1, :cond_1c

    .line 495
    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Too low; index="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v2, v3

    .line 511
    :goto_1b
    return-object v2

    .line 498
    :cond_1c
    const/4 v0, 0x0

    .line 499
    .local v0, "count":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 500
    .local v1, "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    if-ne v0, p1, :cond_3a

    .line 501
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1b

    .line 503
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    .line 504
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    if-ge p1, v2, :cond_56

    .line 505
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sub-int v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1b

    .line 507
    :cond_56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 508
    goto :goto_27

    .line 510
    .end local v1    # "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    :cond_62
    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Too high; index="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v2, v3

    .line 511
    goto :goto_1b
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 516
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 705
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 531
    const/4 v3, 0x0

    .line 532
    .local v3, "layout":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 533
    .local v2, "item":Ljava/lang/Object;
    instance-of v6, v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    if-eqz v6, :cond_1a0

    move-object v0, v2

    .line 534
    check-cast v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 537
    .local v0, "dictionary":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_ff

    .line 538
    :cond_14
    iget-object v6, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$300(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$layout;->language_download_list_item:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 542
    iget-object v6, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$300(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 543
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    const/16 v7, 0x10

    if-le v6, v7, :cond_45

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    const/16 v7, 0x10

    if-gt v6, v7, :cond_64

    .line 544
    :cond_45
    iget-object v6, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$300(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 545
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x42000000    # 32.0f

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 546
    .local v4, "padding":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    .line 547
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 546
    invoke-virtual {p2, v4, v6, v4, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 551
    .end local v4    # "padding":I
    :cond_64
    new-instance v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$1;)V

    .line 552
    .local v1, "holder":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;
    sget v6, Lcom/nuance/swype/input/R$id;->icon:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 553
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v7, Lcom/nuance/swype/input/R$drawable;->icon_settings_error:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 554
    sget v6, Lcom/nuance/swype/input/R$id;->title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 555
    sget v6, Lcom/nuance/swype/input/R$id;->summary:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 556
    sget v6, Lcom/nuance/swype/input/R$id;->progressBar1:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 557
    sget v6, Lcom/nuance/swype/input/R$id;->cancel:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    .line 558
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 563
    :goto_a6
    if-eqz v1, :cond_fd

    .line 564
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v6, :cond_d3

    .line 565
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const-string/jumbo v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    :cond_d3
    sget-object v6, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$10;->$SwitchMap$com$nuance$swype$input$settings$AddonDictionariesPrefs$DownloadableDictionary$Status:[I

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getStatus()Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_20e

    .line 619
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 627
    :cond_fd
    :goto_fd
    move-object v3, p2

    .line 647
    .end local v0    # "dictionary":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .end local v1    # "holder":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;
    :goto_fe
    return-object v3

    .line 560
    .restart local v0    # "dictionary":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    :cond_ff
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;
    goto :goto_a6

    .line 569
    :pswitch_106
    iget-boolean v6, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->connected:Z

    if-nez v6, :cond_14a

    .line 570
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    :goto_110
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getProgress()I

    move-result v6

    if-lez v6, :cond_152

    .line 575
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getProgress()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 576
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 577
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 581
    :goto_12c
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 583
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    new-instance v7, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$3;

    invoke-direct {v7, p0, v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$3;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_fd

    .line 572
    :cond_14a
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_110

    .line 579
    :cond_152
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_12c

    .line 605
    :pswitch_159
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 609
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    sget v7, Lcom/nuance/swype/input/R$string;->pref_download_language_installed:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_fd

    .line 612
    :pswitch_17c
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 616
    iget-object v6, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    sget v7, Lcom/nuance/swype/input/R$string;->pref_download_language_installed:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_fd

    .line 628
    .end local v0    # "dictionary":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .end local v1    # "holder":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;
    :cond_1a0
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_201

    .line 629
    iget-object v6, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$300(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x1090002

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 631
    .local v5, "view":Landroid/widget/TextView;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v6, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$300(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v6

    if-eqz v6, :cond_1fe

    .line 635
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    const/16 v7, 0x10

    if-le v6, v7, :cond_1df

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v6

    const/16 v7, 0x10

    if-gt v6, v7, :cond_1fe

    .line 636
    :cond_1df
    iget-object v6, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$300(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 637
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x42000000    # 32.0f

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 638
    .restart local v4    # "padding":I
    invoke-virtual {v5}, Landroid/widget/TextView;->getTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getBottom()I

    move-result v7

    invoke-virtual {v5, v4, v6, v4, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 641
    .end local v4    # "padding":I
    :cond_1fe
    move-object v3, v5

    .line 642
    goto/16 :goto_fe

    .line 644
    .end local v5    # "view":Landroid/widget/TextView;
    :cond_201
    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    const-string/jumbo v7, "Error!"

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_fe

    .line 567
    nop

    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_106
        :pswitch_159
        :pswitch_17c
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 700
    const/4 v0, 0x2

    return v0
.end method

.method installDictionary(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V
    .registers 6
    .param p1, "d"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .prologue
    .line 681
    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "installDictionary("

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 682
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 683
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;

    invoke-direct {v2, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V

    .line 685
    return-void
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 689
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    return v0
.end method

.method public onConnectionChanged(Z)V
    .registers 2
    .param p1, "isConnected"    # Z

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->connected:Z

    .line 676
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->notifyDataSetChanged()V

    .line 677
    return-void
.end method

.method onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 652
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 653
    .local v1, "d":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    if-eqz v1, :cond_1e

    .line 654
    sget-object v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$10;->$SwitchMap$com$nuance$swype$input$settings$AddonDictionariesPrefs$DownloadableDictionary$Status:[I

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getStatus()Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5a

    .line 664
    iget-boolean v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->connected:Z

    if-eqz v2, :cond_53

    .line 665
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->installDictionary(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V

    .line 672
    :cond_1e
    :goto_1e
    :pswitch_1e
    return-void

    .line 658
    :pswitch_1f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 659
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "dictionary_addon_key"

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string/jumbo v2, "dictionary_addon_display_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->showRemoveDictionaryDialog(Landroid/os/Bundle;)V

    goto :goto_1e

    .line 667
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_53
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->showConnectDialog()V

    goto :goto_1e

    .line 654
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method removeDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .registers 7
    .param p1, "d"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    .line 397
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 398
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 399
    .local v0, "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 400
    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 405
    .end local v0    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    :cond_43
    return-void
.end method

.method declared-synchronized updateData()V
    .registers 19

    .prologue
    .line 409
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    invoke-static {v14}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1000(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v2

    .line 410
    .local v2, "available":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    invoke-static {v14}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1000(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v13

    .line 411
    .local v13, "updatable":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    invoke-static {v14}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1000(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v6

    .line 413
    .local v6, "downloaded":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v11, "total":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-interface {v11, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 415
    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 416
    invoke-interface {v11, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v14}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getDictionaryDownloadList()Ljava/util/List;

    move-result-object v7

    .line 418
    .local v7, "downloadingKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 419
    .local v12, "totalDictionaries":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_44
    :goto_44
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_130

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 420
    .local v4, "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;
    invoke-static {v15}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1100(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v15

    if-eqz v15, :cond_44

    .line 421
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    move-object/from16 v16, v0

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;
    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1100(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_44

    .line 422
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_44

    .line 423
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_44

    .line 426
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->categories:Ljava/util/List;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_97

    .line 427
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->categories:Ljava/util/List;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_97
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b5

    .line 430
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_b5
    const/4 v5, 0x0

    .line 433
    .local v5, "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 434
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_c8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 435
    .local v3, "current":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c8

    .line 436
    move-object v5, v3

    .line 440
    .end local v3    # "current":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    :cond_e7
    if-nez v5, :cond_11b

    .line 441
    sget-object v10, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 442
    .local v10, "status":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/nuance/swype/input/CategoryDBList;->isCategoryInstalled(I)Z

    move-result v15

    if-eqz v15, :cond_123

    .line 443
    sget-object v10, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->INSTALLED:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 447
    :cond_fb
    :goto_fb
    new-instance v5, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .end local v5    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    move-object/from16 v0, p0

    invoke-direct {v5, v4, v10, v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;Landroid/widget/BaseAdapter;)V

    .line 448
    .restart local v5    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    sget-object v15, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    if-ne v10, v15, :cond_118

    .line 449
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V

    invoke-virtual/range {v15 .. v17}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->registerDictionaryDownloadListener(Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)Z

    .line 452
    :cond_118
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v10    # "status":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    :cond_11b
    invoke-interface {v12, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_11e
    .catchall {:try_start_1 .. :try_end_11e} :catchall_120

    goto/16 :goto_44

    .line 409
    .end local v2    # "available":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .end local v4    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .end local v5    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .end local v6    # "downloaded":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .end local v7    # "downloadingKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    .end local v11    # "total":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .end local v12    # "totalDictionaries":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    .end local v13    # "updatable":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    :catchall_120
    move-exception v14

    monitor-exit p0

    throw v14

    .line 444
    .restart local v2    # "available":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .restart local v4    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .restart local v5    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .restart local v6    # "downloaded":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .restart local v7    # "downloadingKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    .restart local v10    # "status":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    .restart local v11    # "total":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .restart local v12    # "totalDictionaries":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    .restart local v13    # "updatable":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    :cond_123
    :try_start_123
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_fb

    .line 445
    sget-object v10, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    goto :goto_fb

    .line 456
    .end local v4    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .end local v5    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    .end local v10    # "status":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    :cond_130
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_13c
    :goto_13c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 457
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 458
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_13c

    .line 459
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13c

    .line 462
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    :cond_16b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_177
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_193

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 463
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->dictionaryNameComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1200()Ljava/util/Comparator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_177

    .line 465
    :cond_193
    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v14

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "updateData total="

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, " dictionaries="

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->categories:Ljava/util/List;

    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 470
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_1f4

    .line 471
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->handler:Landroid/os/Handler;

    const/16 v15, 0x65

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->handler:Landroid/os/Handler;

    const/16 v16, 0x65

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0x32

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1f2
    .catchall {:try_start_123 .. :try_end_1f2} :catchall_120

    .line 478
    :goto_1f2
    monitor-exit p0

    return-void

    .line 475
    :cond_1f4
    :try_start_1f4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->handler:Landroid/os/Handler;

    const/16 v15, 0x66

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->handler:Landroid/os/Handler;

    const/16 v16, 0x66

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0x32

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_210
    .catchall {:try_start_1f4 .. :try_end_210} :catchall_120

    goto :goto_1f2
.end method

.method updateListData()V
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->listDataChanged:Ljava/lang/Runnable;

    # invokes: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$900(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method
