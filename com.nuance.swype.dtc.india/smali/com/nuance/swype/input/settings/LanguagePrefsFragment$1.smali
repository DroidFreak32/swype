.class Lcom/nuance/swype/input/settings/LanguagePrefsFragment$1;
.super Lcom/nuance/swype/input/settings/LanguagePrefs;
.source "LanguagePrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguagePrefsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguagePrefsFragment;Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguagePrefsFragment;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguagePrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguagePrefsFragment;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/settings/LanguagePrefs;-><init>(Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 24
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguagePrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguagePrefsFragment;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 26
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/InputPrefsFragmentActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 31
    return-object v1
.end method
