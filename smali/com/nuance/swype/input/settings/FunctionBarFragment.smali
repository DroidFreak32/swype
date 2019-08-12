.class public Lcom/nuance/swype/input/settings/FunctionBarFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "FunctionBarFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/FunctionBarFragment$MaxItemDlg;
    }
.end annotation


# instance fields
.field private MAX_TAG:Ljava/lang/String;

.field private delegate:Lcom/nuance/swype/input/settings/FunctionBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 15
    const-string v0, "max_item"

    iput-object v0, p0, Lcom/nuance/swype/input/settings/FunctionBarFragment;->MAX_TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/FunctionBarFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/FunctionBarFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/swype/input/settings/FunctionBarFragment;->MAX_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/FunctionBarFragment;)Lcom/nuance/swype/input/settings/FunctionBar;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/FunctionBarFragment;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/swype/input/settings/FunctionBarFragment;->delegate:Lcom/nuance/swype/input/settings/FunctionBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget v0, Lcom/nuance/swype/input/R$xml;->function_bar:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/FunctionBarFragment;->addPreferencesFromResource(I)V

    .line 20
    new-instance v0, Lcom/nuance/swype/input/settings/FunctionBarFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/swype/input/settings/FunctionBarFragment$1;-><init>(Lcom/nuance/swype/input/settings/FunctionBarFragment;Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/FunctionBarFragment;->delegate:Lcom/nuance/swype/input/settings/FunctionBar;

    .line 29
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/settings/FunctionBarFragment;->delegate:Lcom/nuance/swype/input/settings/FunctionBar;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/FunctionBar;->onResume()V

    .line 35
    return-void
.end method
