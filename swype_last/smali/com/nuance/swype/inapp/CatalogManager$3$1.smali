.class final Lcom/nuance/swype/inapp/CatalogManager$3$1;
.super Ljava/lang/Object;
.source "CatalogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/inapp/CatalogManager$3;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/inapp/CatalogManager$3;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/CatalogManager$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/nuance/swype/inapp/CatalogManager$3;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager$3$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 633
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$3$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$3;

    iget-object v1, v1, Lcom/nuance/swype/inapp/CatalogManager$3;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$702$5c4c8ca3(Lcom/nuance/swype/inapp/CatalogManager;)Z

    .line 634
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "connect initialized."

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 635
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$3$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$3;

    iget-object v1, v1, Lcom/nuance/swype/inapp/CatalogManager$3;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    .line 636
    .local v0, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager;->getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 1043
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->getCache()Ljava/util/HashMap;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 637
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$3$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$3;

    iget-object v1, v1, Lcom/nuance/swype/inapp/CatalogManager$3;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v1

    .line 638
    invoke-virtual {v1}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 639
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$3$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$3;

    iget-object v1, v1, Lcom/nuance/swype/inapp/CatalogManager$3;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->setUpService()V

    .line 641
    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$3$1;->this$1:Lcom/nuance/swype/inapp/CatalogManager$3;

    iget-object v1, v1, Lcom/nuance/swype/inapp/CatalogManager$3;->this$0:Lcom/nuance/swype/inapp/CatalogManager;

    # getter for: Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/nuance/swype/inapp/CatalogManager;->access$100(Lcom/nuance/swype/inapp/CatalogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ThemeManager;->refetchPurchaseInfoFromGoogleStore(Landroid/content/Context;)V

    .line 643
    :cond_53
    return-void
.end method
