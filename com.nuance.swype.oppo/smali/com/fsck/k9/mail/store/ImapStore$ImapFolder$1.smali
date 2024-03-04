.class Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getHighestUid()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public search()Ljava/util/List;
    .locals 3
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
    .line 977
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    const-string v1, "UID SEARCH *:* "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
