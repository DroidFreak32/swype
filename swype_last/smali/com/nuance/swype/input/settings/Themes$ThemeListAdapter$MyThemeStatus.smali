.class Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;
.super Ljava/lang/Object;
.source "Themes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyThemeStatus"
.end annotation


# instance fields
.field public final cancel:Landroid/widget/ImageView;

.field public final defaultTextColors:Landroid/content/res/ColorStateList;

.field public final downloadImage:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

.field public hasDownloadableTheme:Z

.field public final name:Landroid/widget/TextView;

.field public final price:Landroid/widget/TextView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final progressBarRow:Landroid/widget/LinearLayout;

.field public sku:Ljava/lang/String;

.field public final statusIcon:Landroid/widget/ImageView;

.field public final tile:Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;Lcom/nuance/swype/util/drawable/ImageViewWrapper;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 10
    .param p1, "tile"    # Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;
    .param p2, "v"    # Lcom/nuance/swype/util/drawable/ImageViewWrapper;
    .param p3, "name"    # Landroid/widget/TextView;
    .param p4, "statusIcon"    # Landroid/widget/ImageView;
    .param p5, "price"    # Landroid/widget/TextView;
    .param p6, "progressBarRow"    # Landroid/widget/LinearLayout;
    .param p7, "progressBar"    # Landroid/widget/ProgressBar;
    .param p8, "cancel"    # Landroid/widget/ImageView;
    .param p9, "defaultTextColors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->tile:Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;

    .line 745
    iput-object p2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->downloadImage:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    .line 746
    iput-object p3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->name:Landroid/widget/TextView;

    .line 747
    iput-object p4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->statusIcon:Landroid/widget/ImageView;

    .line 748
    iput-object p5, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->price:Landroid/widget/TextView;

    .line 749
    iput-object p6, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBarRow:Landroid/widget/LinearLayout;

    .line 750
    iput-object p7, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    .line 751
    iput-object p8, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->cancel:Landroid/widget/ImageView;

    .line 752
    iput-object p9, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->defaultTextColors:Landroid/content/res/ColorStateList;

    .line 753
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;Lcom/nuance/swype/util/drawable/ImageViewWrapper;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/content/res/ColorStateList;Lcom/nuance/swype/input/settings/Themes$1;)V
    .registers 11
    .param p1, "x0"    # Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;
    .param p2, "x1"    # Lcom/nuance/swype/util/drawable/ImageViewWrapper;
    .param p3, "x2"    # Landroid/widget/TextView;
    .param p4, "x3"    # Landroid/widget/ImageView;
    .param p5, "x4"    # Landroid/widget/TextView;
    .param p6, "x5"    # Landroid/widget/LinearLayout;
    .param p7, "x6"    # Landroid/widget/ProgressBar;
    .param p8, "x7"    # Landroid/widget/ImageView;
    .param p9, "x8"    # Landroid/content/res/ColorStateList;
    .param p10, "x9"    # Lcom/nuance/swype/input/settings/Themes$1;

    .prologue
    .line 728
    invoke-direct/range {p0 .. p9}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;-><init>(Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;Lcom/nuance/swype/util/drawable/ImageViewWrapper;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method initProgressBar()V
    .registers 3

    .prologue
    .line 768
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_11

    .line 769
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 770
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 772
    :cond_11
    return-void
.end method

.method setHasDownloadableThem(Z)V
    .registers 2
    .param p1, "hasDownloadableTheme"    # Z

    .prologue
    .line 760
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->hasDownloadableTheme:Z

    .line 761
    return-void
.end method

.method setSku(Ljava/lang/String;)V
    .registers 2
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->sku:Ljava/lang/String;

    .line 757
    return-void
.end method

.method setThemeName(Ljava/lang/String;)V
    .registers 3
    .param p1, "themeName"    # Ljava/lang/String;

    .prologue
    .line 764
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    return-void
.end method

.method updateStatus(Landroid/content/Context;Landroid/view/View;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Z)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "theme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .param p4, "isCurrent"    # Z

    .prologue
    const/high16 v9, -0x1000000

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 776
    sget-object v2, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "updateStatus: "

    aput-object v4, v3, v6

    invoke-virtual {p3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 778
    invoke-virtual {p3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v2, v3, :cond_f1

    move-object v0, p3

    .line 779
    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 780
    .local v0, "connectTheme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getStatusIcon(Landroid/content/Context;)I

    move-result v1

    .line 781
    .local v1, "statusIconId":I
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    if-eqz v2, :cond_c1

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 1235
    iget-boolean v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalling:Z

    .line 781
    if-eqz v2, :cond_c1

    .line 783
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBarRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 784
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->price:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 785
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 787
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 1242
    iget v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->installingPercentage:I

    .line 787
    if-lez v2, :cond_bb

    .line 788
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 789
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    .line 2242
    iget v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->installingPercentage:I

    .line 789
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 793
    :goto_5e
    sget-object v2, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "updateStatus: "

    aput-object v4, v3, v6

    invoke-virtual {p3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string/jumbo v5, " installing: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v5

    .line 3242
    iget v5, v5, Lcom/nuance/swype/util/storage/ThemeItemSeed;->installingPercentage:I

    .line 793
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v4, "%"

    aput-object v4, v3, v8

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 818
    .end local v0    # "connectTheme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .end local v1    # "statusIconId":I
    :goto_89
    sget v2, Lcom/nuance/swype/input/R$drawable;->settings_theme_background:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 819
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 822
    if-eqz p4, :cond_10c

    .line 824
    invoke-virtual {p2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 825
    sget v2, Lcom/nuance/swype/input/R$drawable;->settings_theme_background_current:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 826
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 827
    invoke-virtual {p3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v2, v3, :cond_ba

    .line 828
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 829
    check-cast p3, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local p3    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {p3, p1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getStatusIcon(Landroid/content/Context;)I

    move-result v1

    .line 830
    .restart local v1    # "statusIconId":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 836
    .end local v1    # "statusIconId":I
    :cond_ba
    :goto_ba
    return-void

    .line 791
    .restart local v0    # "connectTheme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .restart local v1    # "statusIconId":I
    .restart local p3    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_bb
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_5e

    .line 796
    :cond_c1
    if-eqz v1, :cond_d8

    .line 797
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 798
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBarRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 799
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->price:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_89

    .line 802
    :cond_d8
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->price:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 803
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 804
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBarRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 805
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->price:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getStatusText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_89

    .line 809
    .end local v0    # "connectTheme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .end local v1    # "statusIconId":I
    :cond_f1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->progressBarRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 810
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->price:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    iget-boolean v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->hasDownloadableTheme:Z

    if-eqz v2, :cond_105

    .line 812
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_89

    .line 814
    :cond_105
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_89

    .line 833
    :cond_10c
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 834
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->defaultTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_ba
.end method
