.class public Lcom/nuance/swype/input/settings/ThemesCategoryFragment;
.super Lcom/nuance/swype/input/settings/ActionbarFragment;
.source "ThemesCategoryFragment.java"

# interfaces
.implements Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;
.implements Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field protected delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

.field private dialog:Landroid/app/Dialog;

.field private isThemePreviewDialogShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "ThemesCategoryFragment"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->isThemePreviewDialogShowing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategoryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->isThemePreviewDialogShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategoryFragment;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/ThemeManager;->reConnectGoogleStoreService(Landroid/content/Context;)V

    .line 110
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-static {v3}, Lcom/nuance/swype/input/ThemeManager;->setIapObserver(Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;)V

    .line 111
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV11;

    .line 112
    .local v0, "activity":Lcom/nuance/swype/input/settings/SettingsV11;
    sget-boolean v3, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet_720DP:Z

    if-nez v3, :cond_0

    .line 113
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/nuance/swype/input/settings/ThemesCategory;->theme_color:I

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 114
    .local v1, "cd":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$color;->grey_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 116
    .local v2, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .end local v1    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .end local v2    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    sget-boolean v3, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet_720DP:Z

    if-nez v3, :cond_1

    .line 119
    sget v3, Lcom/nuance/swype/input/R$string;->pref_menu_themes:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/settings/SettingsV11;->setTitle(I)V

    .line 121
    :cond_1
    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/settings/SettingsV11;->setOnKeyUpListener(Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;)V

    .line 122
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 147
    const/16 v1, 0x2711

    if-ne p1, v1, :cond_3

    .line 148
    if-ne p2, v2, :cond_2

    .line 149
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "purchased "

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 150
    if-eqz p3, :cond_0

    .line 151
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "themeId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesCategory;->applyTheme(Ljava/lang/String;Landroid/content/Context;)V

    .line 157
    .end local v0    # "themeId":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateAdapter()V

    .line 168
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->isThemePreviewDialogShowing:Z

    .line 169
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ActionbarFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    return-void

    .line 159
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "purchase cancelled"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_3
    const/16 v1, 0x2712

    if-ne p1, v1, :cond_1

    .line 162
    if-ne p2, v2, :cond_1

    .line 163
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0    # "themeId":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/ThemesCategory;->applyTheme(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment$1;-><init>(Lcom/nuance/swype/input/settings/ThemesCategoryFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    .line 104
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/settings/ActionbarFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 128
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 130
    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$menu;->theme_options:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ThemesCategory;->onCreateCategoryListView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/nuance/swype/input/R$id;->theme_options:I

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->delegate:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory;->showThemesPrefs()V

    .line 140
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onThemePreivewDialogClosed()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->isThemePreviewDialogShowing:Z

    .line 180
    return-void
.end method
