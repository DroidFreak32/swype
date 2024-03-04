.class Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessages(IILjava/util/Date;ZLcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

.field final synthetic val$dateSearchString:Ljava/lang/StringBuilder;

.field final synthetic val$end:I

.field final synthetic val$includeDeleted:Z

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;ZIILjava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    iput-boolean p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$includeDeleted:Z

    iput p3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$start:I

    iput p4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$end:I

    iput-object p5, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$dateSearchString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public search()Ljava/util/List;
    .locals 5
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
    .line 1038
    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "UID SEARCH %d:%d%s"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$includeDeleted:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$start:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$end:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$dateSearchString:Ljava/lang/StringBuilder;

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
