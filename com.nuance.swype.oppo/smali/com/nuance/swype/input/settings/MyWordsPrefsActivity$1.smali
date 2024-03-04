.class Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;
.super Lcom/nuance/swype/input/settings/MyWordsPrefs;
.source "MyWordsPrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected addPreferences()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;

    sget v1, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;->MY_WORDS_PREFS_XML:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->addPreferencesFromResource(I)V

    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method doCancelDialog(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->access$000(Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;)Lcom/nuance/swype/input/settings/MyWordsPrefs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->removeActiveRef(I)V

    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->removeDialog(I)V

    .line 41
    return-void
.end method

.method doShowDialog(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->removeDialog(I)V

    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 35
    return-void
.end method

.method protected doStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 46
    return-void
.end method

.method protected showPreferenceFragment(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 50
    return-void
.end method
