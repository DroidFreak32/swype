.class Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LanguageUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

.field private connected:Z

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
    .line 337
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    .line 330
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    .line 332
    const/4 v1, 0x0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    .line 338
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->context:Landroid/content/Context;

    .line 339
    iput-object p2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 340
    iput-object p3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    .line 341
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 342
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string v1, "builtin_languages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->builtinLanguages:Ljava/util/List;

    .line 343
    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;)Lcom/nuance/swype/input/settings/LanguageUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    return-object v0
.end method

.method private updateView(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V
    .locals 10
    .param p1, "holder"    # Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    .param p2, "lang"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/16 v8, 0x8

    .line 492
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    const/4 v1, 0x0

    .line 496
    .local v1, "refresh":Z
    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v0

    .line 497
    .local v0, "languageId":I
    iget v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->languageId:I

    if-eq v5, v0, :cond_2

    .line 498
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v5

    .line 499
    :try_start_0
    iput v0, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->languageId:I

    .line 500
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iput-object v9, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    .line 503
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 504
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 505
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iput-object v9, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->previousStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 507
    const/4 v1, 0x1

    .line 510
    :cond_2
    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    iget-object v6, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->previousStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-eq v5, v6, :cond_4

    move v2, v3

    .line 511
    .local v2, "statusChanged":Z
    :goto_1
    if-eqz v1, :cond_5

    move v1, v3

    .line 512
    :goto_2
    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    iput-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->previousStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 513
    if-nez v1, :cond_3

    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->previousStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->previousStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 515
    :cond_3
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v5

    const-string v6, "updateView...lang.getStatus(): "

    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 516
    sget-object v5, Lcom/nuance/swype/input/settings/LanguageUpdate$9;->$SwitchMap$com$nuance$swype$connect$SDKDownloadManager$DownloadableLanguage$Status:[I

    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 579
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 582
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 583
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 500
    .end local v2    # "statusChanged":Z
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    :cond_4
    move v2, v4

    .line 510
    goto :goto_1

    .restart local v2    # "statusChanged":Z
    :cond_5
    move v1, v2

    .line 511
    goto :goto_2

    .line 519
    :pswitch_0
    iget-boolean v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->connected:Z

    if-nez v5, :cond_9

    .line 520
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    :goto_3
    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getProgress()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-eq v5, v6, :cond_a

    .line 525
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getProgress()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 526
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 531
    :goto_4
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 535
    if-nez v1, :cond_6

    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_8

    .line 536
    :cond_6
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_7

    .line 538
    new-instance v3, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;I)V

    iput-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    .line 545
    :cond_7
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    :cond_8
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 522
    :cond_9
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 528
    :cond_a
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 529
    iget-object v5, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_4

    .line 552
    :pswitch_1
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 556
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    sget v4, Lcom/nuance/swype/input/R$string;->pref_download_language_installed:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 557
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 561
    :pswitch_2
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 565
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    sget v4, Lcom/nuance/swype/input/R$string;->pref_download_language_update:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 566
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 570
    :pswitch_3
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 571
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 574
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    sget v4, Lcom/nuance/swype/input/R$string;->notification_successfully_updated:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 575
    iget-object v3, p1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x1

    return v0
.end method

.method doNotifyDataSetInvalidated()V
    .locals 2

    .prologue
    .line 668
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 669
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "DATASET INVALIDATED OFF MAIN THREAD"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 673
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 429
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
    .line 434
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v1

    .line 435
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 441
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v2

    .line 442
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 448
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->parentListView:Landroid/widget/ListView;

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    instance-of v3, p3, Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 449
    check-cast p3, Landroid/widget/ListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    iput-object p3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->parentListView:Landroid/widget/ListView;

    .line 452
    :cond_0
    if-nez p2, :cond_1

    .line 453
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    iget-object v3, v3, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$layout;->language_download_list_item:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 456
    new-instance v1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;

    invoke-direct {v1, v5}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate$1;)V

    .line 457
    .local v1, "holder":Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    sget v3, Lcom/nuance/swype/input/R$id;->icon:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 458
    iget-object v3, v1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v4, Lcom/nuance/swype/input/R$drawable;->ic_connection_error:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    sget v3, Lcom/nuance/swype/input/R$id;->title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 460
    sget v3, Lcom/nuance/swype/input/R$id;->summary:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 461
    sget v3, Lcom/nuance/swype/input/R$id;->progressBar1:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 462
    sget v3, Lcom/nuance/swype/input/R$id;->cancel:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;->cancel:Landroid/widget/ImageView;

    .line 463
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 468
    :goto_0
    const/4 v2, 0x0

    .line 469
    .local v2, "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v4

    .line 470
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-object v2, v0

    .line 471
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateView(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V

    .line 473
    return-object p2

    .line 465
    .end local v1    # "holder":Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    .end local v2    # "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    goto :goto_0

    .line 471
    .restart local v2    # "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public installLanguage(I)V
    .locals 9
    .param p1, "languageId"    # I

    .prologue
    const/4 v8, 0x1

    .line 386
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    const-string v5, "installLanguage("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 388
    .local v2, "requestData":Landroid/os/Bundle;
    const-string v4, "language"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    const/4 v5, 0x0

    invoke-static {v4, v8, v8, v5, v2}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$700(Lcom/nuance/swype/input/settings/LanguageUpdate;IZZLandroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v5

    .line 393
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-object v1, v0

    .line 394
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->showNoSpaceNotificationIfShortStorage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    .end local v1    # "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_0
    :goto_0
    return-void

    .line 394
    .restart local v1    # "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 399
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    .line 400
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v3

    .line 401
    .local v3, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v3, :cond_0

    .line 402
    const-string v4, "Download Languages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " installed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " not installed"

    invoke-interface {v3, v4, v5, v6}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 629
    const/4 v0, 0x1

    .line 630
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v2

    .line 631
    :try_start_0
    sget-object v3, Lcom/nuance/swype/input/settings/LanguageUpdate$9;->$SwitchMap$com$nuance$swype$connect$SDKDownloadManager$DownloadableLanguage$Status:[I

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 642
    :goto_0
    :pswitch_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    return v0

    .line 633
    :pswitch_1
    const/4 v0, 0x1

    .line 634
    goto :goto_0

    .line 641
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 653
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 654
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "DATASET CHANGED OFF MAIN THREAD"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 658
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public notifyDataSetInvalidated()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 662
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 663
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

    .line 664
    return-void
.end method

.method public onConnectionChanged(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .prologue
    .line 676
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->connected:Z

    .line 677
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->notifyDataSetChanged()V

    .line 678
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 590
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const-string v4, "adapter.onListItemClicked("

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 591
    const/4 v2, 0x0

    .line 592
    .local v2, "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v4

    .line 593
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    long-to-int v5, p4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-object v2, v0

    .line 594
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    if-eqz v2, :cond_0

    .line 596
    sget-object v3, Lcom/nuance/swype/input/settings/LanguageUpdate$9;->$SwitchMap$com$nuance$swype$connect$SDKDownloadManager$DownloadableLanguage$Status:[I

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 612
    :pswitch_0
    iget-boolean v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->connected:Z

    if-eqz v3, :cond_1

    .line 613
    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->installLanguage(I)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 594
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 598
    :pswitch_1
    iget-boolean v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->connected:Z

    if-nez v3, :cond_0

    .line 615
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/LanguageUpdate;->showConnectDialog()V

    goto :goto_0

    .line 604
    :pswitch_2
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->builtinLanguages:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->builtinLanguages:Ljava/util/List;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getEnglishName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 605
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 608
    .local v1, "args":Landroid/os/Bundle;
    const-string v3, "language"

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->showRemoveLanguageDialog(Landroid/os/Bundle;)V

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removeLanguage(I)V
    .locals 5
    .param p1, "languageId"    # I

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v3

    .line 412
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-object v1, v0

    .line 413
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    if-eqz v1, :cond_0

    .line 415
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageUninstall(I)Z

    .line 417
    :cond_0
    return-void

    .line 413
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
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
    .line 346
    .local p1, "updated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    const/4 v0, 0x0

    .line 347
    .local v0, "changed":Z
    iget-object v7, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v7

    .line 349
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 350
    .local v4, "oldKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 351
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 352
    const/4 v0, 0x1

    .line 353
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 354
    .local v2, "key":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 355
    .local v5, "removed":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz v5, :cond_0

    .line 356
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 375
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v4    # "oldKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v5    # "removed":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 362
    .restart local v4    # "oldKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 363
    .local v3, "language":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 369
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getCoreLanguageId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    const/4 v0, 0x1

    goto :goto_1

    .line 374
    .end local v3    # "language":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 375
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    iget-boolean v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->initialized:Z

    if-nez v6, :cond_5

    .line 377
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->initialized:Z

    .line 378
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->notifyDataSetChanged()V

    .line 382
    :cond_4
    :goto_2
    return v0

    .line 379
    :cond_5
    if-eqz v0, :cond_4

    .line 380
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public updateStatus(I)V
    .locals 8
    .param p1, "languageId"    # I

    .prologue
    .line 681
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    const-string v5, "updateStatus("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 682
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->parentListView:Landroid/widget/ListView;

    if-nez v4, :cond_1

    .line 683
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    const-string v5, "no parent list"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    const/4 v1, 0x0

    .line 687
    .local v1, "lang":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    const/4 v3, 0x0

    .line 688
    .local v3, "vh":Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->lock:[I

    monitor-enter v5

    .line 689
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->langMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-object v1, v0

    .line 690
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->parentListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->parentListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 692
    .local v2, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 693
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "vh":Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    check-cast v3, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;

    .line 694
    .restart local v3    # "vh":Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
    invoke-direct {p0, v3, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateView(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V

    goto :goto_0

    .line 690
    .end local v2    # "v":Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
