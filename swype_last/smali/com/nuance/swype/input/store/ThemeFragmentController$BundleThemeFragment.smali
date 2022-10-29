.class public Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;
.super Lcom/nuance/swype/input/settings/ThemesFragment;
.source "ThemeFragmentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/store/ThemeFragmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BundleThemeFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesFragment;-><init>()V

    return-void
.end method

.method public static final createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;
    .registers 6
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "bundleSku"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v1, Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;

    invoke-direct {v1}, Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;-><init>()V

    .line 158
    .local v1, "bundleThemes":Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "arg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v2, "bundle_sku"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v2, "isBundle"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    const-string/jumbo v2, "source"

    sget-object v3, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->BUNDLE_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 165
    return-object v1
.end method
