.class Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;)V
    .locals 0

    .prologue
    .line 2917
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 2920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->acquire$1349ef()V

    .line 2921
    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v16, :cond_0

    .line 2922
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Pusher starting for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16

    if-nez v16, :cond_14

    .line 2928
    const/4 v11, -0x1

    .line 2931
    .local v11, "oldUidNext":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/fsck/k9/mail/PushReceiver;->getPushState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2932
    const/4 v12, 0x0

    .local v12, "pushStateS":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;

    move-result-object v16

    .line 2933
    move-object/from16 v0, v16

    iget v11, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->uidNext:I

    .line 2934
    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v16, :cond_1

    .line 2935
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Got oldUidNext "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2941
    .end local v12    # "pushStateS":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .line 2942
    .local v10, "oldConnection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    sget-object v17, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual/range {v16 .. v17}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->internalOpen(Lcom/fsck/k9/mail/Folder$OpenMode;)Ljava/util/List;

    .line 2943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mConnection:Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;

    .line 2944
    .local v2, "conn":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    if-nez v2, :cond_2

    .line 2946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v16, v0

    const-string v17, "Could not establish connection for IDLE"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2947
    new-instance v16, Lcom/fsck/k9/mail/MessagingException;

    const-string v17, "Could not establish connection for IDLE"

    invoke-direct/range {v16 .. v17}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3049
    .end local v2    # "conn":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .end local v10    # "oldConnection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    :catch_0
    move-exception v4

    .line 3051
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->acquire$1349ef()V

    .line 3052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Lcom/fsck/k9/mail/PushReceiver;->setPushActive(Ljava/lang/String;Z)V

    .line 3057
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3063
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 3065
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Got exception while idling, but stop is set for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2937
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 2939
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Unable to get oldUidNext for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2950
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "conn":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .restart local v10    # "oldConnection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    :cond_2
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->isIdleCapable()Z

    move-result v16

    if-nez v16, :cond_3

    .line 2952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "IMAP server is not IDLE capable: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2954
    new-instance v16, Lcom/fsck/k9/mail/MessagingException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "IMAP server is not IDLE capable:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 2957
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->access$3100(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;)Lcom/fsck/k9/Account;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/Account;->isPushPollOnConnect()Z

    move-result v16

    if-eqz v16, :cond_6

    if-ne v2, v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->needsPoll:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2959
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2960
    .local v15, "untaggedResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 2961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->processUntaggedResponses(Ljava/util/List;)V

    .line 2962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->mMessageCount:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 2964
    new-instance v16, Lcom/fsck/k9/mail/MessagingException;

    const-string v17, "Message count = -1 for idling"

    invoke-direct/range {v16 .. v17}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 2966
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lcom/fsck/k9/mail/PushReceiver;->syncFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2968
    .end local v15    # "untaggedResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16

    if-nez v16, :cond_0

    .line 2972
    move v13, v11

    .line 2974
    .local v13, "startUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v9, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->uidNext:I

    .line 2976
    .local v9, "newUidNext":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_8

    .line 2978
    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 2980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getHighestUid()I

    move-result v5

    .line 2983
    .local v5, "highestUid":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v5, v0, :cond_8

    .line 2985
    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v16, :cond_7

    .line 2986
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "highest UID = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2987
    :cond_7
    add-int/lit8 v9, v5, 0x1

    .line 2988
    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v16, :cond_8

    .line 2989
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "highest UID = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", set newUidNext to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2994
    .end local v5    # "highestUid":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->access$3200(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;)Lcom/fsck/k9/Account;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v16

    sub-int v16, v9, v16

    move/from16 v0, v16

    if-ge v13, v0, :cond_9

    .line 2996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->access$3300(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;)Lcom/fsck/k9/Account;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v16

    sub-int v13, v9, v16

    .line 2998
    :cond_9
    if-gtz v13, :cond_a

    .line 3000
    const/4 v13, 0x1

    .line 3002
    :cond_a
    if-le v9, v13, :cond_d

    .line 3005
    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v16, :cond_b

    .line 3006
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Needs sync from uid "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3008
    .local v8, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    move v14, v13

    .local v14, "uid":I
    :goto_3
    if-ge v14, v9, :cond_c

    .line 3010
    new-instance v7, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 3011
    .local v7, "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3008
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 3013
    .end local v7    # "message":Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
    :cond_c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 3015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v8, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->access$3400(Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 3021
    .end local v8    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v14    # "uid":I
    :cond_d
    const/4 v15, 0x0

    .line 3022
    .restart local v15    # "untaggedResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_f

    .line 3024
    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v16, :cond_e

    .line 3025
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Processing "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " untagged responses from previous commands for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    :cond_e
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "untaggedResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3027
    .restart local v15    # "untaggedResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->storedUntaggedResponses:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 3028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->processUntaggedResponses(Ljava/util/List;)V

    goto :goto_4

    .line 3031
    :cond_f
    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v16, :cond_10

    .line 3032
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "About to IDLE for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/fsck/k9/mail/PushReceiver;->setPushActive(Ljava/lang/String;Z)V

    .line 3035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->doneSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3038
    if-nez v2, :cond_11

    .line 3040
    new-instance v16, Lcom/fsck/k9/mail/MessagingException;

    const-string v17, "No connection available for idling"

    invoke-direct/range {v16 .. v17}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 3042
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/Account;->getIdleRefreshMinutes()I

    move-result v16

    mul-int/lit8 v16, v16, 0x3c

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    const v17, 0x493e0

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;->setReadTimeout(I)V

    .line 3043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    const-string v17, "IDLE"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->executeSimpleCommand(Ljava/lang/String;ZLcom/fsck/k9/mail/store/ImapStore$UntaggedHandler;)Ljava/util/List;

    .line 3044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->delayTime:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$2800()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idleFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3059
    .end local v2    # "conn":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .end local v9    # "newUidNext":I
    .end local v10    # "oldConnection":Lcom/fsck/k9/mail/store/ImapStore$ImapConnection;
    .end local v13    # "startUid":I
    .end local v15    # "untaggedResponses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;>;"
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 3061
    .local v6, "me":Ljava/lang/Exception;
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Got exception while closing for exception for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 3069
    .end local v6    # "me":Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Push error for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v4}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3070
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Got exception while idling for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->delayTime:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 3072
    .local v3, "delayTimeInt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    move-object/from16 v17, v0

    int-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-interface/range {v16 .. v19}, Lcom/fsck/k9/mail/PushReceiver;->sleep(Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;J)V

    .line 3073
    mul-int/lit8 v3, v3, 0x2

    .line 3074
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$3500()I

    move-result v16

    move/from16 v0, v16

    if-le v3, v0, :cond_13

    .line 3076
    invoke-static {}, Lcom/fsck/k9/mail/store/ImapStore;->access$3500()I

    move-result v3

    .line 3078
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->delayTime:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idleFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v16

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 3081
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Disabling pusher for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " after "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idleFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " consecutive errors"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Push disabled for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " after "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->idleFailureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " consecutive errors"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v4}, Lcom/fsck/k9/mail/PushReceiver;->pushError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 3089
    .end local v3    # "delayTimeInt":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v11    # "oldUidNext":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->receiver:Lcom/fsck/k9/mail/PushReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Lcom/fsck/k9/mail/PushReceiver;->setPushActive(Ljava/lang/String;Z)V

    .line 3092
    :try_start_4
    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v16, :cond_15

    .line 3093
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Pusher for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " is exiting"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->release()V

    .line 3103
    :goto_5
    return-void

    .line 3096
    :catch_3
    move-exception v6

    .line 3098
    .restart local v6    # "me":Ljava/lang/Exception;
    :try_start_5
    const-string v16, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Got exception while closing for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->getLogId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->release()V

    goto :goto_5

    .end local v6    # "me":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolderPusher;->wakeLock:Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/helper/power/TracingPowerManager$TracingWakeLock;->release()V

    throw v16
.end method
