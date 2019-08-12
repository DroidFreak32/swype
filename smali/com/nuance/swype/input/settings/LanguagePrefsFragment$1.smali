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
    .param p2, "x0"    # Landroid/preference/PreferenceScreen;
    .param p3, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguagePrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguagePrefsFragment;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/settings/LanguagePrefs;-><init>(Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected createFunctionBarPref()Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguagePrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguagePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "pref":Landroid/preference/Preference;
    const-class v1, Lcom/nuance/swype/input/settings/FunctionBarFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 31
    return-object v0
.end method

.method protected createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 21
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguagePrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/LanguagePrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguagePrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, "pref":Landroid/preference/Preference;
    const-class v1, Lcom/nuance/swype/input/settings/InputPrefsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 24
    return-object v0
.end method
