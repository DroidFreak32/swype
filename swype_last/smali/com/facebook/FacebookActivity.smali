.class public Lcom/facebook/FacebookActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FacebookActivity.java"


# static fields
.field private static FRAGMENT_TAG:Ljava/lang/String;

.field public static PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private singleFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string/jumbo v0, "PassThrough"

    sput-object v0, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "SingleFragment"

    sput-object v0, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    .line 55
    const-class v0, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private handlePassThroughError()V
    .registers 5

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 132
    invoke-static {v2}, Lcom/facebook/internal/NativeProtocol;->getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/facebook/internal/NativeProtocol;->getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object v0

    .line 135
    .local v0, "exception":Lcom/facebook/FacebookException;
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v1

    .line 139
    .local v1, "resultIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/facebook/FacebookActivity;->setResult(ILandroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->finish()V

    .line 141
    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected getFragment()Landroid/support/v4/app/Fragment;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 88
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 89
    .local v3, "manager":Landroid/support/v4/app/FragmentManager;
    sget-object v4, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 91
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_2c

    .line 92
    const-string/jumbo v4, "FacebookDialogFragment"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 93
    new-instance v0, Lcom/facebook/internal/FacebookDialogFragment;

    invoke-direct {v0}, Lcom/facebook/internal/FacebookDialogFragment;-><init>()V

    .line 94
    .local v0, "dialogFragment":Lcom/facebook/internal/FacebookDialogFragment;
    invoke-virtual {v0, v6}, Lcom/facebook/internal/FacebookDialogFragment;->setRetainInstance(Z)V

    .line 95
    sget-object v4, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/internal/FacebookDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 97
    move-object v1, v0

    .line 112
    .end local v0    # "dialogFragment":Lcom/facebook/internal/FacebookDialogFragment;
    :cond_2c
    :goto_2c
    return-object v1

    .line 98
    :cond_2d
    const-string/jumbo v4, "DeviceShareDialogFragment"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 99
    new-instance v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;-><init>()V

    .line 100
    .local v0, "dialogFragment":Lcom/facebook/share/internal/DeviceShareDialogFragment;
    invoke-virtual {v0, v6}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setRetainInstance(Z)V

    .line 101
    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {v0, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setShareContent(Lcom/facebook/share/model/ShareContent;)V

    .line 102
    sget-object v4, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 103
    move-object v1, v0

    .line 104
    goto :goto_2c

    .line 105
    .end local v0    # "dialogFragment":Lcom/facebook/share/internal/DeviceShareDialogFragment;
    :cond_55
    new-instance v1, Lcom/facebook/login/LoginFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/facebook/login/LoginFragment;-><init>()V

    .line 106
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1, v6}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 107
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    sget v5, Lcom/facebook/R$id;->com_facebook_fragment_container:I

    sget-object v6, Lcom/facebook/FacebookActivity;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_2c
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_c

    .line 120
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_14

    .line 73
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 76
    :cond_14
    sget v1, Lcom/facebook/R$layout;->com_facebook_activity_layout:I

    invoke-virtual {p0, v1}, Lcom/facebook/FacebookActivity;->setContentView(I)V

    .line 78
    sget-object v1, Lcom/facebook/FacebookActivity;->PASS_THROUGH_CANCEL_ACTION:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 79
    invoke-direct {p0}, Lcom/facebook/FacebookActivity;->handlePassThroughError()V

    .line 84
    :goto_28
    return-void

    .line 83
    :cond_29
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/FacebookActivity;->singleFragment:Landroid/support/v4/app/Fragment;

    goto :goto_28
.end method
