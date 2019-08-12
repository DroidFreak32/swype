.class public final Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;
.super Lcom/fsck/k9/controller/MessagingListener;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MesssageInfoHolderRetrieverListener"
.end annotation


# instance fields
.field private mHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageInfoHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageInfoHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private synthetic this$0:Lcom/fsck/k9/provider/MessageProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/provider/MessageProvider;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageInfoHolder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 893
    .local p2, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/List<Lcom/fsck/k9/activity/MessageInfoHolder;>;>;"
    iput-object p1, p0, Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingListener;-><init>()V

    .line 885
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;->mHolders:Ljava/util/List;

    .line 894
    iput-object p2, p0, Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 895
    return-void
.end method


# virtual methods
.method public final listLocalMessagesAddMessages$4a489e51(Ljava/util/List;)V
    .locals 15
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
    .line 902
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    iget-object v9, p0, Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-static {v9}, Lcom/fsck/k9/provider/MessageProvider;->access$100(Lcom/fsck/k9/provider/MessageProvider;)Lcom/fsck/k9/helper/MessageHelper;

    move-result-object v2

    .line 903
    .local v2, "helper":Lcom/fsck/k9/helper/MessageHelper;
    iget-object v3, p0, Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;->mHolders:Ljava/util/List;

    .line 905
    .local v3, "holders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageInfoHolder;>;"
    iget-object v9, p0, Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;->this$0:Lcom/fsck/k9/provider/MessageProvider;

    invoke-virtual {v9}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 907
    .local v1, "context":Landroid/content/Context;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Message;

    .line 909
    .local v5, "message":Lcom/fsck/k9/mail/Message;
    new-instance v8, Lcom/fsck/k9/activity/MessageInfoHolder;

    invoke-direct {v8}, Lcom/fsck/k9/activity/MessageInfoHolder;-><init>()V

    .line 910
    .local v8, "messageInfoHolder":Lcom/fsck/k9/activity/MessageInfoHolder;
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v7

    .line 911
    .local v7, "messageFolder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v6

    .line 913
    .local v6, "messageAccount":Lcom/fsck/k9/Account;
    new-instance v11, Lcom/fsck/k9/activity/FolderInfoHolder;

    invoke-direct {v11, v1, v7, v6}, Lcom/fsck/k9/activity/FolderInfoHolder;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/Account;)V

    invoke-static {}, Lcom/fsck/k9/K9;->showContactName()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v2, Lcom/fsck/k9/helper/MessageHelper;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/fsck/k9/helper/Contacts;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;

    move-result-object v9

    move-object v10, v9

    :goto_1
    :try_start_0
    move-object v0, v5

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    move-object v9, v0

    iput-object v9, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->message:Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v12

    iput-object v12, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->compareDate:Ljava/util/Date;

    iget-object v12, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->compareDate:Ljava/util/Date;

    if-nez v12, :cond_0

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getInternalDate()Ljava/util/Date;

    move-result-object v12

    iput-object v12, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->compareDate:Ljava/util/Date;

    :cond_0
    iput-object v11, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->folder:Lcom/fsck/k9/activity/FolderInfoHolder;

    sget-object v11, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v9, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->read:Z

    sget-object v11, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v9, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->answered:Z

    sget-object v11, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v9, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->flagged:Z

    sget-object v11, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v9, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->downloaded:Z

    sget-object v11, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v9, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->partially_downloaded:Z

    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v11

    array-length v12, v11

    if-lez v12, :cond_2

    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-virtual {v6, v12}, Lcom/fsck/k9/Account;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    move-result v12

    if-eqz v12, :cond_2

    sget-object v12, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-virtual {v9, v12}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v12

    invoke-static {v12, v10}, Lcom/fsck/k9/mail/Address;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->compareCounterparty:Ljava/lang/String;

    new-instance v12, Landroid/text/SpannableStringBuilder;

    iget-object v13, v2, Lcom/fsck/k9/helper/MessageHelper;->mContext:Landroid/content/Context;

    const v14, 0x7f0a00b8

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    iput-object v10, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->sender:Ljava/lang/CharSequence;

    :goto_2
    array-length v10, v11

    if-lez v10, :cond_3

    const/4 v10, 0x0

    aget-object v10, v11, v10

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->senderAddress:Ljava/lang/String;

    :goto_3
    invoke-virtual {v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->uid:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->account:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "email://messages/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->uri:Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_4
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 913
    :cond_1
    const/4 v9, 0x0

    move-object v10, v9

    goto/16 :goto_1

    :cond_2
    :try_start_1
    invoke-static {v11, v10}, Lcom/fsck/k9/mail/Address;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->sender:Ljava/lang/CharSequence;

    iget-object v10, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->sender:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->compareCounterparty:Ljava/lang/String;
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    const-string v10, "k9"

    const-string v11, "Unable to load message info"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_3
    :try_start_2
    iget-object v10, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->compareCounterparty:Ljava/lang/String;

    iput-object v10, v8, Lcom/fsck/k9/activity/MessageInfoHolder;->senderAddress:Ljava/lang/String;
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 918
    .end local v5    # "message":Lcom/fsck/k9/mail/Message;
    .end local v6    # "messageAccount":Lcom/fsck/k9/Account;
    .end local v7    # "messageFolder":Lcom/fsck/k9/mail/Folder;
    .end local v8    # "messageInfoHolder":Lcom/fsck/k9/activity/MessageInfoHolder;
    :cond_4
    return-void
.end method

.method public final searchStats$4ed473c3()V
    .locals 3

    .prologue
    .line 925
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;->queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/fsck/k9/provider/MessageProvider$MesssageInfoHolderRetrieverListener;->mHolders:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "k9"

    const-string v2, "Unable to return message list back to caller"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
