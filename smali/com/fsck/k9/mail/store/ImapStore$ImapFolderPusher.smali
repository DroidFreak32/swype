.class public Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
.super Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
.source "ImapStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapFolderPusher"
.end annotation


# instance fields
.field final delayTime:Ljava/util/concurrent/atomic/AtomicInteger;

.field final doneSent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final idleFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final idling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field listeningThread:Ljava/lang/Thread;

.field final needsPoll:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final receiver:Lcom/fsck/k9/mail/PushReceiver;

.field final stop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field storedUntaggedResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;

.field wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/PushReceiver;)V
    .locals 5
    .param p2, "store"    # Lcom/fsck/k9/mail/store/ImapStore;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nReceiver"    # Lcom/fsck/k9/mail/PushReceiver;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2873
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    .line 2874
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)V

    .line 2862
    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    .line 2863
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2864
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2865
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->doneSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2866
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$2800()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->delayTime:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2867
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idleFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2868
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->needsPoll:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2869
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    .line 2870
    iput-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    .line 2875
    iput-object p4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    .line 2876
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v1}, Lcom/fsck/k9/mail/PushReceiver;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/helper/power/TracingPowerManager;->getPowerManager(Landroid/content/Context;)Lcom/fsck/k9/helper/power/TracingPowerManager;

    move-result-object v0

    .line 2877
    .local v0, "pm":Lcom/fsck/k9/helper/power/TracingPowerManager;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImapFolderPusher "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/ImapStore;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/helper/power/TracingPowerManager;->newWakeLock$6edeb054(Ljava/lang/String;)Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    .line 2878
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    iget-object v2, v1, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static synthetic access$3100(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 2859
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->pushMessages(Ljava/util/List;Z)V

    return-void
.end method

.method private pushMessages(Ljava/util/List;Z)V
    .locals 2
    .param p2, "newArrivals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3367
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    const/4 v0, 0x0

    .line 3370
    .local v0, "holdException":Ljava/lang/RuntimeException;
    if-eqz p2, :cond_0

    .line 3372
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v1, p0, p1}, Lcom/fsck/k9/mail/PushReceiver;->messagesArrived(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3384
    :goto_0
    if-eqz v0, :cond_1

    .line 3386
    throw v0

    .line 3376
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v1, p0, p1}, Lcom/fsck/k9/mail/PushReceiver;->messagesFlagsChanged(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3379
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3388
    :cond_1
    return-void
.end method

.method private removeMessages(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3239
    .local p1, "removeUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 3243
    .local v7, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v9, v10}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getMessagesFromUids(Ljava/util/List;ZLcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    .line 3244
    .local v0, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 3246
    .local v2, "existingMessage":Lcom/fsck/k9/mail/Message;
    iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->needsPoll:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3247
    iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 3248
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 3249
    .local v3, "existingUid":Ljava/lang/String;
    const-string v9, "k9"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Message with UID "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " still exists on server, not expunging"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3244
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3252
    .end local v2    # "existingMessage":Lcom/fsck/k9/mail/Message;
    .end local v3    # "existingUid":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3254
    .local v8, "uid":Ljava/lang/String;
    new-instance v6, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    invoke-direct {v6, v8, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3257
    .local v6, "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    :try_start_1
    sget-object v9, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3263
    :goto_2
    :try_start_2
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3267
    .end local v0    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "len$":I
    .end local v6    # "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .end local v8    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3269
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "k9"

    const-string v10, "Cannot remove EXPUNGEd messages"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3272
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 3261
    .restart local v0    # "arr$":[Lcom/fsck/k9/mail/Message;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "len$":I
    .restart local v6    # "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .restart local v8    # "uid":Ljava/lang/String;
    :catch_1
    move-exception v9

    :try_start_3
    const-string v9, "k9"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to set DELETED flag on message "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3265
    .end local v6    # "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .end local v8    # "uid":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-interface {v9, p0, v7}, Lcom/fsck/k9/mail/PushReceiver;->messagesRemoved(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method private sendContinuation(Ljava/lang/String;)V
    .locals 1
    .param p1, "continuation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .line 2908
    .local v0, "conn":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    if-eqz v0, :cond_0

    .line 2910
    invoke-static {v0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$3000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;Ljava/lang/String;)V

    .line 2912
    :cond_0
    return-void
.end method

.method private sendDone()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2892
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->doneSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2894
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .line 2895
    .local v0, "conn":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    if-eqz v0, :cond_0

    .line 2897
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$2900()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->setReadTimeout(I)V

    .line 2898
    const-string v1, "DONE"

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->sendContinuation(Ljava/lang/String;)V

    .line 2902
    .end local v0    # "conn":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    :cond_0
    return-void
.end method

.method private syncMessages(IZ)V
    .locals 16
    .param p1, "end"    # I
    .param p2, "newArrivals"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3170
    const/4 v12, -0x1

    .line 3173
    .local v12, "oldUidNext":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fsck/k9/mail/PushReceiver;->getPushState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3174
    const/4 v13, 0x0

    .local v13, "pushStateS":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;

    move-result-object v1

    .line 3175
    iget v12, v1, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->uidNext:I

    .line 3176
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3177
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got oldUidNext "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3184
    .end local v13    # "pushStateS":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getMessages(IILjava/util/Date;ZLcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v9

    .line 3185
    .local v9, "messageArray":[Lcom/fsck/k9/mail/Message;
    if-eqz v9, :cond_6

    array-length v1, v9

    if-lez v1, :cond_6

    .line 3187
    const/4 v1, 0x0

    aget-object v1, v9, v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 3188
    .local v11, "newUid":I
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 3189
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got newUid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_1
    move v14, v12

    .local v14, "startUid":I
    add-int/lit8 v1, v11, -0xa

    if-ge v12, v1, :cond_2

    .line 3193
    add-int/lit8 v14, v11, -0xa

    .line 3195
    :cond_2
    if-gtz v14, :cond_3

    .line 3197
    const/4 v14, 0x1

    .line 3199
    :cond_3
    if-lt v11, v14, :cond_6

    .line 3202
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 3203
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Needs sync from uid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3205
    .local v10, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    move v15, v14

    .local v15, "uid":I
    :goto_1
    if-gt v15, v11, :cond_5

    .line 3207
    new-instance v8, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v8, v1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 3208
    .local v8, "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3205
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 3179
    .end local v8    # "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    .end local v9    # "messageArray":[Lcom/fsck/k9/mail/Message;
    .end local v10    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v11    # "newUid":I
    .end local v14    # "startUid":I
    .end local v15    # "uid":I
    :catch_0
    move-exception v7

    .line 3181
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get oldUidNext for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3210
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "messageArray":[Lcom/fsck/k9/mail/Message;
    .restart local v10    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .restart local v11    # "newUid":I
    .restart local v14    # "startUid":I
    .restart local v15    # "uid":I
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 3212
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->pushMessages(Ljava/util/List;Z)V

    .line 3216
    .end local v10    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v11    # "newUid":I
    .end local v14    # "startUid":I
    .end local v15    # "uid":I
    :cond_6
    return-void
.end method

.method private syncMessages(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3222
    .local p1, "flagSyncMsgSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3, v4}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getMessages(Ljava/util/List;ZLcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v1

    .line 3226
    .local v1, "messageArray":[Lcom/fsck/k9/mail/Message;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3227
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3228
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->pushMessages(Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3235
    .end local v1    # "messageArray":[Lcom/fsck/k9/mail/Message;
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :goto_0
    return-void

    .line 3231
    :catch_0
    move-exception v0

    .line 3233
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    const-string v4, "Exception while processing Push untagged responses"

    invoke-interface {v3, v4, v0}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public handleAsyncUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .prologue
    const/4 v5, 0x1

    .line 3412
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3413
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got async response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3417
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 3418
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got async untagged response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but stop is set for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3422
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->sendDone()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3468
    :cond_2
    :goto_0
    return-void

    .line 3424
    :catch_0
    move-exception v0

    .line 3426
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while sending DONE for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3431
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 3433
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v2

    if-le v2, v5, :cond_6

    .line 3435
    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3437
    .local v1, "responseType":Ljava/lang/Object;
    const-string v2, "EXISTS"

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "EXPUNGE"

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "FETCH"

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3440
    :cond_4
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    invoke-virtual {v2}, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->acquire$1349ef()V

    .line 3443
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 3447
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got useful async untagged response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3451
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->sendDone()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3453
    :catch_1
    move-exception v0

    .line 3455
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while sending DONE for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3459
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "responseType":Ljava/lang/Object;
    :cond_6
    iget-boolean v2, p1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mCommandContinuationRequested:Z

    if-eqz v2, :cond_2

    .line 3461
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 3462
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Idling "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3464
    :cond_7
    iget-object v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    invoke-virtual {v2}, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->release()V

    goto/16 :goto_0
.end method

.method protected handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .prologue
    const/4 v2, 0x1

    .line 3113
    iget-object v1, p1, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 3115
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3116
    .local v0, "responseType":Ljava/lang/Object;
    const-string v1, "FETCH"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EXPUNGE"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EXISTS"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3120
    :cond_0
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 3121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Storing response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for later processing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3123
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3125
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->handlePossibleUidNext(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    .line 3127
    .end local v0    # "responseType":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method protected processUntaggedResponse(ILcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Ljava/util/List;Ljava/util/List;)I
    .locals 17
    .param p1, "oldMessageCount"    # I
    .param p2, "response"    # Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3276
    .local p3, "flagSyncMsgSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "removeMsgUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    .line 3277
    const/4 v6, 0x0

    .line 3278
    .local v6, "messageCountDelta":I
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v14, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_5

    .line 3282
    const/4 v14, 0x1

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 3283
    .local v12, "responseType":Ljava/lang/Object;
    const-string v14, "FETCH"

    invoke-static {v12, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3285
    const-string v14, "k9"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Got FETCH "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getNumber(I)I

    move-result v7

    .line 3288
    .local v7, "msgSeq":I
    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 3289
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Got untagged FETCH for msgseq "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3291
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 3293
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3296
    .end local v7    # "msgSeq":I
    :cond_1
    const-string v14, "EXPUNGE"

    invoke-static {v12, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 3298
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->getNumber(I)I

    move-result v7

    .line 3299
    .restart local v7    # "msgSeq":I
    move/from16 v0, p1

    if-gt v7, v0, :cond_2

    .line 3301
    const/4 v6, -0x1

    .line 3303
    :cond_2
    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_3

    .line 3304
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Got untagged EXPUNGE for msgseq "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3306
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3307
    .local v11, "newSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3308
    .local v3, "flagIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3310
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3311
    .local v4, "flagMsg":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lt v14, v7, :cond_4

    .line 3313
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 3314
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v14, v7, :cond_4

    .line 3316
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3356
    .end local v3    # "flagIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "flagMsg":Ljava/lang/Integer;
    .end local v7    # "msgSeq":I
    .end local v11    # "newSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "responseType":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 3358
    .local v2, "e":Ljava/lang/Exception;
    const-string v14, "k9"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Could not handle untagged FETCH for "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3361
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    return v6

    .line 3320
    .restart local v3    # "flagIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v7    # "msgSeq":I
    .restart local v11    # "newSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "responseType":Ljava/lang/Object;
    :cond_6
    :try_start_1
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3323
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3324
    .local v10, "msgSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3326
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3328
    .local v9, "msgSeqNumI":Ljava/lang/Integer;
    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_8

    .line 3330
    const-string v14, "k9"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Comparing EXPUNGEd msgSeq "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    :cond_8
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3333
    .local v8, "msgSeqNum":I
    if-ne v8, v7, :cond_a

    .line 3335
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3336
    .local v13, "uid":Ljava/lang/String;
    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_9

    .line 3338
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Scheduling removal of UID "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " because msgSeq "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " was expunged"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3340
    :cond_9
    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3343
    .end local v13    # "uid":Ljava/lang/String;
    :cond_a
    if-le v8, v7, :cond_7

    .line 3345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3346
    .restart local v13    # "uid":Ljava/lang/String;
    sget-boolean v14, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v14, :cond_b

    .line 3348
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Reducing msgSeq for UID "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v8, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3350
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->msgSeqUidMap:Ljava/util/Map;

    add-int/lit8 v15, v8, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected processUntaggedResponses(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3131
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    const/4 v5, 0x0

    .line 3132
    .local v5, "skipSync":Z
    iget v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mMessageCount:I

    .line 3133
    .local v2, "oldMessageCount":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 3135
    const/4 v5, 0x1

    .line 3137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3138
    .local v0, "flagSyncMsgSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 3140
    .local v3, "removeMsgUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;

    .line 3142
    .local v4, "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    invoke-virtual {p0, v2, v4, v0, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->processUntaggedResponse(ILcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Ljava/util/List;Ljava/util/List;)I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_0

    .line 3144
    .end local v4    # "response":Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
    :cond_1
    if-nez v5, :cond_3

    .line 3146
    if-gez v2, :cond_2

    .line 3148
    const/4 v2, 0x0

    .line 3150
    :cond_2
    iget v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mMessageCount:I

    if-le v6, v2, :cond_3

    .line 3152
    iget v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mMessageCount:I

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->syncMessages(IZ)V

    .line 3155
    :cond_3
    sget-boolean v6, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 3156
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UIDs for messages needing flag sync are "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3158
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 3160
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->syncMessages(Ljava/util/List;)V

    .line 3162
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 3164
    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->removeMessages(Ljava/util/List;)V

    .line 3166
    :cond_6
    return-void
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2885
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    invoke-virtual {v0}, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->acquire$1349ef()V

    .line 2886
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->sendDone()V

    .line 2888
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 2916
    new-instance v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;-><init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;)V

    .line 3106
    .local v0, "runner":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    .line 3107
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3108
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 3392
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3393
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 3395
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->listeningThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3397
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .line 3398
    .local v0, "conn":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    if-eqz v0, :cond_2

    .line 3400
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 3401
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Closing mConnection to stop pushing for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :cond_1
    invoke-static {v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->access$000(Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;)V

    .line 3408
    :goto_0
    return-void

    .line 3406
    :cond_2
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempt to interrupt null mConnection to stop pushing on folderPusher for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
