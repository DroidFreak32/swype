.class public Lcom/fsck/k9/mail/filter/StatusOutputStream;
.super Ljava/io/FilterOutputStream;
.source "StatusOutputStream.java"


# instance fields
.field private mCount:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fsck/k9/mail/filter/StatusOutputStream;->mCount:J

    .line 18
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 24
    iget-wide v0, p0, Lcom/fsck/k9/mail/filter/StatusOutputStream;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fsck/k9/mail/filter/StatusOutputStream;->mCount:J

    .line 32
    return-void
.end method
