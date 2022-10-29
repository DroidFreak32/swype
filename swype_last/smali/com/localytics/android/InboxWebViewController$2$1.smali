.class Lcom/localytics/android/InboxWebViewController$2$1;
.super Ljava/lang/Object;
.source "InboxWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InboxWebViewController$2;->onFirstDownloaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/InboxWebViewController$2;


# direct methods
.method constructor <init>(Lcom/localytics/android/InboxWebViewController$2;)V
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/localytics/android/InboxWebViewController$2$1;->this$1:Lcom/localytics/android/InboxWebViewController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController$2$1;->this$1:Lcom/localytics/android/InboxWebViewController$2;

    iget-object v1, v1, Lcom/localytics/android/InboxWebViewController$2;->this$0:Lcom/localytics/android/InboxWebViewController;

    # getter for: Lcom/localytics/android/InboxWebViewController;->mIsAttached:Z
    invoke-static {v1}, Lcom/localytics/android/InboxWebViewController;->access$000(Lcom/localytics/android/InboxWebViewController;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 219
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController$2$1;->this$1:Lcom/localytics/android/InboxWebViewController$2;

    iget-object v1, v1, Lcom/localytics/android/InboxWebViewController$2;->this$0:Lcom/localytics/android/InboxWebViewController;

    # invokes: Lcom/localytics/android/InboxWebViewController;->creativePathExists()Z
    invoke-static {v1}, Lcom/localytics/android/InboxWebViewController;->access$100(Lcom/localytics/android/InboxWebViewController;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 221
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController$2$1;->this$1:Lcom/localytics/android/InboxWebViewController$2;

    iget-object v1, v1, Lcom/localytics/android/InboxWebViewController$2;->this$0:Lcom/localytics/android/InboxWebViewController;

    # getter for: Lcom/localytics/android/InboxWebViewController;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/localytics/android/InboxWebViewController;->access$200(Lcom/localytics/android/InboxWebViewController;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController$2$1;->this$1:Lcom/localytics/android/InboxWebViewController$2;

    iget-object v1, v1, Lcom/localytics/android/InboxWebViewController$2;->this$0:Lcom/localytics/android/InboxWebViewController;

    # getter for: Lcom/localytics/android/InboxWebViewController;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/localytics/android/InboxWebViewController;->access$300(Lcom/localytics/android/InboxWebViewController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/localytics/android/InboxWebViewController$2$1;->this$1:Lcom/localytics/android/InboxWebViewController$2;

    iget-object v3, v3, Lcom/localytics/android/InboxWebViewController$2;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 234
    :cond_35
    :goto_35
    return-void

    .line 226
    :cond_36
    iget-object v1, p0, Lcom/localytics/android/InboxWebViewController$2$1;->this$1:Lcom/localytics/android/InboxWebViewController$2;

    iget-object v1, v1, Lcom/localytics/android/InboxWebViewController$2;->this$0:Lcom/localytics/android/InboxWebViewController;

    iget-object v2, p0, Lcom/localytics/android/InboxWebViewController$2$1;->this$1:Lcom/localytics/android/InboxWebViewController$2;

    iget v2, v2, Lcom/localytics/android/InboxWebViewController$2;->val$numRetries:I

    add-int/lit8 v2, v2, -0x1

    # invokes: Lcom/localytics/android/InboxWebViewController;->loadCreative(I)V
    invoke-static {v1, v2}, Lcom/localytics/android/InboxWebViewController;->access$400(Lcom/localytics/android/InboxWebViewController;I)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_35

    .line 230
    :catch_44
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "InboxDetailFragment loadCreative exception"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method
