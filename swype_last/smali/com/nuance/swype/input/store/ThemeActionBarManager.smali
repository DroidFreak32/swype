.class public Lcom/nuance/swype/input/store/ThemeActionBarManager;
.super Ljava/lang/Object;
.source "ThemeActionBarManager.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private store:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->store:Landroid/support/v4/app/FragmentActivity;

    .line 14
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->store:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->mActionBar:Landroid/app/ActionBar;

    .line 15
    return-void
.end method


# virtual methods
.method public disableShowHideAnimation()V
    .registers 10

    .prologue
    .line 29
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setShowHideAnimationEnabled"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 30
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->mActionBar:Landroid/app/ActionBar;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 31
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 52
    :goto_25
    return-void

    :catch_26
    move-exception v4

    .line 34
    :try_start_27
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mActionBar"

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 37
    .local v1, "mActionBarField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "icsActionBar":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mShowHideAnimationEnabled"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 41
    .local v3, "mShowHideAnimationEnabledField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "mCurrentShowAnim"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 45
    .local v2, "mCurrentShowAnimField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_6c} :catch_6d

    goto :goto_25

    .line 48
    .end local v0    # "icsActionBar":Ljava/lang/Object;
    .end local v1    # "mActionBarField":Ljava/lang/reflect/Field;
    .end local v2    # "mCurrentShowAnimField":Ljava/lang/reflect/Field;
    .end local v3    # "mShowHideAnimationEnabledField":Ljava/lang/reflect/Field;
    :catch_6d
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public hideActionBar()V
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/nuance/swype/input/store/ThemeActionBarManager;->disableShowHideAnimation()V

    .line 19
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 20
    return-void
.end method

.method public isActionBarShowing()Z
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public release()V
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->store:Landroid/support/v4/app/FragmentActivity;

    .line 61
    return-void
.end method

.method public restoreActionBar()V
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/nuance/swype/input/store/ThemeActionBarManager;->disableShowHideAnimation()V

    .line 56
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 57
    return-void
.end method

.method public showActionBar()V
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/nuance/swype/input/store/ThemeActionBarManager;->disableShowHideAnimation()V

    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeActionBarManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 25
    return-void
.end method
