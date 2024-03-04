.class Lcom/nuance/swype/input/settings/SettingsPrefsActivity$1;
.super Lcom/nuance/swype/input/settings/SettingsPrefs;
.source "SettingsPrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsPrefsActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/SettingsPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsActivity;

    sget v1, Lcom/nuance/swype/input/settings/SettingsPrefs;->PREFERENCES_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefsActivity;->addPreferencesFromResource(I)V

    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected createInputLanguagePref(Landroid/os/Bundle;)Landroid/preference/Preference;
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsActivity;

    .line 38
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/LanguagePrefsActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 40
    return-object v1
.end method

.method doShowDialog(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsActivity;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/SettingsPrefsActivity;->removeDialog(I)V

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/SettingsPrefsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 47
    return-void
.end method
