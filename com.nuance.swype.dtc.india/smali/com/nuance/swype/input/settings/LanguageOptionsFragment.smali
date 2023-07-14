.class public Lcom/nuance/swype/input/settings/LanguageOptionsFragment;
.super Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;
.source "LanguageOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/LanguageOptionsFragment$NetworkNotificationDialg;,
        Lcom/nuance/swype/input/settings/LanguageOptionsFragment$KeyboardDialog;,
        Lcom/nuance/swype/input/settings/LanguageOptionsFragment$LanguageDialog;,
        Lcom/nuance/swype/input/settings/LanguageOptionsFragment$CommonDialog;,
        Lcom/nuance/swype/input/settings/LanguageOptionsFragment$ConnectDialog;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

.field private keyIsDown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->keyIsDown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->keyIsDown:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageOptionsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->keyIsDown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageOptionsFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->onKeyForFocusChanging(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private onKeyForFocusChanging(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "nextView":Landroid/view/View;
    const/16 v1, 0x13

    if-ne p2, v1, :cond_2

    .line 320
    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 332
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 336
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 322
    :cond_2
    const/16 v1, 0x15

    if-ne p2, v1, :cond_3

    .line 323
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_3
    const/16 v1, 0x16

    if-ne p2, v1, :cond_4

    .line 326
    const/16 v1, 0x42

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_4
    const/16 v1, 0x14

    if-ne p2, v1, :cond_0

    .line 329
    const/16 v1, 0x82

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected createLanguageOptions()Lcom/nuance/swype/input/settings/LanguageOptions;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$1;-><init>(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 262
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "getListView"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 263
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 264
    move-object v0, v2

    check-cast v0, Landroid/widget/ListView;

    move-object v1, v0

    .line 265
    .local v1, "list":Landroid/widget/ListView;
    new-instance v3, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment$2;-><init>(Lcom/nuance/swype/input/settings/LanguageOptionsFragment;Landroid/widget/ListView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 314
    .end local v1    # "list":Landroid/widget/ListView;
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/LanguageOptions;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/nuance/swype/input/settings/LanguageOptions;->LANGUAGE_PREFS_XML:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->addPreferencesFromResource(I)V

    .line 34
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->createLanguageOptions()Lcom/nuance/swype/input/settings/LanguageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->setHasOptionsMenu(Z)V

    .line 37
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPause()V

    .line 149
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onPause()V

    .line 150
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "download_languages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/LanguageOptions;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->showNetworkNotificationDialog(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onResume()V

    .line 144
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStart()V

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onStart()V

    .line 138
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/nuance/swype/input/settings/ActionbarPreferenceFragment;->onStop()V

    .line 155
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;->delegate:Lcom/nuance/swype/input/settings/LanguageOptions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->onStop()V

    .line 156
    return-void
.end method
