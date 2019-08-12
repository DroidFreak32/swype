.class Lcom/nuance/swype/input/settings/ThemesPrefs$2;
.super Ljava/lang/Object;
.source "ThemesPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ThemesPrefs;->rebuildSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/ThemesPrefs;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->showKeyboardHeightDialog(Landroid/os/Bundle;)V

    .line 121
    const/4 v1, 0x1

    return v1
.end method
