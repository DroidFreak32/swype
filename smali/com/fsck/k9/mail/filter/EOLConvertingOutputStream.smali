.class public Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "EOLConvertingOutputStream.java"


# instance fields
.field private ignoreNextIfLF:Z

.field private lastChar:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->ignoreNextIfLF:Z

    .line 15
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    .line 35
    iget v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->lastChar:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 37
    invoke-super {p0, v2}, Ljava/io/FilterOutputStream;->write(I)V

    .line 38
    iput v2, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->lastChar:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->ignoreNextIfLF:Z

    .line 45
    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 46
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xd

    .line 20
    iget-boolean v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->ignoreNextIfLF:Z

    if-nez v0, :cond_1

    .line 22
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->lastChar:I

    if-eq v0, v1, :cond_0

    .line 24
    invoke-super {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 26
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 27
    iput p1, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->lastChar:I

    .line 29
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->ignoreNextIfLF:Z

    .line 30
    return-void
.end method
