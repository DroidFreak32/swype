.class public Lcom/nuance/swype/input/store/ThemeFragmentController$ViewAllTabThemeFragment;
.super Lcom/nuance/swype/input/settings/ThemesFragment;
.source "ThemeFragmentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/store/ThemeFragmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewAllTabThemeFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;-><init>()V

    return-void
.end method

.method public static final createInstance(Ljava/lang/String;)Lcom/nuance/swype/input/store/ThemeFragmentController$ViewAllTabThemeFragment;
    .registers 5
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v1, Lcom/nuance/swype/input/store/ThemeFragmentController$ViewAllTabThemeFragment;

    invoke-direct {v1}, Lcom/nuance/swype/input/store/ThemeFragmentController$ViewAllTabThemeFragment;-><init>()V

    .line 145
    .local v1, "tabThemes":Lcom/nuance/swype/input/store/ThemeFragmentController$ViewAllTabThemeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "arg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v2, "source"

    sget-object v3, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->VIEW_ALL_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/store/ThemeFragmentController$ViewAllTabThemeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 150
    return-object v1
.end method
