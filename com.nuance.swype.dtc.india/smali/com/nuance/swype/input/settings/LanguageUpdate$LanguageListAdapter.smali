.class Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LanguageUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private builtinLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

.field private initialized:Z

.field private final langMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

.field private final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:[I

.field private parentListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/input/settings/LanguageUpdate;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadManager"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p3, "parent"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 393
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    .line 386
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    .line 388
    const/4 v1, 0x0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    .line 394
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->context:Landroid/content/Context;

    .line 395
    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 396
    iput-object p3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    .line 397
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 398
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string/jumbo v1, "builtin_languages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->builtinLanguages:Ljava/util/List;

    .line 399
    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;)Lcom/nuance/swype/input/settings/LanguageUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    return-object v0
.end method

.method private updateView(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V
    .locals 10
    .param p1, "holder"    # Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    .param p2, "lang"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v8, 0x8

    .line 556
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    const/4 v1, 0x0

    .line 560
    .local v1, "refresh":Z
    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v0

    .line 561
    .local v0, "languageId":I
    iget v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->languageId:I

    if-eq v5, v0, :cond_2

    .line 562
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v5

    .line 563
    :try_start_0
    iput v0, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->languageId:I

    .line 564
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iput-object v9, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    .line 567
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 568
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 569
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iput-object v9, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->previousStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 571
    const/4 v1, 0x1

    .line 574
    :cond_2
    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    iget-object v6, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->previousStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-eq v5, v6, :cond_5

    move v2, v4

    .line 575
    .local v2, "statusChanged":Z
    :goto_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_6

    :cond_3
    move v1, v4

    .line 576
    :goto_2
    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    iput-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->previousStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 577
    if-nez v1, :cond_4

    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->previousStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->previousStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 578
    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 579
    :cond_4
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "updateView...lang.getStatus(): "

    aput-object v7, v6, v3

    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 580
    sget-object v5, Lcom/nuance/swype/input/settings/LanguageUpdate$8;->$SwitchMap$com$nuance$swype$connect$SDKDownloadManager$DownloadableLanguage$Status:[I

    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 661
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 663
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 665
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 564
    .end local v2    # "statusChanged":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_5
    move v2, v3

    .line 574
    goto :goto_1

    .restart local v2    # "statusChanged":Z
    :cond_6
    move v1, v3

    .line 575
    goto :goto_2

    .line 583
    :pswitch_0
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getProgress()I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-eq v5, v6, :cond_b

    .line 585
    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getProgress()I

    move-result v4

    const/16 v5, 0x5f

    if-lt v4, v5, :cond_7

    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 593
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_7

    .line 594
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    :cond_7
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 598
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 603
    :goto_3
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 607
    if-nez v1, :cond_8

    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_a

    .line 608
    :cond_8
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_9

    .line 610
    new-instance v3, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;I)V

    iput-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    .line 617
    :cond_9
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    :cond_a
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 600
    :cond_b
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 601
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_3

    .line 624
    :pswitch_1
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 625
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 628
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    sget v4, Lcom/nuance/swype/input/R$string;->pref_download_language_installed:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 629
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 633
    :pswitch_2
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 634
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 636
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 637
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    sget v4, Lcom/nuance/swype/input/R$string;->pref_download_language_update:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 638
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 642
    :pswitch_3
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 643
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 645
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 646
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    sget v4, Lcom/nuance/swype/input/R$string;->notification_successfully_updated:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 647
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 651
    :pswitch_4
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 653
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 657
    :pswitch_5
    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method doNotifyDataSetInvalidated()V
    .locals 2

    .prologue
    .line 717
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 718
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string/jumbo v1, "DATASET INVALIDATED OFF MAIN THREAD"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 722
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 490
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 497
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v2

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x10

    .line 505
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->parentListView:Landroid/widget/ListView;

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    instance-of v3, p3, Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 506
    check-cast p3, Landroid/widget/ListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    iput-object p3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->parentListView:Landroid/widget/ListView;

    .line 509
    :cond_0
    if-nez p2, :cond_3

    .line 510
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$layout;->language_download_list_item:I

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 514
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    if-le v3, v5, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    if-gt v3, v5, :cond_2

    .line 515
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 516
    .local v2, "padding":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p2, v2, v3, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 520
    .end local v2    # "padding":I
    :cond_2
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;

    invoke-direct {v0, v6}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate$1;)V

    .line 521
    .local v0, "holder":Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    sget v3, Lcom/nuance/swype/input/R$id;->icon:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 522
    iget-object v3, v0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v4, Lcom/nuance/swype/input/R$drawable;->icon_settings_error:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 523
    sget v3, Lcom/nuance/swype/input/R$id;->title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 524
    sget v3, Lcom/nuance/swype/input/R$id;->summary:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 525
    sget v3, Lcom/nuance/swype/input/R$id;->progressBar1:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 526
    sget v3, Lcom/nuance/swype/input/R$id;->cancel:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    .line 527
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 533
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v4

    .line 534
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 535
    .local v1, "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateView(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V

    .line 537
    return-object p2

    .line 529
    .end local v0    # "holder":Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    .end local v1    # "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    goto :goto_0

    .line 535
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public installLanguage(I)V
    .locals 9
    .param p1, "languageId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 444
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "installLanguage("

    aput-object v5, v4, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ")"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 445
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v1, "requestData":Landroid/os/Bundle;
    const-string/jumbo v3, "language"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v3, v7, v7, v8, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$700(Lcom/nuance/swype/input/settings/LanguageUpdate;IZZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 450
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v4

    .line 451
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 452
    .local v0, "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->showNoSpaceNotificationIfShortStorage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    .end local v0    # "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_0
    :goto_0
    return-void

    .line 452
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 457
    .restart local v0    # "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    .line 458
    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getEnglishName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/usagedata/UsageData;->recordLanguageDownloadRequest(Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 460
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_0

    .line 461
    const-string/jumbo v3, "Download Languages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " not installed"

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 702
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 703
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string/jumbo v1, "DATASET CHANGED OFF MAIN THREAD"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 707
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public notifyDataSetInvalidated()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 711
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 713
    return-void
.end method

.method public onConnectionChanged()V
    .locals 0

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->notifyDataSetChanged()V

    .line 726
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 673
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "adapter.onListItemClicked("

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ")"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 675
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v3

    .line 676
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    long-to-int v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 677
    .local v1, "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    if-eqz v1, :cond_0

    .line 679
    sget-object v2, Lcom/nuance/swype/input/settings/LanguageUpdate$8;->$SwitchMap$com$nuance$swype$connect$SDKDownloadManager$DownloadableLanguage$Status:[I

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 692
    :pswitch_0
    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->installLanguage(I)V

    .line 697
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 677
    .end local v1    # "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 684
    .restart local v1    # "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :pswitch_2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->builtinLanguages:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->builtinLanguages:Ljava/util/List;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getEnglishName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 688
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "language"

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 689
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->showRemoveLanguageDialog(Landroid/os/Bundle;)V

    goto :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removeLanguage(I)V
    .locals 4
    .param p1, "languageId"    # I

    .prologue
    .line 470
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v2

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 472
    .local v0, "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    if-eqz v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageUninstall(I)Z

    .line 476
    :cond_0
    return-void

    .line 472
    .end local v0    # "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateLanguages(Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "updated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    const/4 v0, 0x0

    .line 403
    .local v0, "changed":Z
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v6

    .line 405
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 406
    .local v3, "oldKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 407
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 408
    const/4 v0, 0x1

    .line 409
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 410
    .local v1, "key":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 411
    .local v4, "removed":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz v4, :cond_0

    .line 412
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v3    # "oldKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4    # "removed":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 418
    .restart local v3    # "oldKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 419
    .local v2, "language":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 425
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    const/4 v0, 0x1

    goto :goto_1

    .line 432
    .end local v2    # "language":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 433
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    iget-boolean v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->initialized:Z

    if-nez v5, :cond_5

    .line 435
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->initialized:Z

    .line 436
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->notifyDataSetChanged()V

    .line 440
    :cond_4
    :goto_2
    return v0

    .line 437
    :cond_5
    if-eqz v0, :cond_4

    .line 438
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public updateStatus(I)V
    .locals 11
    .param p1, "languageId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 729
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "updateStatus("

    aput-object v7, v6, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    const-string/jumbo v8, ")"

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 730
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->parentListView:Landroid/widget/ListView;

    if-nez v5, :cond_1

    .line 731
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "no parent list"

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v6

    .line 737
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 738
    .local v2, "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v5, v6, :cond_2

    .line 743
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v1, "installedLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 746
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/nuance/swype/input/InputMethods;->findLanguageBestFitsCurrentLocale(Ljava/util/Locale;Ljava/util/List;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 747
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v6

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 752
    .end local v0    # "currentLocale":Ljava/util/Locale;
    .end local v1    # "installedLang":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->parentListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->parentListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 753
    .local v3, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 754
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;

    .line 755
    .local v4, "vh":Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    invoke-direct {p0, v4, v2}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateView(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V

    goto :goto_0

    .line 738
    .end local v2    # "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "vh":Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
