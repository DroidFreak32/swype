.class final Lcom/crashlytics/android/SessionDataWriter;
.super Ljava/lang/Object;
.source "SessionDataWriter.java"


# static fields
.field private static final SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;


# instance fields
.field final context:Landroid/content/Context;

.field exceptionStack:[Ljava/lang/StackTraceElement;

.field private final maxChainedExceptionsDepth:I

.field private final optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

.field private final packageNameBytes:Lcom/crashlytics/android/ByteString;

.field runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field stacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field threads:[Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "0"

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/SessionDataWriter;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildId"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x8

    iput v0, p0, Lcom/crashlytics/android/SessionDataWriter;->maxChainedExceptionsDepth:I

    .line 50
    iput-object p1, p0, Lcom/crashlytics/android/SessionDataWriter;->context:Landroid/content/Context;

    .line 51
    invoke-static {p3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/SessionDataWriter;->packageNameBytes:Lcom/crashlytics/android/ByteString;

    .line 52
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/crashlytics/android/SessionDataWriter;->optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

    .line 54
    return-void

    .line 52
    :cond_0
    const-string/jumbo v0, "-"

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method private getBinaryImageSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 456
    const/4 v1, 0x1

    invoke-static {v1, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    .line 457
    const/4 v2, 0x2

    invoke-static {v2, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 458
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/crashlytics/android/SessionDataWriter;->packageNameBytes:Lcom/crashlytics/android/ByteString;

    invoke-static {v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v2

    add-int v0, v1, v2

    .line 459
    .local v0, "size":I
    iget-object v1, p0, Lcom/crashlytics/android/SessionDataWriter;->optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

    if-eqz v1, :cond_0

    .line 460
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/crashlytics/android/SessionDataWriter;->optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 463
    :cond_0
    return v0
.end method

.method private static getDeviceIdentifierSize(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I
    .locals 3
    .param p0, "type"    # Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v0, 0x1

    iget v1, p0, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->protobufIndex:I

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    .line 420
    const/4 v1, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    return v0
.end method

.method private static getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 551
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    .line 552
    const/4 v1, 0x2

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 554
    return v0
.end method

.method private getEventAppExecutionExceptionSize(Ljava/lang/Throwable;I)I
    .locals 12
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "chainDepth"    # I

    .prologue
    const/4 v11, 0x1

    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v9

    add-int/lit8 v8, v9, 0x0

    .line 586
    .local v8, "size":I
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    .line 587
    .local v6, "message":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 588
    const/4 v9, 0x3

    invoke-static {v6}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v9

    add-int/2addr v8, v9

    .line 591
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v9, v0, v4

    .line 592
    invoke-static {v9, v11}, Lcom/crashlytics/android/SessionDataWriter;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    .line 593
    .local v3, "frameSize":I
    const/4 v9, 0x4

    invoke-static {v9}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    invoke-static {v3}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v3

    add-int/2addr v8, v9

    .line 591
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 599
    .end local v3    # "frameSize":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 600
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 601
    iget v9, p0, Lcom/crashlytics/android/SessionDataWriter;->maxChainedExceptionsDepth:I

    if-ge p2, v9, :cond_3

    .line 602
    add-int/lit8 v9, p2, 0x1

    invoke-direct {p0, v1, v9}, Lcom/crashlytics/android/SessionDataWriter;->getEventAppExecutionExceptionSize(Ljava/lang/Throwable;I)I

    move-result v2

    .line 604
    .local v2, "exceptionSize":I
    const/4 v9, 0x6

    invoke-static {v9}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    invoke-static {v2}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v2

    add-int/2addr v8, v9

    .line 619
    .end local v2    # "exceptionSize":I
    :cond_2
    :goto_1
    return v8

    .line 609
    :cond_3
    const/4 v7, 0x0

    .line 610
    .local v7, "overflowCount":I
    :goto_2
    if-eqz v1, :cond_4

    .line 611
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 612
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 615
    :cond_4
    const/4 v9, 0x7

    invoke-static {v9, v7}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_1
.end method

.method private static getEventAppExecutionSignalSize()I
    .locals 4

    .prologue
    .line 625
    const/4 v0, 0x1

    sget-object v1, Lcom/crashlytics/android/SessionDataWriter;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 626
    const/4 v1, 0x2

    sget-object v2, Lcom/crashlytics/android/SessionDataWriter;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 627
    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 629
    return v0
.end method

.method private getEventAppExecutionSize(Ljava/lang/Thread;Ljava/lang/Throwable;)I
    .locals 12
    .param p1, "exceptionThread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 523
    iget-object v7, p0, Lcom/crashlytics/android/SessionDataWriter;->exceptionStack:[Ljava/lang/StackTraceElement;

    const/4 v8, 0x4

    invoke-static {p1, v7, v8, v9}, Lcom/crashlytics/android/SessionDataWriter;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v6

    .line 524
    .local v6, "threadSize":I
    invoke-static {v9}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v7

    invoke-static {v6}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    add-int/lit8 v5, v7, 0x0

    .line 527
    .local v5, "size":I
    iget-object v7, p0, Lcom/crashlytics/android/SessionDataWriter;->threads:[Ljava/lang/Thread;

    array-length v3, v7

    .line 528
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 529
    iget-object v7, p0, Lcom/crashlytics/android/SessionDataWriter;->threads:[Ljava/lang/Thread;

    aget-object v8, v7, v2

    .line 530
    iget-object v7, p0, Lcom/crashlytics/android/SessionDataWriter;->stacks:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    invoke-static {v8, v7, v10, v10}, Lcom/crashlytics/android/SessionDataWriter;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v6

    .line 531
    invoke-static {v9}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v7

    invoke-static {v6}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    add-int/2addr v5, v7

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_0
    invoke-direct {p0, p2, v9}, Lcom/crashlytics/android/SessionDataWriter;->getEventAppExecutionExceptionSize(Ljava/lang/Throwable;I)I

    move-result v1

    .line 536
    .local v1, "exceptionSize":I
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v7

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    add-int/2addr v5, v7

    .line 539
    invoke-static {}, Lcom/crashlytics/android/SessionDataWriter;->getEventAppExecutionSignalSize()I

    move-result v4

    .line 540
    .local v4, "signalSize":I
    invoke-static {v11}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v7

    invoke-static {v4}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    add-int/2addr v5, v7

    .line 543
    invoke-direct {p0}, Lcom/crashlytics/android/SessionDataWriter;->getBinaryImageSize()I

    move-result v0

    .line 544
    .local v0, "binaryImageSize":I
    invoke-static {v11}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v7

    invoke-static {v0}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/2addr v7, v5

    .line 547
    return v7
.end method

.method static getEventDeviceSize$45a61cda(IIJJ)I
    .locals 2
    .param p0, "batterVelocity"    # I
    .param p1, "orientation"    # I
    .param p2, "heapAllocatedSize"    # J
    .param p4, "diskUsed"    # J

    .prologue
    .line 562
    invoke-static {}, Lcom/crashlytics/android/CodedOutputStream;->computeFloatSize$255e745()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 563
    invoke-static {p0}, Lcom/crashlytics/android/CodedOutputStream;->computeSInt32Size$255f288(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 564
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBoolSize$2563259(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 565
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 566
    const/4 v1, 0x5

    invoke-static {v1, p2, p3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    const/4 v1, 0x6

    invoke-static {v1, p4, p5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    return v0
.end method

.method static getEventLogSize(Lcom/crashlytics/android/ByteString;)I
    .locals 1
    .param p0, "log"    # Lcom/crashlytics/android/ByteString;

    .prologue
    .line 576
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    return v0
.end method

.method private static getFrameSize(Ljava/lang/StackTraceElement;Z)I
    .locals 7
    .param p0, "element"    # Ljava/lang/StackTraceElement;
    .param p1, "isCrashedThread"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 635
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 637
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v6, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/lit8 v0, v3, 0x0

    .line 642
    .local v0, "size":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 645
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 646
    const/4 v3, 0x3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 650
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_1

    .line 652
    const/4 v3, 0x4

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 654
    :cond_1
    const/4 v3, 0x5

    if-eqz p1, :cond_3

    :goto_1
    invoke-static {v3, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    .line 656
    return v1

    .line 639
    .end local v0    # "size":I
    :cond_2
    const-wide/16 v4, 0x0

    invoke-static {v6, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/lit8 v0, v3, 0x0

    .restart local v0    # "size":I
    goto :goto_0

    :cond_3
    move v1, v2

    .line 654
    goto :goto_1
.end method

.method static getSessionOSSize$3c0313b2(Lcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;)I
    .locals 3
    .param p0, "release"    # Lcom/crashlytics/android/ByteString;
    .param p1, "codeName"    # Lcom/crashlytics/android/ByteString;

    .prologue
    const/4 v2, 0x3

    .line 410
    const/4 v0, 0x1

    invoke-static {v0, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 411
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 412
    invoke-static {v2, p1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 413
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBoolSize$2563259(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 415
    return v0
.end method

.method private static getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 7
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "stackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p2, "importance"    # I
    .param p3, "isCrashedThread"    # Z

    .prologue
    .line 661
    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v5

    .line 662
    const/4 v6, 0x2

    invoke-static {v6, p2}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v6

    add-int v4, v5, v6

    .line 664
    .local v4, "size":I
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 665
    invoke-static {v5, p3}, Lcom/crashlytics/android/SessionDataWriter;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v1

    .line 666
    .local v1, "frameSize":I
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 670
    .end local v1    # "frameSize":I
    :cond_0
    return v4
.end method

.method static stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 674
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method public static writeBeginSession(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "generator"    # Ljava/lang/String;
    .param p3, "startedAtSeconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-static {p2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 59
    const/4 v0, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 60
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3, p4}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 61
    return-void
.end method

.method private static writeFrame(Lcom/crashlytics/android/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V
    .locals 6
    .param p0, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .param p1, "fieldIndex"    # I
    .param p2, "element"    # Ljava/lang/StackTraceElement;
    .param p3, "isCrashedThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 329
    invoke-virtual {p0, p1, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 330
    invoke-static {p2, p3}, Lcom/crashlytics/android/SessionDataWriter;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 332
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v4, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 340
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 343
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 344
    const/4 v2, 0x3

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 349
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    if-lez v2, :cond_1

    .line 350
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 356
    :cond_1
    const/4 v2, 0x5

    if-eqz p3, :cond_3

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 357
    return-void

    .line 337
    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 356
    goto :goto_1
.end method

.method public static writeSessionDevice(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .param p1, "clsDeviceId"    # Ljava/lang/String;
    .param p2, "arch"    # I
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "availableProcessors"    # I
    .param p5, "totalRam"    # J
    .param p7, "diskSpace"    # J
    .param p9, "isEmulator"    # Z
    .param p11, "state"    # I
    .param p12, "manufacturer"    # Ljava/lang/String;
    .param p13, "modelClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/CodedOutputStream;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IJJZ",
            "Ljava/util/Map",
            "<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    .local p10, "ids":Ljava/util/Map;, "Ljava/util/Map<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    .line 108
    .local v2, "clsDeviceIDBytes":Lcom/crashlytics/android/ByteString;
    invoke-static/range {p3 .. p3}, Lcom/crashlytics/android/SessionDataWriter;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v6

    .line 109
    .local v6, "modelBytes":Lcom/crashlytics/android/ByteString;
    invoke-static/range {p13 .. p13}, Lcom/crashlytics/android/SessionDataWriter;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v7

    .line 110
    .local v7, "modelClassBytes":Lcom/crashlytics/android/ByteString;
    invoke-static/range {p12 .. p12}, Lcom/crashlytics/android/SessionDataWriter;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v5

    .line 112
    .local v5, "manufacturerBytes":Lcom/crashlytics/android/ByteString;
    const/16 v8, 0x9

    const/4 v9, 0x2

    invoke-virtual {p0, v8, v9}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1432
    const/4 v8, 0x1

    invoke-static {v8, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v8

    add-int/lit8 v8, v8, 0x0

    .line 1433
    const/4 v9, 0x3

    invoke-static {v9, p2}, Lcom/crashlytics/android/CodedOutputStream;->computeEnumSize(II)I

    move-result v9

    add-int/2addr v9, v8

    .line 1434
    if-nez v6, :cond_0

    const/4 v8, 0x0

    :goto_0
    add-int/2addr v8, v9

    .line 1435
    const/4 v9, 0x5

    move/from16 v0, p4

    invoke-static {v9, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v9

    add-int/2addr v8, v9

    .line 1436
    const/4 v9, 0x6

    move-wide/from16 v0, p5

    invoke-static {v9, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v9

    add-int/2addr v8, v9

    .line 1437
    const/4 v9, 0x7

    move-wide/from16 v0, p7

    invoke-static {v9, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v9

    add-int/2addr v8, v9

    .line 1438
    const/16 v9, 0xa

    invoke-static {v9}, Lcom/crashlytics/android/CodedOutputStream;->computeBoolSize$2563259(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 1439
    if-eqz p10, :cond_1

    .line 1440
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v10, v8

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1441
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/crashlytics/android/SessionDataWriter;->getDeviceIdentifierSize(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I

    move-result v8

    .line 1442
    const/16 v9, 0xb

    invoke-static {v9}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v9

    invoke-static {v8}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v12

    add-int/2addr v9, v12

    add-int/2addr v8, v9

    add-int/2addr v8, v10

    move v10, v8

    .line 1444
    goto :goto_1

    .line 1434
    :cond_0
    const/4 v8, 0x4

    invoke-static {v8, v6}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v8

    goto :goto_0

    :cond_1
    move v10, v8

    .line 1446
    :cond_2
    const/16 v8, 0xc

    move/from16 v0, p11

    invoke-static {v8, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v8

    add-int v9, v10, v8

    .line 1447
    if-nez v5, :cond_3

    const/4 v8, 0x0

    :goto_2
    add-int/2addr v9, v8

    .line 1448
    if-nez v7, :cond_4

    const/4 v8, 0x0

    :goto_3
    add-int/2addr v8, v9

    .line 114
    invoke-virtual {p0, v8}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 118
    const/4 v8, 0x1

    invoke-virtual {p0, v8, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 120
    const/4 v8, 0x3

    invoke-virtual {p0, v8, p2}, Lcom/crashlytics/android/CodedOutputStream;->writeEnum(II)V

    .line 121
    const/4 v8, 0x4

    invoke-virtual {p0, v8, v6}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 122
    const/4 v8, 0x5

    move/from16 v0, p4

    invoke-virtual {p0, v8, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 123
    const/4 v8, 0x6

    move-wide/from16 v0, p5

    invoke-virtual {p0, v8, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 124
    const/4 v8, 0x7

    move-wide/from16 v0, p7

    invoke-virtual {p0, v8, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 125
    const/16 v8, 0xa

    move/from16 v0, p9

    invoke-virtual {p0, v8, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V

    .line 127
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 128
    .local v4, "id":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    const/16 v8, 0xb

    const/4 v9, 0x2

    invoke-virtual {p0, v8, v9}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 129
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/crashlytics/android/SessionDataWriter;->getDeviceIdentifierSize(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 131
    const/4 v9, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    iget v8, v8, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->protobufIndex:I

    invoke-virtual {p0, v9, v8}, Lcom/crashlytics/android/CodedOutputStream;->writeEnum(II)V

    .line 132
    const/4 v9, 0x2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v8

    invoke-virtual {p0, v9, v8}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    goto :goto_4

    .line 1447
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;>;"
    :cond_3
    const/16 v8, 0xd

    invoke-static {v8, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v8

    goto :goto_2

    .line 1448
    :cond_4
    const/16 v8, 0xe

    invoke-static {v8, v7}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v8

    goto :goto_3

    .line 134
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    const/16 v8, 0xc

    move/from16 v0, p11

    invoke-virtual {p0, v8, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 136
    if-eqz v5, :cond_6

    .line 137
    const/16 v8, 0xd

    invoke-virtual {p0, v8, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 139
    :cond_6
    if-eqz v7, :cond_7

    .line 140
    const/16 v8, 0xe

    invoke-virtual {p0, v8, v7}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 142
    :cond_7
    return-void
.end method

.method static writeSessionEventAppCustomAttributes(Lcom/crashlytics/android/CodedOutputStream;Ljava/util/Map;)V
    .locals 6
    .param p0, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/CodedOutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x2

    .line 268
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v5, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 270
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/crashlytics/android/SessionDataWriter;->getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 273
    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    goto :goto_0

    .line 277
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private static writeThread(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 8
    .param p0, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "stackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p3, "importance"    # I
    .param p4, "isCrashedThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 316
    invoke-virtual {p0, v6, v7}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 317
    invoke-static {p1, p2, p3, p4}, Lcom/crashlytics/android/SessionDataWriter;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v3

    .line 318
    .local v3, "s":I
    invoke-virtual {p0, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 319
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 320
    invoke-virtual {p0, v7, p3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 322
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, p2

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 323
    .local v4, "stackTraceElement":Ljava/lang/StackTraceElement;
    const/4 v5, 0x3

    invoke-static {p0, v5, v4, p4}, Lcom/crashlytics/android/SessionDataWriter;->writeFrame(Lcom/crashlytics/android/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method


# virtual methods
.method final getEventAppSize(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)I
    .locals 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 496
    .local p4, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/SessionDataWriter;->getEventAppExecutionSize(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v2

    .line 497
    .local v2, "executionSize":I
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    invoke-static {v2}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    add-int/lit8 v4, v5, 0x0

    .line 500
    .local v4, "size":I
    if-eqz p4, :cond_0

    .line 501
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 502
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/crashlytics/android/SessionDataWriter;->getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 504
    .local v1, "entrySize":I
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    .line 506
    goto :goto_0

    .line 510
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entrySize":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v5, p0, Lcom/crashlytics/android/SessionDataWriter;->runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v5, :cond_1

    .line 511
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/crashlytics/android/SessionDataWriter;->runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-static {v5}, Lcom/crashlytics/android/CodedOutputStream;->computeBoolSize$2563259(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 515
    :cond_1
    const/4 v5, 0x4

    invoke-static {v5, p3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v5, v4

    .line 517
    return v5
.end method

.method final getSessionAppOrgSize()I
    .locals 2

    .prologue
    .line 401
    const/4 v0, 0x1

    new-instance v1, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v1}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    iget-object v1, p0, Lcom/crashlytics/android/SessionDataWriter;->context:Landroid/content/Context;

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/ApiKey;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 404
    return v0
.end method

.method final writeSessionEventAppExecution(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 12
    .param p1, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .param p2, "exceptionThread"    # Ljava/lang/Thread;
    .param p3, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 234
    invoke-direct {p0, p2, p3}, Lcom/crashlytics/android/SessionDataWriter;->getEventAppExecutionSize(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 236
    iget-object v3, p0, Lcom/crashlytics/android/SessionDataWriter;->exceptionStack:[Ljava/lang/StackTraceElement;

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {p1, p2, v3, v4, v5}, Lcom/crashlytics/android/SessionDataWriter;->writeThread(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 240
    iget-object v3, p0, Lcom/crashlytics/android/SessionDataWriter;->threads:[Ljava/lang/Thread;

    array-length v1, v3

    .line 241
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 242
    iget-object v3, p0, Lcom/crashlytics/android/SessionDataWriter;->threads:[Ljava/lang/Thread;

    aget-object v2, v3, v0

    .line 243
    .local v2, "thread":Ljava/lang/Thread;
    iget-object v3, p0, Lcom/crashlytics/android/SessionDataWriter;->stacks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Lcom/crashlytics/android/SessionDataWriter;->writeThread(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    const/4 v4, 0x1

    const/4 v3, 0x2

    move-object v5, p1

    move-object v6, p0

    .line 2282
    .end local p3    # "ex":Ljava/lang/Throwable;
    :goto_1
    const/4 v7, 0x2

    invoke-virtual {v5, v3, v7}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 2283
    const/4 v3, 0x1

    invoke-direct {v6, p3, v3}, Lcom/crashlytics/android/SessionDataWriter;->getEventAppExecutionExceptionSize(Ljava/lang/Throwable;I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 2285
    const/4 v3, 0x1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 2286
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    .line 2287
    if-eqz v3, :cond_1

    .line 2288
    const/4 v7, 0x3

    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 2291
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v8, v7

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_2

    aget-object v9, v7, v3

    .line 2292
    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-static {v5, v10, v9, v11}, Lcom/crashlytics/android/SessionDataWriter;->writeFrame(Lcom/crashlytics/android/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V

    .line 2291
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2295
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    .line 2296
    if-eqz p3, :cond_5

    .line 2297
    iget v3, v6, Lcom/crashlytics/android/SessionDataWriter;->maxChainedExceptionsDepth:I

    if-ge v4, v3, :cond_3

    .line 2298
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x6

    goto :goto_1

    .line 2302
    :cond_3
    const/4 v3, 0x0

    .line 2303
    :goto_3
    if-eqz p3, :cond_4

    .line 2304
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    .line 2305
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2307
    :cond_4
    const/4 v4, 0x7

    invoke-virtual {v5, v4, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 248
    :cond_5
    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 249
    invoke-static {}, Lcom/crashlytics/android/SessionDataWriter;->getEventAppExecutionSignalSize()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 250
    const/4 v3, 0x1

    sget-object v4, Lcom/crashlytics/android/SessionDataWriter;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;

    invoke-virtual {p1, v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 251
    const/4 v3, 0x2

    sget-object v4, Lcom/crashlytics/android/SessionDataWriter;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;

    invoke-virtual {p1, v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 252
    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 254
    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 255
    invoke-direct {p0}, Lcom/crashlytics/android/SessionDataWriter;->getBinaryImageSize()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 256
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 257
    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 258
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/crashlytics/android/SessionDataWriter;->packageNameBytes:Lcom/crashlytics/android/ByteString;

    invoke-virtual {p1, v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 259
    iget-object v3, p0, Lcom/crashlytics/android/SessionDataWriter;->optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

    if-eqz v3, :cond_6

    .line 260
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/crashlytics/android/SessionDataWriter;->optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

    invoke-virtual {p1, v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 262
    :cond_6
    return-void
.end method
