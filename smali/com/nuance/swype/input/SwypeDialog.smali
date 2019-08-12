.class public abstract Lcom/nuance/swype/input/SwypeDialog;
.super Ljava/lang/Object;
.source "SwypeDialog.java"


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/SwypeDialog;->onCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/SwypeDialog;->mDialog:Landroid/app/Dialog;

    .line 20
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/nuance/swype/input/SwypeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/SwypeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 49
    :cond_0
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/swype/input/SwypeDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/SwypeDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SwypeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end method

.method public show(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    iget-object v2, p0, Lcom/nuance/swype/input/SwypeDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/SwypeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/nuance/swype/input/SwypeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 29
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 30
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 31
    const/16 v2, 0x3eb

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 32
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 33
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/input/SwypeDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    :goto_0
    return-void

    .line 38
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "window":Landroid/view/Window;
    :catch_0
    move-exception v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string v3, "Token exception when showing dialog, dialog will not show"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method
