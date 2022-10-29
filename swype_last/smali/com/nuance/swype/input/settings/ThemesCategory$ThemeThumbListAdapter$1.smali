.class Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$1;
.super Ljava/lang/Object;
.source "ThemesCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

.field final synthetic val$position:I

.field final synthetic val$theme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;ILcom/nuance/swype/input/ThemeManager$SwypeTheme;)V
    .registers 4
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    iput p2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$1;->val$theme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 638
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$1;->this$0:Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    # getter for: Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->access$400(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 639
    .local v0, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v0, :cond_25

    .line 641
    :try_start_10
    iget v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$1;->val$theme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    check-cast v1, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 643
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    .line 1120
    iget-object v1, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 644
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$1;->val$theme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-virtual {v0, v2, v1, v3}, Lcom/nuance/swype/inapp/CatalogManager;->cancelDownloadTheme(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_10 .. :try_end_25} :catch_26

    .line 649
    :cond_25
    :goto_25
    return-void

    .line 646
    :catch_26
    move-exception v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_25
.end method
