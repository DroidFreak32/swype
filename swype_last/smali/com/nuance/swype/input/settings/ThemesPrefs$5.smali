.class Lcom/nuance/swype/input/settings/ThemesPrefs$5;
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
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$5;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    iput p2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$5;->val$config:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "orientation_bundle"

    iget v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$5;->val$config:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$5;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->showKeyboardModesDialog(Landroid/os/Bundle;)V

    .line 194
    const/4 v1, 0x1

    return v1
.end method
