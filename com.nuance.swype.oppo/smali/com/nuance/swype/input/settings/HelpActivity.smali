.class public Lcom/nuance/swype/input/settings/HelpActivity;
.super Landroid/preference/PreferenceActivity;
.source "HelpActivity.java"


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/Help;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget v0, Lcom/nuance/swype/input/settings/Help;->HELP_XML:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 19
    new-instance v0, Lcom/nuance/swype/input/settings/HelpActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/nuance/swype/input/settings/HelpActivity$1;-><init>(Lcom/nuance/swype/input/settings/HelpActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HelpActivity;->delegate:Lcom/nuance/swype/input/settings/Help;

    .line 28
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HelpActivity;->delegate:Lcom/nuance/swype/input/settings/Help;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Help;->onResume()V

    .line 34
    return-void
.end method
