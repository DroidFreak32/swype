.class Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapMessage"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 2783
    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 2784
    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->mUid:Ljava/lang/String;

    .line 2785
    iput-object p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    .line 2786
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2815
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fsck/k9/mail/Message;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/fsck/k9/mail/Folder;->delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V

    .line 2816
    return-void
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2796
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 2797
    return-void
.end method

.method public setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 4
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2808
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2809
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    new-array v1, v2, [Lcom/fsck/k9/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/fsck/k9/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    .line 2810
    return-void
.end method

.method public setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2801
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2802
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 2790
    iput p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->mSize:I

    .line 2791
    return-void
.end method
