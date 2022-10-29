.class Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;
.super Ljava/lang/Object;
.source "ThemesCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadableThemeStatus"
.end annotation


# instance fields
.field public final cancel:Landroid/widget/ImageView;

.field public final downloadedLogo:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

.field public final indetermineView:Landroid/view/View;

.field public final name:Landroid/widget/TextView;

.field public final price:Landroid/widget/TextView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final progressBarRow:Landroid/widget/LinearLayout;

.field private sku:Ljava/lang/String;

.field public final statusIcon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/util/drawable/ImageViewWrapper;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 9
    .param p1, "logo"    # Lcom/nuance/swype/util/drawable/ImageViewWrapper;
    .param p2, "name"    # Landroid/widget/TextView;
    .param p3, "statusIcon"    # Landroid/widget/ImageView;
    .param p4, "price"    # Landroid/widget/TextView;
    .param p5, "progressBarRow"    # Landroid/widget/LinearLayout;
    .param p6, "progressBar"    # Landroid/widget/ProgressBar;
    .param p7, "cancel"    # Landroid/widget/ImageView;
    .param p8, "indetermineView"    # Landroid/view/View;

    .prologue
    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->downloadedLogo:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    .line 707
    iput-object p2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->name:Landroid/widget/TextView;

    .line 708
    iput-object p3, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->statusIcon:Landroid/widget/ImageView;

    .line 709
    iput-object p4, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->price:Landroid/widget/TextView;

    .line 710
    iput-object p5, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBarRow:Landroid/widget/LinearLayout;

    .line 711
    iput-object p6, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    .line 712
    iput-object p7, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->cancel:Landroid/widget/ImageView;

    .line 713
    iput-object p8, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->indetermineView:Landroid/view/View;

    .line 714
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/util/drawable/ImageViewWrapper;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/view/View;Lcom/nuance/swype/input/settings/ThemesCategory$1;)V
    .registers 10
    .param p1, "x0"    # Lcom/nuance/swype/util/drawable/ImageViewWrapper;
    .param p2, "x1"    # Landroid/widget/TextView;
    .param p3, "x2"    # Landroid/widget/ImageView;
    .param p4, "x3"    # Landroid/widget/TextView;
    .param p5, "x4"    # Landroid/widget/LinearLayout;
    .param p6, "x5"    # Landroid/widget/ProgressBar;
    .param p7, "x6"    # Landroid/widget/ImageView;
    .param p8, "x7"    # Landroid/view/View;
    .param p9, "x8"    # Lcom/nuance/swype/input/settings/ThemesCategory$1;

    .prologue
    .line 684
    invoke-direct/range {p0 .. p8}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;-><init>(Lcom/nuance/swype/util/drawable/ImageViewWrapper;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->sku:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->setThemeName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->setSku(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->initProgressBar()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Landroid/view/View;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .param p3, "x3"    # Landroid/view/View;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 684
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->updateStatus(Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private initProgressBar()V
    .registers 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_11

    .line 722
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 723
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 726
    :cond_11
    return-void
.end method

.method private setSku(Ljava/lang/String;)V
    .registers 2
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->sku:Ljava/lang/String;

    .line 718
    return-void
.end method

.method private setThemeName(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "themeName"    # Ljava/lang/CharSequence;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    return-void
.end method

.method private updateStatus(Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Landroid/view/View;Ljava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "currentSku"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 732
    sget-object v2, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateStatus: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 734
    invoke-virtual {p2, p1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getStatusIcon(Landroid/content/Context;)I

    move-result v1

    .line 736
    .local v1, "statusIconId":I
    invoke-virtual {p2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    if-eqz v2, :cond_5c

    invoke-virtual {p2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 1235
    iget-boolean v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalling:Z

    .line 736
    if-eqz v2, :cond_5c

    .line 737
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->price:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 739
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBarRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_42

    .line 740
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBarRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 742
    :cond_42
    invoke-virtual {p2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 1242
    iget v0, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->installingPercentage:I

    .line 743
    .local v0, "progress":I
    if-lez v0, :cond_55

    .line 744
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 745
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 773
    .end local v0    # "progress":I
    :goto_54
    return-void

    .line 747
    .restart local v0    # "progress":I
    :cond_55
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_54

    .line 754
    .end local v0    # "progress":I
    :cond_5c
    if-eqz v1, :cond_84

    .line 755
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBarRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 756
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 757
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->price:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 758
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 767
    :goto_72
    if-eqz p4, :cond_9d

    invoke-virtual {p2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 768
    sget v2, Lcom/nuance/swype/input/R$drawable;->settings_theme_background_current:I

    invoke-virtual {p3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_54

    .line 760
    :cond_84
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->price:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 761
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 762
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->progressBarRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 763
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->price:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getStatusText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 770
    :cond_9d
    sget v2, Lcom/nuance/swype/input/R$drawable;->settings_theme_background:I

    invoke-virtual {p3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_54
.end method
