.class public Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "MyWordsPrefsFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;,
        Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AccountActivationDialog;,
        Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$PrivacyDialog;,
        Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$ShowEraseUdbDialg;,
        Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$AskBeforeAddDialg;,
        Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$GenericDialog;
    }
.end annotation


# static fields
.field private static final KEY_DIALOG_ID:Ljava/lang/String; = "DIALOG_ID"

.field private static final MESSAGE_CANCEL_DIALOG:I = 0x0

.field private static final MESSAGE_SHOW_DIALOG:I = 0x1


# instance fields
.field private callback:Landroid/os/Handler$Callback;

.field protected delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

.field private queue:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 29
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->callback:Landroid/os/Handler$Callback;

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->callback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->queue:Landroid/os/Handler;

    .line 299
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->queue:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected createMyWordsPrefs()Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;Landroid/app/Activity;)V

    .line 164
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onActivityResult(IILandroid/content/Intent;)V

    .line 198
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->createMyWordsPrefs()Lcom/nuance/swype/input/settings/MyWordsPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 52
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onPause()V

    .line 184
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 177
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onResume()V

    .line 178
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStart()V

    .line 171
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onStart()V

    .line 172
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStop()V

    .line 189
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onStop()V

    .line 190
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->queue:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->queue:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    return-void
.end method
