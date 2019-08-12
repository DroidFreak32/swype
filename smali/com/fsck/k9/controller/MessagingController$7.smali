.class final Lcom/fsck/k9/controller/MessagingController$7;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/fsck/k9/controller/MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->searchLocalMessagesSynchronous([Ljava/lang/String;[Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Ljava/lang/String;Z[Lcom/fsck/k9/mail/Flag;[Lcom/fsck/k9/mail/Flag;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field private synthetic val$account:Lcom/fsck/k9/Account;

.field private synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field private synthetic val$stats:Lcom/fsck/k9/AccountStats;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/AccountStats;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/Account;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$7;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$stats:Lcom/fsck/k9/AccountStats;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$account:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final messageFinished$1daa5980(Lcom/fsck/k9/mail/Message;)V
    .locals 6
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 899
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$7;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5, p1}, Lcom/fsck/k9/controller/MessagingController;->access$300(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$stats:Lcom/fsck/k9/AccountStats;

    iget v5, v4, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    sget-object v1, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    add-int/2addr v1, v5

    iput v1, v4, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    .line 905
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$stats:Lcom/fsck/k9/AccountStats;

    iget v4, v1, Lcom/fsck/k9/AccountStats;->flaggedMessageCount:I

    sget-object v5, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    add-int/2addr v2, v4

    iput v2, v1, Lcom/fsck/k9/AccountStats;->flaggedMessageCount:I

    .line 906
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    if-eqz v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$account:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/controller/MessagingListener;->listLocalMessagesAddMessages$4a489e51(Ljava/util/List;)V

    .line 912
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :cond_0
    return-void

    .restart local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :cond_1
    move v1, v3

    .line 904
    goto :goto_0

    :cond_2
    move v2, v3

    .line 905
    goto :goto_1
.end method
