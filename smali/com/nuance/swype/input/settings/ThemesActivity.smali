.class public Lcom/nuance/swype/input/settings/ThemesActivity;
.super Landroid/app/Activity;
.source "ThemesActivity.java"

# interfaces
.implements Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/Themes;

.field private isThemePreviewDialogShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ThemesActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesActivity;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/ThemesActivity;->isThemePreviewDialogShowing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/ThemesActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/ThemesActivity;->isThemePreviewDialogShowing:Z

    return p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 78
    const/16 v1, 0x2711

    if-ne p1, v1, :cond_2

    .line 79
    if-ne p2, v2, :cond_1

    .line 80
    if-eqz p3, :cond_0

    .line 81
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "themeId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/Themes;->applyTheme(Ljava/lang/String;Landroid/content/Context;)V

    .line 87
    .end local v0    # "themeId":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/Themes;->updateAdapter()V

    .line 95
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity;->isThemePreviewDialogShowing:Z

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    return-void

    .line 89
    :cond_2
    const/16 v1, 0x2712

    if-ne p1, v1, :cond_1

    .line 90
    if-ne p2, v2, :cond_1

    .line 91
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0    # "themeId":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/Themes;->applyTheme(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v1, Lcom/nuance/swype/input/settings/ThemesActivity$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/settings/ThemesActivity$1;-><init>(Lcom/nuance/swype/input/settings/ThemesActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity;->delegate:Lcom/nuance/swype/input/settings/Themes;

    .line 70
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/settings/Themes;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/ThemesActivity;->setContentView(Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesActivity;->delegate:Lcom/nuance/swype/input/settings/Themes;

    invoke-static {v1}, Lcom/nuance/swype/input/ThemeManager;->setIapObserver(Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;)V

    .line 72
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/nuance/swype/input/settings/ThemesCategory;->theme_color:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 73
    .local v0, "cd":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    return-void
.end method

.method public onThemePreivewDialogClosed()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ThemesActivity;->isThemePreviewDialogShowing:Z

    .line 102
    return-void
.end method
