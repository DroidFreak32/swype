.class public Lcom/nuance/swype/input/settings/ThemesCategoryActivity;
.super Landroid/app/Activity;
.source "ThemesCategoryActivity.java"

# interfaces
.implements Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;


# instance fields
.field private delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

.field private dialog:Landroid/app/Dialog;

.field private isThemePreviewDialogShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->isThemePreviewDialogShowing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategoryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->isThemePreviewDialogShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategoryActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategoryActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->dialog:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 93
    const/16 v1, 0x2711

    if-ne p1, v1, :cond_2

    .line 94
    if-ne p2, v2, :cond_1

    .line 95
    if-eqz p3, :cond_0

    .line 96
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "themeId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesCategory;->applyTheme(Ljava/lang/String;Landroid/content/Context;)V

    .line 102
    .end local v0    # "themeId":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateAdapter()V

    .line 110
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->isThemePreviewDialogShowing:Z

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 112
    return-void

    .line 104
    :cond_2
    const/16 v1, 0x2712

    if-ne p1, v1, :cond_1

    .line 105
    if-ne p2, v2, :cond_1

    .line 106
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0    # "themeId":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesCategory;->applyTheme(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget v0, Lcom/nuance/swype/input/R$string;->pref_menu_themes:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->setTitle(I)V

    .line 23
    invoke-static {p0}, Lcom/nuance/swype/input/ThemeManager;->reConnectGoogleStoreService(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity$1;-><init>(Lcom/nuance/swype/input/settings/ThemesCategoryActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ThemesCategory;->onCreateCategoryListView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->setContentView(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->setIapObserver(Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;)V

    .line 89
    return-void
.end method

.method public onThemePreivewDialogClosed()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryActivity;->isThemePreviewDialogShowing:Z

    .line 117
    return-void
.end method
