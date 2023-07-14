.class Lcom/nuance/swype/input/settings/MyWordsPrefs$7;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 495
    iget-object v7, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v7}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 496
    .local v3, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v7, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v7}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 497
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 498
    iget-object v7, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v7}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 500
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 501
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v9}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 525
    .end local p1    # "preference":Landroid/preference/Preference;
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 505
    .restart local p1    # "preference":Landroid/preference/Preference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    .line 506
    .local v0, "change":Z
    instance-of v7, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_4

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 507
    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v5

    .line 508
    .local v1, "oldStateChecked":Z
    :goto_1
    if-nez v1, :cond_2

    iget-object v7, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 509
    invoke-static {v7, v5, v5, v5, v9}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$200(Lcom/nuance/swype/input/settings/MyWordsPrefs;IZZLandroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 512
    :cond_2
    if-eqz v1, :cond_5

    .line 513
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v9}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    :goto_2
    move v6, v0

    .line 525
    goto :goto_0

    .end local v1    # "oldStateChecked":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    move v1, v6

    .line 507
    goto :goto_1

    .line 515
    .restart local v1    # "oldStateChecked":Z
    :cond_5
    const/4 v0, 0x1

    .line 516
    iget-object v7, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v7, v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->setStatsCollection(Z)V

    .line 517
    iget-object v7, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 518
    invoke-static {v7}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 519
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_3

    .line 520
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 521
    .local v4, "value":Z
    const-string/jumbo v7, "pref_connect_contribute_usage_data"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    if-nez v4, :cond_6

    .line 522
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 521
    invoke-interface {v2, v7, v8, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_3
.end method
