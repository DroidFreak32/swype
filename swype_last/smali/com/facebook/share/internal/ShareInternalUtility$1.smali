.class final Lcom/facebook/share/internal/ShareInternalUtility$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "ShareInternalUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/ShareInternalUtility;->getShareResultProcessor(Lcom/facebook/FacebookCallback;)Lcom/facebook/share/internal/ResultProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/FacebookCallback;

    .prologue
    .line 186
    iput-object p2, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0, p1}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcom/facebook/internal/AppCall;)V
    .registers 3
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnCancelCallback(Lcom/facebook/FacebookCallback;)V

    .line 207
    return-void
.end method

.method public final onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .registers 4
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V

    .line 212
    return-void
.end method

.method public final onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 189
    if-eqz p2, :cond_1a

    .line 190
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "gesture":Ljava/lang/String;
    if-eqz v0, :cond_11

    const-string/jumbo v2, "post"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 192
    :cond_11
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->getShareDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "postId":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v2, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    .line 202
    .end local v0    # "gesture":Ljava/lang/String;
    .end local v1    # "postId":Ljava/lang/String;
    :cond_1a
    :goto_1a
    return-void

    .line 194
    .restart local v0    # "gesture":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v2, "cancel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 195
    iget-object v2, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnCancelCallback(Lcom/facebook/FacebookCallback;)V

    goto :goto_1a

    .line 197
    :cond_2a
    iget-object v2, p0, Lcom/facebook/share/internal/ShareInternalUtility$1;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v3, Lcom/facebook/FacebookException;

    const-string/jumbo v4, "UnknownError"

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V

    goto :goto_1a
.end method
