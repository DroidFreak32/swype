.class final Lcom/fsck/k9/controller/MessagingController$10;
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

.field private synthetic val$chunk:Ljava/util/List;

.field private synthetic val$earliestDate:Ljava/util/Date;

.field private synthetic val$folder:Ljava/lang/String;

.field private synthetic val$largeMessages:Ljava/util/ArrayList;

.field private synthetic val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

.field private synthetic val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private synthetic val$remoteFolder:Lcom/fsck/k9/mail/Folder;

.field private synthetic val$smallMessages:Ljava/util/ArrayList;

.field private synthetic val$todo:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/Date;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1652
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$10;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$earliestDate:Ljava/util/Date;

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$account:Lcom/fsck/k9/Account;

    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$folder:Ljava/lang/String;

    iput-object p7, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p8, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$todo:I

    iput-object p9, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$largeMessages:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$smallMessages:Ljava/util/ArrayList;

    iput-object p11, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$chunk:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V
    .locals 8
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 1658
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPushState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/fsck/k9/mail/Folder;->getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v2

    .line 1659
    .local v2, "newPushState":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1661
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    invoke-virtual {v3, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setPushState(Ljava/lang/String;)V

    .line 1663
    :cond_0
    sget-object v3, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$earliestDate:Ljava/util/Date;

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/Message;->olderThan(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1666
    :cond_1
    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1668
    sget-object v3, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1670
    const-string v3, "k9"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Newly downloaded message "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$folder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was marked deleted on server, skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1680
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v3}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/controller/MessagingListener;

    .line 1682
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$folder:Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget v7, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$todo:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1718
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newPushState":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1720
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "k9"

    const-string v4, "Error while storing downloaded message."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1721
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v3, v0}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    .line 1723
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 1675
    .restart local v2    # "newPushState":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Newly downloaded message "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is older than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$earliestDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 1687
    :cond_5
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSize()I

    move-result v3

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getMaximumAutoDownloadMessageSize()I

    move-result v4

    if-le v3, v4, :cond_6

    .line 1689
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$largeMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    :goto_3
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1705
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$account:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$folder:Ljava/lang/String;

    invoke-static {v3, v4, v5, p1}, Lcom/fsck/k9/controller/MessagingController;->access$300(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1708
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$chunk:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1710
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$chunk:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_3

    .line 1712
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$chunk:Ljava/util/List;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$account:Lcom/fsck/k9/Account;

    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$folder:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/fsck/k9/controller/MessagingController;->access$500(Lcom/fsck/k9/controller/MessagingController;Ljava/util/List;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 1713
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$chunk:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 1693
    :cond_6
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$smallMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
