.class public Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;
.super Landroid/app/DialogFragment;
.source "ChinesePrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ChinesePrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkNotificationDialg"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$NetworkNotificationDialg;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    .line 299
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->createNetworkNotificationDialg()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
