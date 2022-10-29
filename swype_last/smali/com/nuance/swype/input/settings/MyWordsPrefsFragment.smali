.class public Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "MyWordsPrefsFragment.java"


# annotations
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

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private callback:Landroid/os/Handler$Callback;

.field protected delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

.field private queue:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string/jumbo v0, "MyWordsPrefs"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 29
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->callback:Landroid/os/Handler$Callback;

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->callback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->queue:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->queue:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected createMyWordsPrefs()Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .registers 3

    .prologue
    .line 58
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$2;-><init>(Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;Landroid/app/Activity;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 200
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 201
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onActivityResult(IILandroid/content/Intent;)V

    .line 202
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->createMyWordsPrefs()Lcom/nuance/swype/input/settings/MyWordsPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->setHasOptionsMenu(Z)V

    .line 55
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPause()V

    .line 187
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onPause()V

    .line 188
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 207
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 181
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onResume()V

    .line 182
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStart()V

    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onStart()V

    .line 176
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 192
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStop()V

    .line 193
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->onStop()V

    .line 194
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->queue:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->queue:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    return-void
.end method
