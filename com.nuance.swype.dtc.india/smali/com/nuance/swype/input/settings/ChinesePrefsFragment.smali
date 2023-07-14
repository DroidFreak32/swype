.class public Lcom/nuance/swype/input/settings/ChinesePrefsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "ChinesePrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/ChinesePrefsFragment$ConnectDialog;,
        Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;,
        Lcom/nuance/swype/input/settings/ChinesePrefsFragment$MaxItemDlg;,
        Lcom/nuance/swype/input/settings/ChinesePrefsFragment$GenericDialog;
    }
.end annotation


# static fields
.field protected static final KEY_DIALOG_ID:Ljava/lang/String; = "DIALOG_ID"

.field private static final MESSAGE_CANCEL_DIALOG:I = 0x0

.field private static final MESSAGE_SHOW_DIALOG:I = 0x1

.field private static final REQUEST_CODE_ACCEPT_LICENSE:I = 0x2


# instance fields
.field protected final MAX_TAG:Ljava/lang/String;

.field private callback:Landroid/os/Handler$Callback;

.field private connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field protected delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

.field private isSwitchingToDefaultScreen:Z

.field private queue:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 29
    const-string/jumbo v0, "max_item"

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->MAX_TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->isSwitchingToDefaultScreen:Z

    .line 40
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$1;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->callback:Landroid/os/Handler$Callback;

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->callback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->queue:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Lcom/nuance/swype/connect/ConnectedStatus;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)Landroid/os/Handler;
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
    .line 77
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$3;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;Landroid/app/Activity;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 237
    packed-switch p1, :pswitch_data_0

    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 241
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 242
    .local v1, "preference":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/nuance/swype/input/settings/AddonDictionariesPrefsFragmentActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 243
    sget v2, Lcom/nuance/swype/input/R$string;->download_addon_dictionaries:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 247
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "preference":Landroid/preference/Preference;
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v2, p1, p2, p3}, Lcom/nuance/swype/input/settings/ChinesePrefs;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->createChinesePrefs()Lcom/nuance/swype/input/settings/ChinesePrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->setHasOptionsMenu(Z)V

    .line 68
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPause()V

    .line 286
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 287
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 264
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 265
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 266
    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->isSwitchingToDefaultScreen:Z

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->dismissDialog()V

    .line 269
    instance-of v1, v0, Lcom/nuance/swype/input/settings/SettingsV11;

    if-eqz v1, :cond_1

    .line 270
    iput-boolean v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->isSwitchingToDefaultScreen:Z

    .line 271
    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV11;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->switchToDefaultScreen()V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 272
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    instance-of v1, v0, Lcom/nuance/swype/input/settings/SettingsV19;

    if-eqz v1, :cond_0

    .line 273
    iput-boolean v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->isSwitchingToDefaultScreen:Z

    .line 274
    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV19;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV19;->switchToDefaultScreen()V

    goto :goto_0

    .line 279
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->onResume()V

    .line 280
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStart()V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->isSwitchingToDefaultScreen:Z

    .line 258
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->onStart()V

    .line 259
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStop()V

    .line 292
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->onStop()V

    .line 293
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->queue:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->queue:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    return-void
.end method
