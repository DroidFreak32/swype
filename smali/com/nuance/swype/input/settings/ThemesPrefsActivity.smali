.class public Lcom/nuance/swype/input/settings/ThemesPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "ThemesPrefsActivity.java"


# static fields
.field private static final CANDIDATE_SIZE_DIALOG:I = 0x3

.field private static final KEYBOARD_HEIGHT_DIALOG:I = 0x2

.field private static final KEYBOARD_MODE_DIALOG:I = 0x1


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/ThemesPrefs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget v0, Lcom/nuance/swype/input/settings/ThemesPrefs;->PREFERENCES_XML:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 23
    new-instance v0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/nuance/swype/input/settings/ThemesPrefsActivity$1;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ThemesPrefs;

    .line 49
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 67
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->createKeyboardModeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->createKeyboardHeightDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->createCandidateSizeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefsActivity;->delegate:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->onResume()V

    .line 55
    return-void
.end method
