.class public Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;
.super Landroid/app/DialogFragment;
.source "MyWordsPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkNotificationDialg"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 318
    if-eqz p1, :cond_0

    .line 319
    const-string v1, "prefKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "prefKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 322
    iput-object v0, v1, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    .line 325
    .end local v0    # "prefKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 303
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->createNetworkNotificationDialg()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v0, v1, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 311
    .local v0, "delegate":Lcom/nuance/swype/input/settings/MyWordsPrefs;
    const-string v1, "prefKey"

    iget-object v2, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .end local v0    # "delegate":Lcom/nuance/swype/input/settings/MyWordsPrefs;
    :cond_0
    return-void
.end method
