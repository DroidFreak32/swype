.class final Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;
.super Ljava/io/InputStream;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ElementInputStream"
.end annotation


# instance fields
.field private position:I

.field private remaining:I

.field final synthetic this$0:Lio/fabric/sdk/android/services/common/QueueFile;


# direct methods
.method private constructor <init>(Lio/fabric/sdk/android/services/common/QueueFile;Lio/fabric/sdk/android/services/common/QueueFile$Element;)V
    .registers 4
    .param p2, "element"    # Lio/fabric/sdk/android/services/common/QueueFile$Element;

    .prologue
    .line 448
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 449
    iget v0, p2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    add-int/lit8 v0, v0, 0x4

    # invokes: Lio/fabric/sdk/android/services/common/QueueFile;->wrapPosition(I)I
    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->access$100(Lio/fabric/sdk/android/services/common/QueueFile;I)I

    move-result v0

    iput v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    .line 450
    iget v0, p2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    iput v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    .line 451
    return-void
.end method

.method synthetic constructor <init>(Lio/fabric/sdk/android/services/common/QueueFile;Lio/fabric/sdk/android/services/common/QueueFile$Element;B)V
    .registers 4
    .param p1, "x0"    # Lio/fabric/sdk/android/services/common/QueueFile;
    .param p2, "x1"    # Lio/fabric/sdk/android/services/common/QueueFile$Element;

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;-><init>(Lio/fabric/sdk/android/services/common/QueueFile;Lio/fabric/sdk/android/services/common/QueueFile$Element;)V

    return-void
.end method


# virtual methods
.method public final read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    if-nez v1, :cond_6

    .line 475
    const/4 v0, -0x1

    .line 481
    :goto_5
    return v0

    .line 477
    :cond_6
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    # getter for: Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/QueueFile;->access$400(Lio/fabric/sdk/android/services/common/QueueFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    iget v2, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 478
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    # getter for: Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;
    invoke-static {v1}, Lio/fabric/sdk/android/services/common/QueueFile;->access$400(Lio/fabric/sdk/android/services/common/QueueFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 479
    .local v0, "b":I
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    iget v2, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    add-int/lit8 v2, v2, 0x1

    # invokes: Lio/fabric/sdk/android/services/common/QueueFile;->wrapPosition(I)I
    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/QueueFile;->access$100(Lio/fabric/sdk/android/services/common/QueueFile;I)I

    move-result v1

    iput v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    .line 480
    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    goto :goto_5
.end method

.method public final read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    const-string/jumbo v0, "buffer"

    # invokes: Lio/fabric/sdk/android/services/common/QueueFile;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 456
    or-int v0, p2, p3

    if-ltz v0, :cond_e

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_14

    .line 457
    :cond_e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 459
    :cond_14
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    if-lez v0, :cond_37

    .line 460
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    if-le p3, v0, :cond_1e

    .line 461
    iget p3, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    .line 463
    :cond_1e
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Lio/fabric/sdk/android/services/common/QueueFile;->access$300(Lio/fabric/sdk/android/services/common/QueueFile;I[BII)V

    .line 464
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    add-int/2addr v1, p3

    # invokes: Lio/fabric/sdk/android/services/common/QueueFile;->wrapPosition(I)I
    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->access$100(Lio/fabric/sdk/android/services/common/QueueFile;I)I

    move-result v0

    iput v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    .line 465
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    move v0, p3

    .line 468
    :goto_36
    return v0

    :cond_37
    const/4 v0, -0x1

    goto :goto_36
.end method
