.class Lcom/nuance/swype/input/settings/InputPrefsActivity$1;
.super Lcom/nuance/swype/input/settings/InputPrefs;
.source "InputPrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/InputPrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/InputPrefsActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/InputPrefsActivity;Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "x0"    # Landroid/preference/PreferenceScreen;
    .param p3, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/InputPrefsActivity;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/settings/InputPrefs;-><init>(Landroid/preference/PreferenceScreen;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method doShowDialog(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/InputPrefsActivity;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/InputPrefsActivity;->removeDialog(I)V

    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/settings/InputPrefsActivity$1;->this$0:Lcom/nuance/swype/input/settings/InputPrefsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/InputPrefsActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 29
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method
