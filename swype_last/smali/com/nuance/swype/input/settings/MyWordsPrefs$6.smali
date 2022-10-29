.class Lcom/nuance/swype/input/settings/MyWordsPrefs$6;
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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 452
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->connect:Lcom/nuance/swype/connect/Connect;
    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$500(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->livingLanguageLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;
    invoke-static {v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$400(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v0

    .line 454
    .local v0, "l":Lcom/nuance/swype/connect/Connect$LivingLanguage;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 455
    .local v1, "newCheckedState":Z
    if-eqz v1, :cond_80

    .line 456
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 457
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 458
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 460
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 461
    iget-object v4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 475
    .end local v2    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_47
    :goto_47
    return v3

    .line 463
    .restart local v2    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_48
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v5

    if-eqz v5, :cond_6d

    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 464
    # getter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->activity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 465
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v5, v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->setStatsCollection(Z)V

    .line 470
    .end local v2    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_6d
    :goto_6d
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v5

    if-ne v1, v5, :cond_78

    .line 471
    iget-object v5, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$6;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    # setter for: Lcom/nuance/swype/input/settings/MyWordsPrefs;->settingsChanged:Z
    invoke-static {v5, v4}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$002(Lcom/nuance/swype/input/settings/MyWordsPrefs;Z)Z

    .line 475
    :cond_78
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v5

    if-ne v1, v5, :cond_47

    move v3, v4

    goto :goto_47

    .line 468
    :cond_80
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->disable()V

    goto :goto_6d
.end method
