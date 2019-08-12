.class Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1$1;
.super Ljava/lang/Object;
.source "ChinesePrefsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->creatAddOnDictionaryPref()Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;

.field final synthetic val$userPrefs:Lcom/nuance/swype/input/UserPreferences;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;Lcom/nuance/swype/input/UserPreferences;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1$1;->val$userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1$1;->val$userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->showNetworkNotificationDialog()V

    .line 87
    :goto_0
    return v2

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1$1;->this$1:Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showAddonDictionaries()V

    goto :goto_0
.end method
