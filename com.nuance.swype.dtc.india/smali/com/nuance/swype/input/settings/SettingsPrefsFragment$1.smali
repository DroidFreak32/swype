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
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsPrefsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/SettingsPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    sget v1, Lcom/nuance/swype/input/settings/SettingsPrefs;->PREFERENCES_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->addPreferencesFromResource(I)V

    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected createInputLanguagePref(Landroid/os/Bundle;)Landroid/preference/Preference;
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 66
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 67
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 68
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/LanguagePrefsFragmentActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 69
    return-object v1
.end method

.method doShowDialog(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    .line 76
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$VibrationDurationDialog;

    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$VibrationDurationDialog;-><init>()V

    .line 83
    .restart local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0, p2}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 86
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void

    .line 77
    :cond_2
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 78
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$LongPressDelayDialog;

    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$LongPressDelayDialog;-><init>()V

    .restart local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    goto :goto_0

    .line 79
    :cond_3
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 80
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$RecognitionSpeedDialog;

    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$RecognitionSpeedDialog;-><init>()V

    .restart local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    goto :goto_0
.end method

.method requestPermissions([Ljava/lang/String;I)V
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 95
    :cond_0
    return-void
.end method

.method protected showCandidateSizeDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 47
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$CandidateSizeDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$CandidateSizeDialog;-><init>()V

    .line 48
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 49
    invoke-virtual {v0, p1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected showEmojiSkinToneDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 56
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$SkinToneDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$SkinToneDialog;-><init>()V

    .line 57
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 58
    invoke-virtual {v0, p1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method protected showKeyboardHeightDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 38
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$KeyboardHeightDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$KeyboardHeightDialog;-><init>()V

    .line 39
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 40
    invoke-virtual {v0, p1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    return-void
.end method
