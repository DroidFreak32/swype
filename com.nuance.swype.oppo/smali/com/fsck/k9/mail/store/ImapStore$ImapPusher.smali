.class public Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/Pusher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapPusher"
.end annotation


# instance fields
.field folderPushers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;",
            ">;"
        }
    .end annotation
.end field

.field private lastRefresh:J

.field final mReceiver:Lcom/fsck/k9/mail/PushReceiver;

.field final mStore:Lcom/fsck/k9/mail/store/ImapStore;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/PushReceiver;)V
    .locals 2
    .param p2, "store"    # Lcom/fsck/k9/mail/store/ImapStore;
    .param p3, "receiver"    # Lcom/fsck/k9/mail/PushReceiver;

    .prologue
    .line 3485
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3480
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->lastRefresh:J

    .line 3482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    .line 3486
    iput-object p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->mStore:Lcom/fsck/k9/mail/store/ImapStore;

    .line 3487
    iput-object p3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->mReceiver:Lcom/fsck/k9/mail/PushReceiver;

    .line 3488
    return-void
.end method


# virtual methods
.method public getLastRefresh()J
    .locals 2

    .prologue
    .line 3558
    iget-wide v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->lastRefresh:J

    return-wide v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 3553
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/ImapStore;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getIdleRefreshMinutes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public refresh()V
    .locals 7

    .prologue
    .line 3511
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    monitor-enter v4

    .line 3513
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3517
    .local v1, "folderPusher":Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    :try_start_1
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->refresh()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3519
    :catch_0
    move-exception v0

    .line 3521
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got exception while refreshing for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3524
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "folderPusher":Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public setLastRefresh(J)V
    .locals 1
    .param p1, "lastRefresh"    # J

    .prologue
    .line 3563
    iput-wide p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->lastRefresh:J

    .line 3564
    return-void
.end method

.method public start(Ljava/util/List;)V
    .locals 8
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
    .line 3492
    .local p1, "folderNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->stop()V

    .line 3493
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    monitor-enter v4

    .line 3495
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->setLastRefresh(J)V

    .line 3496
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3498
    .local v0, "folderName":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    .line 3499
    const/4 v2, 0x0

    .local v2, "pusher":Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    if-nez v3, :cond_0

    .line 3501
    new-instance v2, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    .end local v2    # "pusher":Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    iget-object v5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->mStore:Lcom/fsck/k9/mail/store/ImapStore;

    iget-object v6, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->mReceiver:Lcom/fsck/k9/mail/PushReceiver;

    invoke-direct {v2, v3, v5, v0, v6}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/PushReceiver;)V

    .line 3502
    .restart local v2    # "pusher":Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3503
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3506
    .end local v0    # "folderName":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pusher":Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public stop()V
    .locals 7

    .prologue
    .line 3529
    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3530
    const-string v3, "k9"

    const-string v4, "Requested stop of IMAP pusher"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    monitor-enter v4

    .line 3534
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3538
    .local v1, "folderPusher":Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    :try_start_1
    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3539
    const-string v3, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Requesting stop of IMAP folderPusher "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    :cond_1
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3542
    :catch_0
    move-exception v0

    .line 3544
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got exception while stopping "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3548
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "folderPusher":Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3547
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPusher;->folderPushers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 3548
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
