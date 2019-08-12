.class Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$1;
.super Lcom/fsck/k9/Account;


# instance fields
.field final synthetic val$imapUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$1;->val$imapUri:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/fsck/k9/Account;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getStoreUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$1;->val$imapUri:Ljava/lang/String;

    return-object v0
.end method
