.class Lcom/nuance/swype/input/settings/SettingsPrefs$3;
.super Ljava/lang/Object;
.source "SettingsPrefs.java"

# interfaces
.implements Lcom/nuance/swype/preference/EmojiSkinTonePreference$ViewClickPreferenceListener;


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
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsPrefs;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$3;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsPrefs$3;->this$0:Lcom/nuance/swype/input/settings/SettingsPrefs;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/SettingsPrefs;->showEmojiSkinToneDialog(Landroid/os/Bundle;)V

    .line 374
    return-void
.end method
