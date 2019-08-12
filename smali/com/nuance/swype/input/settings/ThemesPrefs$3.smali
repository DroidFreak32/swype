.class Lcom/nuance/swype/input/settings/ThemesPrefs$3;
.super Ljava/lang/Object;
.source "ThemesPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesPrefs;->refreshDockModes(Ljava/lang/String;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

.field final synthetic val$config:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesPrefs;I)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    iput p2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$3;->val$config:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "orientation_bundle"

    iget v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$3;->val$config:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->showKeyboardModesDialog(Landroid/os/Bundle;)V

    .line 168
    const/4 v1, 0x1

    return v1
.end method
