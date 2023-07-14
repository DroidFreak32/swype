.class Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;
.super Ljava/lang/Object;
.source "Themes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;->this$0:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;->val$parent:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 678
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 679
    .local v0, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v0, :cond_0

    .line 681
    :try_start_0
    sget-object v2, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "progress bar cancel button pressed"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 682
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;->this$0:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->access$300(Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 1120
    iget-object v1, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 683
    .local v1, "categoryKey":Ljava/lang/String;
    iget v3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;->val$position:I

    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;->this$0:Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->access$300(Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;->val$position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/nuance/swype/inapp/CatalogManager;->cancelDownloadTheme(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .end local v1    # "categoryKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method
