.class public Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$NoNetworkDialog;
.super Landroid/app/DialogFragment;
.source "SocialIntegrationPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoNetworkDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment$NoNetworkDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefsFragment;->delegate:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    .line 49
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->createNoNetworkDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
