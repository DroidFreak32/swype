.class public Lcom/nuance/swype/input/HtmlTipDialog$JavaScriptBridge;
.super Ljava/lang/Object;
.source "HtmlTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/HtmlTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavaScriptBridge"
.end annotation


# instance fields
.field private final dialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/input/HtmlTipDialog$JavaScriptBridge;->dialogRef:Ljava/lang/ref/WeakReference;

    .line 79
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/nuance/swype/input/HtmlTipDialog$JavaScriptBridge;->dialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 84
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 87
    :cond_0
    return-void
.end method

.method public doNotShow(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/nuance/swype/input/HtmlTipDialog$JavaScriptBridge;->dialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 110
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/nuance/swype/input/HtmlTipDialog;->doNotShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 114
    :cond_0
    return-void
.end method

.method public showHelp()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/nuance/swype/input/HtmlTipDialog$JavaScriptBridge;->dialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 92
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/HtmlTipDialog;->showHelp(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 96
    :cond_0
    return-void
.end method

.method public showSettings()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lcom/nuance/swype/input/HtmlTipDialog$JavaScriptBridge;->dialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 101
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/HtmlTipDialog;->showSettings(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 105
    :cond_0
    return-void
.end method
