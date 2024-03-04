.class Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fsck/k9/mail/Message;",
        ">;"
    }
.end annotation


# static fields
.field static final EARLY:Ljava/util/Date;

.field static final INSTANCE:Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;-><init>()V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;->INSTANCE:Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;

    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;->EARLY:Ljava/util/Date;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;->EARLY:Ljava/util/Date;

    move-object v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;->EARLY:Ljava/util/Date;

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/fsck/k9/mail/Message;

    check-cast p2, Lcom/fsck/k9/mail/Message;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailImapStore$MessageComparator;->compare(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)I

    move-result v0

    return v0
.end method
