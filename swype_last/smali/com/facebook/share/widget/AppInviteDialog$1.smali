.class Lcom/facebook/share/widget/AppInviteDialog$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "AppInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/AppInviteDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/AppInviteDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .param p2, "x0"    # Lcom/facebook/FacebookCallback;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/facebook/share/widget/AppInviteDialog$1;->this$0:Lcom/facebook/share/widget/AppInviteDialog;

    iput-object p3, p0, Lcom/facebook/share/widget/AppInviteDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "gesture":Ljava/lang/String;
    const-string/jumbo v1, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 183
    iget-object v1, p0, Lcom/facebook/share/widget/AppInviteDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-interface {v1}, Lcom/facebook/FacebookCallback;->onCancel()V

    .line 187
    :goto_12
    return-void

    .line 185
    :cond_13
    iget-object v1, p0, Lcom/facebook/share/widget/AppInviteDialog$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v2, Lcom/facebook/share/widget/AppInviteDialog$Result;

    invoke-direct {v2, p2}, Lcom/facebook/share/widget/AppInviteDialog$Result;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_12
.end method
