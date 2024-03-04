.class public Lcom/fsck/k9/controller/MessagingListener;
.super Ljava/lang/Object;
.source "MessagingListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public listLocalMessagesAddMessages$4a489e51(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    return-void
.end method

.method public messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 170
    return-void
.end method

.method public pendingCommandCompleted$529ef42(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 225
    return-void
.end method

.method public pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "commandTitle"    # Ljava/lang/String;

    .prologue
    .line 222
    return-void
.end method

.method public pendingCommandsFinished(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 220
    return-void
.end method

.method public pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 219
    return-void
.end method

.method public searchStats$4ed473c3()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 161
    return-void
.end method

.method public sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 165
    return-void
.end method

.method public sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 157
    return-void
.end method

.method public setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 191
    return-void
.end method

.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 118
    return-void
.end method

.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "totalMessagesInMailbox"    # I
    .param p4, "numNewMessages"    # I

    .prologue
    .line 113
    return-void
.end method

.method public synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 100
    return-void
.end method

.method public synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "completed"    # I
    .param p4, "total"    # I

    .prologue
    .line 96
    return-void
.end method

.method public synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 108
    return-void
.end method

.method public synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method
