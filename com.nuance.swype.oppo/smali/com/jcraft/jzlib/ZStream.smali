.class public final Lcom/jcraft/jzlib/ZStream;
.super Ljava/lang/Object;
.source "ZStream.java"


# instance fields
.field _adler:Lcom/jcraft/jzlib/Adler32;

.field public adler:J

.field public avail_in:I

.field public avail_out:I

.field dstate:Lcom/jcraft/jzlib/Deflate;

.field istate:Lcom/jcraft/jzlib/Inflate;

.field public msg:Ljava/lang/String;

.field public next_in:[B

.field public next_in_index:I

.field public next_out:[B

.field public next_out_index:I

.field public total_in:J

.field public total_out:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/jcraft/jzlib/Adler32;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Adler32;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    return-void
.end method


# virtual methods
.method public final deflate(I)I
    .locals 1
    .param p1, "flush"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, -0x2

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    invoke-virtual {v0, p0, p1}, Lcom/jcraft/jzlib/Deflate;->deflate(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v0

    goto :goto_0
.end method

.method final flush_pending()V
    .locals 6

    .prologue
    .line 140
    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget v0, v1, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 142
    .local v0, "len":I
    iget v1, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 143
    :cond_0
    if-nez v0, :cond_2

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget-object v1, v1, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget v2, v2, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    array-length v1, v1

    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget-object v1, v1, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget v2, v2, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    array-length v1, v1

    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    .line 149
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget-object v3, v3, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget v3, v3, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "avail_out="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget-object v1, v1, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget-object v2, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget v2, v2, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    iget v4, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v1, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 158
    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget v2, v1, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 159
    iget-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 160
    iget v1, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 161
    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget v2, v1, Lcom/jcraft/jzlib/Deflate;->pending:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 162
    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget v1, v1, Lcom/jcraft/jzlib/Deflate;->pending:I

    if-nez v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    const/4 v2, 0x0

    iput v2, v1, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    goto/16 :goto_0
.end method

.method public final inflate(I)I
    .locals 1
    .param p1, "f"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    invoke-static {p0, p1}, Lcom/jcraft/jzlib/Inflate;->inflate(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v0

    goto :goto_0
.end method
