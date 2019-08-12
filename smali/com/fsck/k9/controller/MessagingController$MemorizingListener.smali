.class final Lcom/fsck/k9/controller/MessagingController$MemorizingListener;
.super Lcom/fsck/k9/controller/MessagingListener;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemorizingListener"
.end annotation


# instance fields
.field private memories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/controller/MessagingController$Memory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 5200
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingListener;-><init>()V

    .line 5202
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->memories:Ljava/util/HashMap;

    return-void
.end method

.method private getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 5206
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->memories:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/fsck/k9/controller/MessagingController;->getMemoryKey(Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingController$Memory;

    .line 5207
    .local v0, "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    if-nez v0, :cond_0

    .line 5209
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$Memory;

    .end local v0    # "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    invoke-direct {v0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$Memory;-><init>(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 5210
    .restart local v0    # "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->memories:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/fsck/k9/controller/MessagingController;->getMemoryKey(Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5212
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized pendingCommandCompleted$529ef42(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 5410
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v0

    .line 5411
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5412
    monitor-exit p0

    return-void

    .line 5410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "commandTitle"    # Ljava/lang/String;

    .prologue
    .line 5403
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v0

    .line 5404
    iput-object p2, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5405
    monitor-exit p0

    return-void

    .line 5403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pendingCommandsFinished(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 5397
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v0

    .line 5398
    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FINISHED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->processingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5399
    monitor-exit p0

    return-void

    .line 5397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 5389
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v0

    .line 5390
    .local v0, "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->STARTED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->processingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    .line 5391
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderCompleted:I

    .line 5392
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5393
    monitor-exit p0

    return-void

    .line 5389
    .end local v0    # "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final declared-synchronized refreshOther(Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 10
    .param p1, "other"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 5245
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 5248
    const/4 v5, 0x0

    .line 5249
    .local v5, "syncStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    const/4 v3, 0x0

    .line 5250
    .local v3, "sendStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    const/4 v2, 0x0

    .line 5252
    .local v2, "processingStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    :try_start_0
    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->memories:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/controller/MessagingController$Memory;

    .line 5255
    .local v1, "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    iget-object v6, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->syncingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    if-eqz v6, :cond_1

    .line 5257
    sget-object v6, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$controller$MessagingController$MemorizingState:[I

    iget-object v7, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->syncingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    invoke-virtual {v7}, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 5273
    :cond_1
    :goto_1
    iget-object v6, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->sendingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    if-eqz v6, :cond_2

    .line 5275
    sget-object v6, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$controller$MessagingController$MemorizingState:[I

    iget-object v7, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->sendingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    invoke-virtual {v7}, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 5288
    :cond_2
    :goto_2
    iget-object v6, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->pushingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    if-eqz v6, :cond_3

    .line 5290
    sget-object v6, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$controller$MessagingController$MemorizingState:[I

    iget-object v7, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->pushingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    invoke-virtual {v7}, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 5300
    :cond_3
    :goto_3
    iget-object v6, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->processingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    if-eqz v6, :cond_0

    .line 5302
    sget-object v6, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$controller$MessagingController$MemorizingState:[I

    iget-object v7, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->processingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    invoke-virtual {v7}, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    goto :goto_0

    .line 5305
    :pswitch_0
    move-object v2, v1

    .line 5306
    goto :goto_0

    .line 5260
    :pswitch_1
    move-object v5, v1

    .line 5261
    goto :goto_1

    .line 5263
    :pswitch_2
    iget-object v6, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->folderName:Ljava/lang/String;

    iget v8, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->syncingTotalMessagesInMailbox:I

    iget v9, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->syncingNumNewMessages:I

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 5245
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 5267
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    :pswitch_3
    :try_start_1
    iget-object v6, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->folderName:Ljava/lang/String;

    iget-object v8, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->failureMessage:Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v8}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5278
    :pswitch_4
    move-object v3, v1

    .line 5279
    goto :goto_2

    .line 5281
    :pswitch_5
    iget-object v6, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v6}, Lcom/fsck/k9/controller/MessagingListener;->sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V

    goto :goto_2

    .line 5284
    :pswitch_6
    iget-object v6, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v6}, Lcom/fsck/k9/controller/MessagingListener;->sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V

    goto :goto_2

    .line 5293
    :pswitch_7
    iget-object v6, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->folderName:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {p1, v6, v7, v8}, Lcom/fsck/k9/controller/MessagingListener;->setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V

    goto :goto_3

    .line 5296
    :pswitch_8
    iget-object v6, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->folderName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Lcom/fsck/k9/controller/MessagingListener;->setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V

    goto :goto_3

    .line 5309
    :pswitch_9
    iget-object v6, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v6}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V

    goto/16 :goto_0

    .line 5314
    .end local v1    # "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    :cond_4
    const/4 v4, 0x0

    .line 5315
    .local v4, "somethingStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    if-eqz v5, :cond_5

    .line 5317
    iget-object v6, v5, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v5, Lcom/fsck/k9/controller/MessagingController$Memory;->folderName:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 5318
    move-object v4, v5

    .line 5320
    :cond_5
    if-eqz v3, :cond_6

    .line 5322
    iget-object v6, v3, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v6}, Lcom/fsck/k9/controller/MessagingListener;->sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V

    .line 5323
    move-object v4, v3

    .line 5325
    :cond_6
    if-eqz v2, :cond_7

    .line 5327
    iget-object v6, v2, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v6}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandsProcessing(Lcom/fsck/k9/Account;)V

    .line 5328
    iget-object v6, v2, Lcom/fsck/k9/controller/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 5330
    iget-object v6, v2, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v2, Lcom/fsck/k9/controller/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    .line 5337
    :goto_4
    move-object v4, v2

    .line 5339
    :cond_7
    if-eqz v4, :cond_8

    iget v6, v4, Lcom/fsck/k9/controller/MessagingController$Memory;->folderTotal:I

    if-lez v6, :cond_8

    .line 5341
    iget-object v6, v4, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v4, Lcom/fsck/k9/controller/MessagingController$Memory;->folderName:Ljava/lang/String;

    iget v8, v4, Lcom/fsck/k9/controller/MessagingController$Memory;->folderCompleted:I

    iget v9, v4, Lcom/fsck/k9/controller/MessagingController$Memory;->folderTotal:I

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5345
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "processingStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    .end local v3    # "sendStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    .end local v4    # "somethingStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    .end local v5    # "syncStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    :cond_8
    monitor-exit p0

    return-void

    .line 5335
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "processingStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    .restart local v3    # "sendStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    .restart local v4    # "somethingStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    .restart local v5    # "syncStarted":Lcom/fsck/k9/controller/MessagingController$Memory;
    :cond_9
    :try_start_2
    iget-object v6, v2, Lcom/fsck/k9/controller/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v7, v2, Lcom/fsck/k9/controller/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandCompleted$529ef42(Lcom/fsck/k9/Account;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 5257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5275
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 5290
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 5302
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public final declared-synchronized sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 5365
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v0

    .line 5366
    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FINISHED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->sendingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5367
    monitor-exit p0

    return-void

    .line 5365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 5372
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v0

    .line 5373
    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FAILED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->sendingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5374
    monitor-exit p0

    return-void

    .line 5372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 5356
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v0

    .line 5357
    .local v0, "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->STARTED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->sendingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    .line 5358
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderCompleted:I

    .line 5359
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5360
    monitor-exit p0

    return-void

    .line 5356
    .end local v0    # "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "active"    # Z

    .prologue
    .line 5349
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v1

    .line 5350
    if-eqz p3, :cond_0

    sget-object v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->STARTED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    :goto_0
    iput-object v0, v1, Lcom/fsck/k9/controller/MessagingController$Memory;->pushingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5351
    monitor-exit p0

    return-void

    .line 5350
    :cond_0
    :try_start_1
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FINISHED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 5239
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v0

    .line 5240
    .local v0, "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FAILED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->syncingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    .line 5241
    iput-object p3, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->failureMessage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5242
    monitor-exit p0

    return-void

    .line 5239
    .end local v0    # "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 5228
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v0

    .line 5229
    .local v0, "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->FINISHED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->syncingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    .line 5230
    iput p3, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->syncingTotalMessagesInMailbox:I

    .line 5231
    iput p4, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->syncingNumNewMessages:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5232
    monitor-exit p0

    return-void

    .line 5228
    .end local v0    # "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "completed"    # I
    .param p4, "total"    # I

    .prologue
    .line 5380
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v0

    .line 5381
    .local v0, "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    iput p3, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderCompleted:I

    .line 5382
    iput p4, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5383
    monitor-exit p0

    return-void

    .line 5380
    .end local v0    # "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 5218
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->getMemory(Lcom/fsck/k9/Account;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingController$Memory;

    move-result-object v0

    .line 5219
    .local v0, "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    sget-object v1, Lcom/fsck/k9/controller/MessagingController$MemorizingState;->STARTED:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    iput-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->syncingState:Lcom/fsck/k9/controller/MessagingController$MemorizingState;

    .line 5220
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderCompleted:I

    .line 5221
    const/4 v1, 0x0

    iput v1, v0, Lcom/fsck/k9/controller/MessagingController$Memory;->folderTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5222
    monitor-exit p0

    return-void

    .line 5218
    .end local v0    # "memory":Lcom/fsck/k9/controller/MessagingController$Memory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
