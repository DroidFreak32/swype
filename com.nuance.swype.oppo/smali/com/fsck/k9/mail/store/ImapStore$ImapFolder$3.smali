.class Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$3;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessages(Ljava/util/List;ZLcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

.field final synthetic val$includeDeleted:Z

.field final synthetic val$mesgSeqs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;ZLjava/util/List;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$3;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    iput-boolean p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$3;->val$includeDeleted:Z

    iput-object p3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$3;->val$mesgSeqs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public search()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$3;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "UID SEARCH %s"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$3;->val$includeDeleted:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$3;->val$mesgSeqs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-static {v4, v5}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " NOT DELETED"

    goto :goto_0
.end method
