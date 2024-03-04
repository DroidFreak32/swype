.class public Lcom/nuance/swype/input/settings/ChinesePrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "ChinesePrefsFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;,
        Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;,
        Lcom/nuance/swype/input/settings/ChinesePrefsFragment$PrivacyDialog;,
        Lcom/nuance/swype/input/settings/ChinesePrefsFragment$GenericDialog;
    }
.end annotation


# static fields
.field protected static final KEY_DIALOG_ID:Ljava/lang/String; = "DIALOG_ID"

.field private static final MESSAGE_CANCEL_DIALOG:I = 0x0

.field private static final MESSAGE_SHOW_DIALOG:I = 0x1

.field private static final REQUEST_CODE_ACCEPT_LICENSE:I = 0x2


# instance fields
.field protected final MAXCOUNT__DIALOG:I

.field protected MAX_TAG:Ljava/lang/String;

.field private callback:Landroid/os/Handler$Callback;

.field protected delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

.field private queue:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 29
    const/16 v0, 0x64

    iput v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->MAXCOUNT__DIALOG:I

    .line 30
    const-string v0, "max_item"

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->MAX_TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->callback:Landroid/os/Handler$Callback;

    .line 56
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->callback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->queue:Landroid/os/Handler;

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->queue:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected createChinesePrefs()Lcom/nuance/swype/input/settings/ChinesePrefs;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;Landroid/app/Activity;)V

    .line 220
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 227
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 228
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 230
    sget v1, Lcom/nuance/swype/input/R$string;->download_addon_dictionaries:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 231
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v1, p0, v0}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->createChinesePrefs()Lcom/nuance/swype/input/settings/ChinesePrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    .line 62
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPause()V

    .line 252
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 246
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->onResume()V

    .line 247
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStart()V

    .line 240
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->onStart()V

    .line 241
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStop()V

    .line 257
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->onStop()V

    .line 258
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->queue:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->queue:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    return-void
.end method
