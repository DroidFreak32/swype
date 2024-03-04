.class Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;
.super Lcom/nuance/swype/input/settings/ThemesPrefs;
.source "ThemesPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesPrefsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesPrefsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/ThemesPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    sget v1, Lcom/nuance/swype/input/settings/ThemesPrefs;->PREFERENCES_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->addPreferencesFromResource(I)V

    .line 26
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected showCandidateSizeDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 47
    new-instance v0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$CandidateSizeDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$CandidateSizeDialog;-><init>()V

    .line 48
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 49
    invoke-virtual {v0, p1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected showKeyboardHeightDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 39
    new-instance v0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$KeyboardHeightDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$KeyboardHeightDialog;-><init>()V

    .line 40
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 41
    invoke-virtual {v0, p1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected showKeyboardModesDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 31
    new-instance v0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$KeyboardModeDialog;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$KeyboardModeDialog;-><init>()V

    .line 32
    .local v0, "dialog":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 33
    invoke-virtual {v0, p1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 35
    return-void
.end method
