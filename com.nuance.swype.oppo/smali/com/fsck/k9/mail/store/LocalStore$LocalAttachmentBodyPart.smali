.class public Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;
.super Lcom/fsck/k9/mail/internet/MimeBodyPart;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalAttachmentBodyPart"
.end annotation


# instance fields
.field private mAttachmentId:J


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/Body;J)V
    .locals 2
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;
    .param p2, "attachmentId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 5861
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;)V

    .line 5857
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    .line 5862
    iput-wide p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    .line 5863
    return-void
.end method


# virtual methods
.method public getAttachmentId()J
    .locals 2

    .prologue
    .line 5871
    iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    return-wide v0
.end method

.method public setAttachmentId(J)V
    .locals 1
    .param p1, "attachmentId"    # J

    .prologue
    .line 5876
    iput-wide p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    .line 5877
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
