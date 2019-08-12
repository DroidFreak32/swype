.class Lcom/nuance/swype/input/settings/SettingsPrefs$1;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsPrefs;->buildPreferenceScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsPrefs;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$1;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 153
    const/4 v1, 0x1

    return v1
.end method
