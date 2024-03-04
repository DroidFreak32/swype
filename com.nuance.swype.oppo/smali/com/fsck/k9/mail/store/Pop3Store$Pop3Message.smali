.class Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pop3Message"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "folder"    # Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 1113
    iput-object p1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->mUid:Ljava/lang/String;

    .line 1114
    iput-object p2, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    .line 1115
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->mSize:I

    .line 1116
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1142
    sget-object v0, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1148
    return-void
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 1127
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

    .line 1132
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1133
    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    new-array v1, v2, [Lcom/fsck/k9/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/fsck/k9/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    .line 1134
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1120
    iput p1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->mSize:I

    .line 1121
    return-void
.end method
