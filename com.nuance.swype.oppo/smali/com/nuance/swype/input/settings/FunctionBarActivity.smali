.class public Lcom/nuance/swype/input/settings/FunctionBarActivity;
.super Landroid/preference/PreferenceActivity;
.source "FunctionBarActivity.java"


# instance fields
.field protected final MAXCOUNT__DIALOG:I

.field private delegate:Lcom/nuance/swype/input/settings/FunctionBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/settings/FunctionBarActivity;->MAXCOUNT__DIALOG:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v0, Lcom/nuance/swype/input/R$xml;->function_bar:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/FunctionBarActivity;->addPreferencesFromResource(I)V

    .line 17
    new-instance v0, Lcom/nuance/swype/input/settings/FunctionBarActivity$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/FunctionBarActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/nuance/swype/input/settings/FunctionBarActivity$1;-><init>(Lcom/nuance/swype/input/settings/FunctionBarActivity;Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/FunctionBarActivity;->delegate:Lcom/nuance/swype/input/settings/FunctionBar;

    .line 25
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 40
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/FunctionBarActivity;->delegate:Lcom/nuance/swype/input/settings/FunctionBar;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/FunctionBar;->createMaxItemDlg()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/settings/FunctionBarActivity;->delegate:Lcom/nuance/swype/input/settings/FunctionBar;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/FunctionBar;->onResume()V

    .line 31
    return-void
.end method
