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

    .prologue
    .line 457
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 459
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$400(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$300(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v0

    .line 460
    .local v0, "l":Lcom/nuance/swype/connect/Connect$LivingLanguage;
    if-eqz v0, :cond_0

    .line 461
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 462
    .local v1, "newCheckedState":Z
    if-eqz v1, :cond_3

    .line 463
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 464
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 465
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreementNotAsk()Z

    move-result v5

    if-nez v5, :cond_1

    .line 468
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 482
    .end local v1    # "newCheckedState":Z
    .end local v2    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_0
    :goto_0
    return v3

    .line 470
    .restart local v1    # "newCheckedState":Z
    .restart local v2    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 472
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$7;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v5, v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->setStatsCollection(Z)V

    .line 480
    .end local v2    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v5

    if-ne v1, v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->disable()V

    goto :goto_1
.end method
