.class public Lcom/nuance/swype/input/settings/LanguageOptionsFragment$NetworkNotificationDialg;
.super Landroid/support/v4/app/DialogFragment;
.source "LanguageOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkNotificationDialg"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 247
    if-eqz p1, :cond_0

    .line 248
    const-string/jumbo v1, "prefKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "prefKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$NetworkNotificationDialg;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    .line 251
    iput-object v0, v1, Lcom/nuance/swype/input/settings/LanguageOptions;->mPrefKey:Ljava/lang/String;

    .line 254
    .end local v0    # "prefKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$NetworkNotificationDialg;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    .line 232
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->createNetworkNotificationDialg()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 238
    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$NetworkNotificationDialg;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    iget-object v0, v1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    .line 240
    .local v0, "delegate":Lcom/nuance/swype/input/settings/LanguageOptions;
    const-string/jumbo v1, "prefKey"

    iget-object v2, v0, Lcom/nuance/swype/input/settings/LanguageOptions;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v0    # "delegate":Lcom/nuance/swype/input/settings/LanguageOptions;
    :cond_0
    return-void
.end method
