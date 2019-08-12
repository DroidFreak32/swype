.class public Lcom/nuance/swype/input/settings/LanguageOptionsActivity;
.super Landroid/preference/PreferenceActivity;
.source "LanguageOptionsActivity.java"


# static fields
.field protected static final ALM_DIALOG:I = 0x2

.field protected static final CONNECTION_DIALOG:I = 0x1

.field protected static final KEYBOARD_DIALOG:I = 0x4

.field protected static final LANGUAGE_DIALOG:I = 0x3

.field protected static final NETWORK_NOTIFICATION__DIALOG:I = 0x5


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/LanguageOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/LanguageOptionsActivity;)Lcom/nuance/swype/input/settings/LanguageOptions;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/LanguageOptions;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v0, Lcom/nuance/swype/input/settings/LanguageOptions;->LANGUAGE_PREFS_XML:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->addPreferencesFromResource(I)V

    .line 27
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$1;-><init>(Lcom/nuance/swype/input/settings/LanguageOptionsActivity;Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    .line 84
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 141
    :goto_0
    :pswitch_0
    return-object v0

    .line 121
    :pswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 122
    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/settings/LanguageOptions;->createLanguageDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 126
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->setDismissListenerCallback(Landroid/app/Dialog;I)V

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/settings/LanguageOptions;->createKeyboardDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 131
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->setDismissListenerCallback(Landroid/app/Dialog;I)V

    goto :goto_0

    .line 135
    :pswitch_4
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->createNetworkNotificationDialg()Landroid/app/Dialog;

    move-result-object v0

    .line 136
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->setDismissListenerCallback(Landroid/app/Dialog;I)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onPause()V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onResume()V

    .line 96
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onStart()V

    .line 90
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onStop()V

    .line 108
    return-void
.end method

.method public setDismissListenerCallback(Landroid/app/Dialog;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "id"    # I

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$2;-><init>(Lcom/nuance/swype/input/settings/LanguageOptionsActivity;I)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 161
    :cond_0
    return-void
.end method
