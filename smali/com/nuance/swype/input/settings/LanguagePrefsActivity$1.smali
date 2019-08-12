.class Lcom/nuance/swype/input/settings/LanguagePrefsActivity$1;
.super Lcom/nuance/swype/input/settings/LanguagePrefs;
.source "LanguagePrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguagePrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguagePrefsActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguagePrefsActivity;Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "x0"    # Landroid/preference/PreferenceScreen;
    .param p3, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguagePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguagePrefsActivity;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/settings/LanguagePrefs;-><init>(Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected createFunctionBarPref()Landroid/preference/Preference;
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguagePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguagePrefsActivity;

    .line 31
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 32
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/FunctionBarActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 33
    return-object v1
.end method

.method protected createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguagePrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/LanguagePrefsActivity;

    .line 23
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 24
    .local v1, "pref":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/InputPrefsActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 25
    return-object v1
.end method
