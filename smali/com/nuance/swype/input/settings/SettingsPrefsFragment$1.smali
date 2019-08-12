.class Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;
.super Lcom/nuance/swype/input/settings/SettingsPrefs;
.source "SettingsPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/SettingsPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    sget v1, Lcom/nuance/swype/input/settings/SettingsPrefs;->PREFERENCES_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->addPreferencesFromResource(I)V

    .line 27
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected createInputLanguagePref(Landroid/os/Bundle;)Landroid/preference/Preference;
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 32
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "pref":Landroid/preference/Preference;
    const-class v1, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 35
    return-object v0
.end method

.method doShowDialog(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "dialog":Landroid/app/DialogFragment;
    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    .line 42
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$VibrationDurationDialog;

    .end local v0    # "dialog":Landroid/app/DialogFragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$VibrationDurationDialog;-><init>()V

    .line 49
    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0, p2}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 52
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 54
    :cond_1
    return-void

    .line 43
    :cond_2
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 44
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$LongPressDelayDialog;

    .end local v0    # "dialog":Landroid/app/DialogFragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$LongPressDelayDialog;-><init>()V

    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    goto :goto_0

    .line 45
    :cond_3
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 46
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$RecognitionSpeedDialog;

    .end local v0    # "dialog":Landroid/app/DialogFragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$RecognitionSpeedDialog;-><init>()V

    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    goto :goto_0
.end method
