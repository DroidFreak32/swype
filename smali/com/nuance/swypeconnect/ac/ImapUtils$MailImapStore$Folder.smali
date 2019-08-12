.class public Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;
.super Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Folder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;->this$0:Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore;

    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;-><init>(Lcom/fsck/k9/mail/store/ImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)V

    return-void
.end method

.method private collectDisplayNames([Lcom/fsck/k9/mail/Address;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fsck/k9/mail/Address;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDisplayEmailAddr(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message$RecipientType;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Message;",
            "Lcom/fsck/k9/mail/Message$RecipientType;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;->collectDisplayNames([Lcom/fsck/k9/mail/Address;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/MessagingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getEmailDisplayNames([Lcom/fsck/k9/mail/Message;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fsck/k9/mail/Message;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;->collectDisplayNames([Lcom/fsck/k9/mail/Address;Ljava/util/Set;)V

    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    invoke-direct {p0, v2, v3, p2}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;->getDisplayEmailAddr(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message$RecipientType;Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getMessages(I)[Lcom/fsck/k9/mail/Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    :cond_0
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ImapUtils;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "getMessages(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v1

    array-length v0, v1

    if-le v0, p1, :cond_3

    array-length v0, v1

    sub-int v3, v0, p1

    array-length v0, v1

    sub-int v4, v0, v3

    new-array v0, v4, [Lcom/fsck/k9/mail/Message;

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-instance v1, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v1}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v1, v5}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    sget-object v1, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;->INSTANCE:Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ImapUtils;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "subject = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " date = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    const-string v1, "null"

    goto :goto_2

    :cond_2
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
