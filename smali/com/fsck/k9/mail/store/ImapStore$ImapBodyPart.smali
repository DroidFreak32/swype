.class Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;
.super Lcom/fsck/k9/mail/internet/MimeBodyPart;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapBodyPart"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2823
    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>()V

    .line 2824
    return-void
.end method


# virtual methods
.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 2828
    iput p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;->mSize:I

    .line 2829
    return-void
.end method
