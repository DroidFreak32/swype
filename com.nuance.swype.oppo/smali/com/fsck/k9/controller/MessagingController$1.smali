.class final Lcom/fsck/k9/controller/MessagingController$1;
.super Ljava/lang/Thread;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field private synthetic val$command:Lcom/fsck/k9/controller/MessagingController$Command;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/controller/MessagingController$Command;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$1;->val$command:Lcom/fsck/k9/controller/MessagingController$Command;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 312
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Lcom/fsck/k9/controller/MessagingController$1;->sleep(J)V

    .line 313
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->access$000(Lcom/fsck/k9/controller/MessagingController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$1;->val$command:Lcom/fsck/k9/controller/MessagingController$Command;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    const-string v0, "k9"

    const-string v1, "interrupted while putting a pending command for an unavailable account back into the queue. THIS SHOULD NEVER HAPPEN."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
