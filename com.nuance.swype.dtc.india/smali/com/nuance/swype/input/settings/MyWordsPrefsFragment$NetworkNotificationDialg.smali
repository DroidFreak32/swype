.class public Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;
.super Landroid/support/v4/app/DialogFragment;
.source "MyWordsPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkNotificationDialg"
.end annotation


# instance fields
.field private mPrefKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;->mPrefKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 330
    if-eqz p1, :cond_0

    .line 331
    const-string/jumbo v1, "prefKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "prefKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 333
    iput-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;->mPrefKey:Ljava/lang/String;

    .line 336
    .end local v0    # "prefKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v0, v1, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 312
    .local v0, "delegate":Lcom/nuance/swype/input/settings/MyWordsPrefs;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;->mPrefKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;->mPrefKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    .line 315
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->createNetworkNotificationDialg()Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment$NetworkNotificationDialg;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    iget-object v0, v1, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .line 323
    .local v0, "delegate":Lcom/nuance/swype/input/settings/MyWordsPrefs;
    const-string/jumbo v1, "prefKey"

    iget-object v2, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v0    # "delegate":Lcom/nuance/swype/input/settings/MyWordsPrefs;
    :cond_0
    return-void
.end method
