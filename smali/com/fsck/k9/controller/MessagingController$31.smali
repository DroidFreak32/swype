.class final Lcom/fsck/k9/controller/MessagingController$31;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field private synthetic val$account:Lcom/fsck/k9/Account;

.field private synthetic val$ml:Lcom/fsck/k9/controller/MessagingListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 1

    .prologue
    .line 4502
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$31;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$31;->val$account:Lcom/fsck/k9/Account;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$31;->val$ml:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 4507
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$31;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v2

    .line 4508
    .local v2, "localStore":Lcom/fsck/k9/mail/store/LocalStore;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    .line 4509
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LocalStore;->compact()V

    .line 4510
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    .line 4511
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$31;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v3}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 4517
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$31;->val$account:Lcom/fsck/k9/Account;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4520
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "localStore":Lcom/fsck/k9/mail/store/LocalStore;
    :catch_0
    move-exception v0

    .line 4522
    .local v0, "e":Lcom/fsck/k9/mail/store/UnavailableStorageException;
    const-string v3, "k9"

    const-string v4, "Failed to compact account because storage is not available - trying again later."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    new-instance v3, Lcom/fsck/k9/mail/store/UnavailableAccountException;

    invoke-direct {v3, v0}, Lcom/fsck/k9/mail/store/UnavailableAccountException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 4525
    .end local v0    # "e":Lcom/fsck/k9/mail/store/UnavailableStorageException;
    :catch_1
    move-exception v0

    .line 4527
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to compact account "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$31;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4529
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
