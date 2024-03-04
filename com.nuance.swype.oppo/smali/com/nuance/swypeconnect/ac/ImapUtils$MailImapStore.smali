.class public abstract Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore;
.super Lcom/fsck/k9/mail/store/ImapStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ImapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MailImapStore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;,
        Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$1;

    invoke-direct {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/ImapStore;-><init>(Lcom/fsck/k9/Account;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore;->getFolder(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;

    move-result-object v0

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;
    .locals 1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;

    invoke-direct {v0, p0, p0, p1}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$Folder;-><init>(Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore;Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;)V

    return-object v0
.end method
