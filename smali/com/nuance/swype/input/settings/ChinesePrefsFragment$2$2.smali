.class Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2$2;
.super Ljava/lang/Object;
.source "ChinesePrefsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->creatAddOnDictionaryPref()Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2$2;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2$2;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 104
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2$2;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreementNotAsk()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2$2;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->showNetworkNotificationDialog()V

    .line 106
    const/4 v1, 0x1

    .line 108
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
