.class Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;
.super Lcom/nuance/swype/input/settings/ChinesePrefs;
.source "ChinesePrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/ChinesePrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    sget v1, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->CHINESE_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->addPreferencesFromResource(I)V

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected creatAddOnDictionaryPref()Landroid/preference/Preference;
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    .line 75
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, "pref":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 77
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    new-instance v3, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1$1;

    invoke-direct {v3, p0, v2}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1$1;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;Lcom/nuance/swype/input/UserPreferences;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    return-object v1
.end method

.method protected createFunctionBarPref()Landroid/preference/Preference;
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    .line 39
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/FunctionBarActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 41
    return-object v1
.end method

.method protected createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    .line 31
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 32
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/InputPrefsActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 33
    return-object v1
.end method

.method doCancelDialog(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefsActivity;)Lcom/nuance/swype/input/settings/ChinesePrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->removeActiveRef(I)V

    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->removeDialog(I)V

    .line 64
    return-void
.end method

.method doShowDialog(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->removeDialog(I)V

    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 58
    return-void
.end method

.method doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    return-void
.end method

.method public onNegativeButtonClick()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onPositiveButtonClick()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected showDownloadAddonDictionaries()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showAddonDictionaries()V

    .line 118
    return-void
.end method

.method protected showMaxCountdialog()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->showDialog(I)V

    .line 52
    return-void
.end method

.method protected showNetworkNotificationDialog()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefsActivity;->showDialog(I)V

    .line 113
    return-void
.end method
