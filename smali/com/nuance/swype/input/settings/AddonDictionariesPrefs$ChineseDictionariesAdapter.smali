.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddonDictionariesPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

.field private final context:Landroid/content/Context;

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

.field private final parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadManager"    # Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
    .param p3, "parent"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 370
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

    .line 371
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->context:Landroid/content/Context;

    .line 372
    iput-object p2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    .line 373
    iput-object p3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .line 374
    new-instance v0, Lcom/nuance/swype/input/CategoryDBList;

    invoke-direct {v0, p1}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    .line 375
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->updateData()V

    .line 376
    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;)Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public dataChanged()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dataChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "count":I
    iget-object v3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 470
    .local v1, "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 471
    add-int/lit8 v0, v0, 0x1

    .line 472
    goto :goto_0

    .line 473
    .end local v1    # "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 478
    if-gez p1, :cond_0

    .line 480
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Too low; index="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v3, v4

    .line 496
    :goto_0
    return-object v3

    .line 483
    :cond_0
    const/4 v0, 0x0

    .line 484
    .local v0, "count":I
    iget-object v3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 485
    .local v1, "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    if-ne v0, p1, :cond_1

    .line 486
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 488
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 489
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    if-ge p1, v3, :cond_2

    .line 490
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sub-int v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 492
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 493
    goto :goto_1

    .line 495
    .end local v1    # "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    :cond_3
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Too high; index="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    move-object v3, v4

    .line 496
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 501
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 515
    const/4 v3, 0x0

    .line 516
    .local v3, "layout":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 517
    .local v2, "item":Ljava/lang/Object;
    instance-of v5, v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    if-eqz v5, :cond_4

    move-object v0, v2

    .line 518
    check-cast v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 521
    .local v0, "dictionary":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 522
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$300(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$layout;->language_download_list_item:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 525
    new-instance v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;

    invoke-direct {v1, v7}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$1;)V

    .line 526
    .local v1, "holder":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;
    sget v5, Lcom/nuance/swype/input/R$id;->icon:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 527
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v6, Lcom/nuance/swype/input/R$drawable;->ic_connection_error:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 528
    sget v5, Lcom/nuance/swype/input/R$id;->title:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 529
    sget v5, Lcom/nuance/swype/input/R$id;->summary:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 530
    sget v5, Lcom/nuance/swype/input/R$id;->progressBar1:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 531
    sget v5, Lcom/nuance/swype/input/R$id;->cancel:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    .line 532
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 537
    :goto_0
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    sget-object v5, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$10;->$SwitchMap$com$nuance$swype$input$settings$AddonDictionariesPrefs$DownloadableDictionary$Status:[I

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getStatus()Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 590
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 597
    :goto_1
    move-object v3, p2

    .line 615
    .end local v0    # "dictionary":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .end local v1    # "holder":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;
    :goto_2
    return-object v3

    .line 534
    .restart local v0    # "dictionary":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;
    goto :goto_0

    .line 540
    :pswitch_0
    iget-boolean v5, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->connected:Z

    if-nez v5, :cond_2

    .line 541
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    :goto_3
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getProgress()I

    move-result v5

    if-lez v5, :cond_3

    .line 546
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 547
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 548
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 552
    :goto_4
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 554
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    new-instance v6, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;

    invoke-direct {v6, p0, v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 543
    :cond_2
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 550
    :cond_3
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_4

    .line 576
    :pswitch_1
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 580
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    sget v6, Lcom/nuance/swype/input/R$string;->pref_download_language_installed:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 583
    :pswitch_2
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 587
    iget-object v5, v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    sget v6, Lcom/nuance/swype/input/R$string;->pref_download_language_installed:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 598
    .end local v0    # "dictionary":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .end local v1    # "holder":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;
    :cond_4
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 599
    iget-object v5, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$300(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x1090002

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 601
    .local v4, "view":Landroid/widget/TextView;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    move-object v3, v4

    .line 603
    goto/16 :goto_2

    .line 605
    .end local v4    # "view":Landroid/widget/TextView;
    :cond_5
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    const-string v6, "Error!"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x2

    return v0
.end method

.method public installDictionary(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V
    .locals 4
    .param p1, "d"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .prologue
    .line 648
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "installDictionary("

    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 649
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 650
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;

    invoke-direct {v2, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)V

    .line 652
    return-void
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    return v0
.end method

.method public onConnectionChanged(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .prologue
    .line 642
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->connected:Z

    .line 643
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->notifyDataSetChanged()V

    .line 644
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 619
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 620
    .local v1, "d":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    if-eqz v1, :cond_0

    .line 621
    sget-object v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$10;->$SwitchMap$com$nuance$swype$input$settings$AddonDictionariesPrefs$DownloadableDictionary$Status:[I

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getStatus()Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 631
    iget-boolean v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->connected:Z

    if-eqz v2, :cond_1

    .line 632
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->installDictionary(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V

    .line 639
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 625
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 626
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "dictionary_addon_key"

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v2, "dictionary_addon_display_name"

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->showRemoveDictionaryDialog(Landroid/os/Bundle;)V

    goto :goto_0

    .line 634
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->showConnectDialog()V

    goto :goto_0

    .line 621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    .locals 5
    .param p1, "d"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .prologue
    .line 383
    iget-object v3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 385
    .local v0, "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    sget-object v3, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 391
    .end local v0    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method declared-synchronized updateData()V
    .locals 21

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$900(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v2

    .line 396
    .local v2, "available":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$900(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v15

    .line 397
    .local v15, "updatable":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$900(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v6

    .line 399
    .local v6, "downloaded":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v13, "total":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-interface {v13, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 402
    invoke-interface {v13, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->getDictionaryDownloadList()Ljava/util/List;

    move-result-object v7

    .line 404
    .local v7, "downloadingKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 405
    .local v14, "totalDictionaries":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 406
    .local v4, "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1000(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1000(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->categories:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->categories:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_2
    const/4 v5, 0x0

    .line 417
    .local v5, "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 418
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 419
    .local v3, "current":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 420
    move-object v5, v3

    .line 424
    .end local v3    # "current":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    :cond_4
    if-nez v5, :cond_7

    .line 425
    sget-object v12, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 426
    .local v12, "status":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/nuance/swype/input/CategoryDBList;->isCategoryInstalled(I)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 427
    sget-object v12, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->INSTALLED:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 431
    :cond_5
    :goto_1
    new-instance v5, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .end local v5    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    move-object/from16 v0, p0

    invoke-direct {v5, v4, v12, v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;-><init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;Landroid/widget/BaseAdapter;)V

    .line 432
    .restart local v5    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    sget-object v16, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    move-object/from16 v0, v16

    if-ne v12, v0, :cond_6

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V

    invoke-virtual/range {v16 .. v18}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->registerDictionaryDownloadListener(Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadStatusCallback;)Z

    .line 436
    :cond_6
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v12    # "status":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    :cond_7
    invoke-interface {v14, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 395
    .end local v2    # "available":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .end local v4    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .end local v5    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .end local v6    # "downloaded":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .end local v7    # "downloadingKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    .end local v13    # "total":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .end local v14    # "totalDictionaries":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    .end local v15    # "updatable":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 428
    .restart local v2    # "available":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .restart local v4    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .restart local v5    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .restart local v6    # "downloaded":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .restart local v7    # "downloadingKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    .restart local v12    # "status":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    .restart local v13    # "total":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    .restart local v14    # "totalDictionaries":Ljava/util/Set;, "Ljava/util/Set<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    .restart local v15    # "updatable":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    :cond_8
    :try_start_1
    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 429
    sget-object v12, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    goto :goto_1

    .line 440
    .end local v4    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .end local v5    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    .end local v12    # "status":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 441
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 442
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 446
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 447
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1100()Ljava/util/Comparator;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 449
    :cond_c
    invoke-static {}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$1200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v16

    const-string v17, "updateData total="

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, " dictionaries="

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v16 .. v20}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->categories:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dataChanged:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 455
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_d

    .line 456
    sget-object v16, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    const/16 v17, 0x65

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    sget-object v16, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    sget-object v17, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    const/16 v18, 0x65

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x32

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :goto_4
    monitor-exit p0

    return-void

    .line 460
    :cond_d
    :try_start_2
    sget-object v16, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    const/16 v17, 0x66

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    sget-object v16, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    sget-object v17, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    const/16 v18, 0x66

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x32

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method
