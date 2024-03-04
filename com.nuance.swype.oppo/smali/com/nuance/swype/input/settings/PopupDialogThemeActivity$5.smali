.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;
.super Ljava/lang/Object;
.source "PopupDialogThemeActivity.java"

# interfaces
.implements Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    .locals 9
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;
    .param p2, "purchase"    # Lcom/nuance/swype/inapp/util/Purchase;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 248
    sget-object v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in onIabPurchaseFinished, threadId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 249
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    move-result-object v2

    if-nez v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2, v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(I)V

    .line 251
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string v3, "error"

    const-string v4, "network"

    invoke-static {v2, v3, v7, v4, v7}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 252
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    .line 295
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 256
    sget-object v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "purchased sku is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "themeId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/ThemeManager;->importMlsHotwords(Landroid/content/Context;)V

    .line 264
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v2, v6, v1}, Lcom/nuance/swype/input/ThemeManager;->onPurchaseFinished(ILjava/lang/String;)V

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string v3, "success"

    const-string v4, ""

    invoke-static {v2, v3, v7, v4, v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 267
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2, v8, v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(ILandroid/content/Intent;)V

    .line 292
    .end local v0    # "resultIntent":Landroid/content/Intent;
    .end local v1    # "themeId":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->getThemePurchaser(Landroid/content/Context;)Lcom/nuance/swype/inapp/ThemePurchaser;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/swype/inapp/ThemePurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 294
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    goto/16 :goto_0

    .line 269
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p1, Lcom/nuance/swype/inapp/util/IabResult;->mResponse:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .restart local v1    # "themeId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .restart local v0    # "resultIntent":Landroid/content/Intent;
    const-string v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->getThemePurchaser(Landroid/content/Context;)Lcom/nuance/swype/inapp/ThemePurchaser;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/inapp/ThemePurchaser;->addToPurchased(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    if-eqz v2, :cond_3

    .line 281
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/ThemeManager;->importMlsHotwords(Landroid/content/Context;)V

    .line 282
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v2, v6, v1}, Lcom/nuance/swype/input/ThemeManager;->onPurchaseFinished(ILjava/lang/String;)V

    .line 284
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string v3, "success"

    const-string v4, ""

    invoke-static {v2, v3, v7, v4, v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 285
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2, v8, v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 288
    .end local v0    # "resultIntent":Landroid/content/Intent;
    .end local v1    # "themeId":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2, v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(I)V

    .line 289
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string v3, "error"

    const-string v4, "network"

    invoke-static {v2, v3, v7, v4, v7}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto/16 :goto_1
.end method
