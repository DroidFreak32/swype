.class Lcom/nuance/swype/input/settings/InputPrefsFragment$1;
.super Lcom/nuance/swype/input/settings/InputPrefs;
.source "InputPrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/InputPrefsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/InputPrefsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/InputPrefsFragment;Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "x0"    # Landroid/preference/PreferenceScreen;
    .param p3, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/InputPrefsFragment;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/settings/InputPrefs;-><init>(Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method doShowDialog(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "dialog":Landroid/app/DialogFragment;
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    .line 32
    new-instance v0, Lcom/nuance/swype/input/settings/InputPrefsFragment$RecognitionSpeedDialog;

    .end local v0    # "dialog":Landroid/app/DialogFragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/InputPrefsFragment$RecognitionSpeedDialog;-><init>()V

    .line 38
    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0, p2}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/InputPrefsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 41
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/InputPrefsFragment;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/InputPrefsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    :cond_1
    return-void

    .line 33
    :cond_2
    const/16 v1, 0xc

    if-ne p1, v1, :cond_3

    .line 34
    new-instance v0, Lcom/nuance/swype/input/settings/InputPrefsFragment$StrokeWidthDialog;

    .end local v0    # "dialog":Landroid/app/DialogFragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/InputPrefsFragment$StrokeWidthDialog;-><init>()V

    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    goto :goto_0

    .line 35
    :cond_3
    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 36
    new-instance v0, Lcom/nuance/swype/input/settings/InputPrefsFragment$ColorPickerDialog;

    .end local v0    # "dialog":Landroid/app/DialogFragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/InputPrefsFragment$ColorPickerDialog;-><init>()V

    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method
