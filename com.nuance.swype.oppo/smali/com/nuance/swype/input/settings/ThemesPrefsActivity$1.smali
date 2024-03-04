.class Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;
.super Lcom/nuance/swype/input/settings/ThemesPrefs;
.source "ThemesPrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesPrefsActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesPrefsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/ThemesPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsActivity;

    sget v1, Lcom/nuance/swype/input/settings/ThemesPrefs;->PREFERENCES_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->addPreferencesFromResource(I)V

    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected showCandidateSizeDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x3

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->removeDialog(I)V

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsActivity;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 47
    return-void
.end method

.method protected showKeyboardHeightDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x2

    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->removeDialog(I)V

    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsActivity;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 41
    return-void
.end method

.method protected showKeyboardModesDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->removeDialog(I)V

    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefsActivity;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 35
    return-void
.end method
