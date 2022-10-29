.class public Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;
.super Lcom/nuance/swype/input/settings/ThemesFragment;
.source "ThemeFragmentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/store/ThemeFragmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyThemesFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;-><init>()V

    return-void
.end method

.method public static final createInstance(Ljava/lang/String;)Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;
    .registers 5
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v1, Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;

    invoke-direct {v1}, Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;-><init>()V

    .line 133
    .local v1, "myThemes":Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "arg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v2, "source"

    sget-object v3, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->MY_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    return-object v1
.end method
