.class final Lcom/fsck/k9/controller/MessagingController$11;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/fsck/k9/controller/MessageRetrievalListener;


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

.field private synthetic val$earliestDate:Ljava/util/Date;

.field private synthetic val$folder:Ljava/lang/String;

.field private synthetic val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

.field private synthetic val$newMessages:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private synthetic val$todo:I

.field private synthetic val$unreadBeforeStart:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Date;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;ILjava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$11;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$folder:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$earliestDate:Ljava/util/Date;

    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput p7, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$todo:I

    iput-object p8, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$newMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p9, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$unreadBeforeStart:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V
    .locals 8
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 1834
    :try_start_0
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$folder:Ljava/lang/String;

    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$earliestDate:Ljava/util/Date;

    invoke-static {v4, v5, v6, p1, v7}, Lcom/fsck/k9/controller/MessagingController;->access$600$38036a23(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1836
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1878
    :cond_0
    :goto_0
    return-void

    .line 1842
    :cond_1
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    new-instance v5, Lcom/fsck/k9/controller/MessagingController$11$1;

    invoke-direct {v5, p0}, Lcom/fsck/k9/controller/MessagingController$11$1;-><init>(Lcom/fsck/k9/controller/MessagingController$11;)V

    invoke-virtual {v4, p1, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->storeSmallMessage(Lcom/fsck/k9/mail/Message;Ljava/lang/Runnable;)Lcom/fsck/k9/mail/Message;

    move-result-object v2

    .line 1850
    .local v2, "localMessage":Lcom/fsck/k9/mail/Message;
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1851
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "About to notify listeners that we got a new small message "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$folder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_2
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v4}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/controller/MessagingListener;

    .line 1857
    .local v1, "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$folder:Ljava/lang/String;

    .line 1858
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$folder:Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget v7, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$todo:I

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 1859
    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1861
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$folder:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v2}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1873
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v2    # "localMessage":Lcom/fsck/k9/mail/Message;
    :catch_0
    move-exception v3

    .line 1875
    .local v3, "me":Lcom/fsck/k9/mail/MessagingException;
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v4, v3}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    .line 1876
    const-string v4, "k9"

    const-string v5, "SYNC: fetch small messages"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1866
    .end local v3    # "me":Lcom/fsck/k9/mail/MessagingException;
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "localMessage":Lcom/fsck/k9/mail/Message;
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v4, p1}, Lcom/fsck/k9/controller/MessagingController;->access$700$38987336(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1868
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$newMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1869
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$11;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v4}, Lcom/fsck/k9/controller/MessagingController;->access$800(Lcom/fsck/k9/controller/MessagingController;)Landroid/app/Application;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$account:Lcom/fsck/k9/Account;

    iget v6, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$unreadBeforeStart:I

    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$11;->val$newMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v4, v5, p1, v6, v7}, Lcom/fsck/k9/controller/MessagingController;->access$900$1dc03249(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;ILjava/util/concurrent/atomic/AtomicInteger;)Z
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
