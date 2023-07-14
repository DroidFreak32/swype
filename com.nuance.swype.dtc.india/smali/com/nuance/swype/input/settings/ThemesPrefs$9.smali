.class Lcom/nuance/swype/input/settings/ThemesPrefs$9;
.super Ljava/lang/Object;
.source "ThemesPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesPrefs;->createKeyboardHeightDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    .line 388
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    .line 389
    invoke-static {v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$300(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 390
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$300(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 391
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    if-eqz v1, :cond_0

    .line 392
    const-string/jumbo v3, "Keyboard Height"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Portrait:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    .line 394
    invoke-static {v5}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$200(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v5

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Landscape:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    .line 395
    invoke-static {v5}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$400(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v5

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Portrait:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Landscape:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 398
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-interface {v1, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$300(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 402
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getKeyboardBackgroundManager()Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 405
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$200(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardScalePortrait(F)V

    .line 406
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$400(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardScaleLandscape(F)V

    .line 1023
    sget-boolean v3, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 408
    if-eqz v3, :cond_2

    .line 409
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$300(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$9;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-static {v4}, Lcom/nuance/swype/input/settings/ThemesPrefs;->access$200(Lcom/nuance/swype/input/settings/ThemesPrefs;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setKeyboardHeight(F)V

    .line 412
    :cond_2
    return-void
.end method
