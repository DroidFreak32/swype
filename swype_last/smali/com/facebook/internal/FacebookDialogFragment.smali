.class public Lcom/facebook/internal/FacebookDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "FacebookDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FacebookDialogFragment"


# instance fields
.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/FacebookDialogFragment;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/internal/FacebookDialogFragment;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lcom/facebook/FacebookException;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogFragment;->onCompleteWebDialog(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/FacebookDialogFragment;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/FacebookDialogFragment;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogFragment;->onCompleteWebFallbackDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method private onCompleteWebDialog(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 7
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 148
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v2

    .line 153
    .local v2, "resultIntent":Landroid/content/Intent;
    if-nez p2, :cond_16

    const/4 v1, -0x1

    .line 155
    .local v1, "resultCode":I
    :goto_f
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 157
    return-void

    .line 153
    .end local v1    # "resultCode":I
    :cond_16
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private onCompleteWebFallbackDialog(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 162
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v1, "resultIntent":Landroid/content/Intent;
    if-nez p1, :cond_10

    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "values":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_10
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 165
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 167
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/facebook/internal/WebDialog;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 133
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    check-cast v0, Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->resize()V

    .line 135
    :cond_16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v7, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    if-nez v7, :cond_3d

    .line 58
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 59
    .local v1, "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 60
    invoke-static {v7}, Lcom/facebook/internal/NativeProtocol;->getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 62
    .local v2, "params":Landroid/os/Bundle;
    const-string/jumbo v7, "is_fallback"

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 64
    if-nez v7, :cond_53

    .line 65
    const-string/jumbo v7, "action"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "actionName":Ljava/lang/String;
    const-string/jumbo v7, "params"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 67
    .local v6, "webParams":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 68
    const-string/jumbo v7, "FacebookDialogFragment"

    const-string/jumbo v8, "Cannot start a WebDialog with an empty/missing \'actionName\'"

    invoke-static {v7, v8}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 108
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v1    # "activity":Landroid/support/v4/app/FragmentActivity;
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v6    # "webParams":Landroid/os/Bundle;
    :cond_3d
    :goto_3d
    return-void

    .line 75
    .restart local v0    # "actionName":Ljava/lang/String;
    .restart local v1    # "activity":Landroid/support/v4/app/FragmentActivity;
    .restart local v2    # "params":Landroid/os/Bundle;
    .restart local v6    # "webParams":Landroid/os/Bundle;
    :cond_3e
    new-instance v7, Lcom/facebook/internal/WebDialog$Builder;

    invoke-direct {v7, v1, v0, v6}, Lcom/facebook/internal/WebDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v8, Lcom/facebook/internal/FacebookDialogFragment$1;

    invoke-direct {v8, p0}, Lcom/facebook/internal/FacebookDialogFragment$1;-><init>(Lcom/facebook/internal/FacebookDialogFragment;)V

    invoke-virtual {v7, v8}, Lcom/facebook/internal/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/internal/WebDialog$Builder;->build()Lcom/facebook/internal/WebDialog;

    move-result-object v5

    .line 106
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v6    # "webParams":Landroid/os/Bundle;
    .local v5, "webDialog":Lcom/facebook/internal/WebDialog;
    :goto_50
    iput-object v5, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    goto :goto_3d

    .line 84
    .end local v5    # "webDialog":Lcom/facebook/internal/WebDialog;
    :cond_53
    const-string/jumbo v7, "url"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 86
    const-string/jumbo v7, "FacebookDialogFragment"

    const-string/jumbo v8, "Cannot start a fallback WebDialog with an empty/missing \'url\'"

    invoke-static {v7, v8}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_3d

    .line 93
    :cond_6d
    const-string/jumbo v7, "fb%s://bridge/"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "redirectUrl":Ljava/lang/String;
    new-instance v5, Lcom/facebook/internal/FacebookWebFallbackDialog;

    invoke-direct {v5, v1, v4, v3}, Lcom/facebook/internal/FacebookWebFallbackDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .restart local v5    # "webDialog":Lcom/facebook/internal/WebDialog;
    new-instance v7, Lcom/facebook/internal/FacebookDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/facebook/internal/FacebookDialogFragment$2;-><init>(Lcom/facebook/internal/FacebookDialogFragment;)V

    invoke-virtual {v5, v7}, Lcom/facebook/internal/WebDialog;->setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)V

    goto :goto_50
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_c

    .line 115
    invoke-direct {p0, v1, v1}, Lcom/facebook/internal/FacebookDialogFragment;->onCompleteWebDialog(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/FacebookDialogFragment;->setShowsDialog(Z)V

    .line 118
    :cond_c
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 140
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 142
    :cond_14
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 143
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/facebook/internal/WebDialog;

    if-eqz v0, :cond_10

    .line 125
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    check-cast v0, Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->resize()V

    .line 127
    :cond_10
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/internal/FacebookDialogFragment;->dialog:Landroid/app/Dialog;

    .line 51
    return-void
.end method
