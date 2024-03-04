.class public Lcom/nuance/swype/input/settings/HelpFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "HelpFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/Help;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/settings/Help;->HELP_XML:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 22
    new-instance v0, Lcom/nuance/swype/input/settings/HelpFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/HelpFragment$1;-><init>(Lcom/nuance/swype/input/settings/HelpFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HelpFragment;->delegate:Lcom/nuance/swype/input/settings/Help;

    .line 30
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HelpFragment;->delegate:Lcom/nuance/swype/input/settings/Help;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Help;->onResume()V

    .line 36
    return-void
.end method
