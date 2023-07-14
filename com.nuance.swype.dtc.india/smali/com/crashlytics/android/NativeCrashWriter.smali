.class final Lcom/crashlytics/android/NativeCrashWriter;
.super Ljava/lang/Object;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;,
        Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;,
        Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;,
        Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;,
        Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;,
        Lcom/crashlytics/android/NativeCrashWriter$ExecutionMessage;,
        Lcom/crashlytics/android/NativeCrashWriter$ApplicationMessage;,
        Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;,
        Lcom/crashlytics/android/NativeCrashWriter$EventMessage;,
        Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;,
        Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIGNAL:Lcom/crashlytics/android/internal/models/SignalData;

.field private static final EMPTY_BINARY_IMAGE_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;

.field private static final EMPTY_CHILDREN:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

.field private static final EMPTY_CUSTOM_ATTRIBUTE_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;

.field private static final EMPTY_FRAME_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;

.field private static final EMPTY_THREAD_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/crashlytics/android/internal/models/SignalData;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/models/SignalData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crashlytics/android/NativeCrashWriter;->DEFAULT_SIGNAL:Lcom/crashlytics/android/internal/models/SignalData;

    .line 24
    new-array v0, v3, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    sput-object v0, Lcom/crashlytics/android/NativeCrashWriter;->EMPTY_CHILDREN:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    .line 25
    new-array v0, v3, [Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;

    sput-object v0, Lcom/crashlytics/android/NativeCrashWriter;->EMPTY_THREAD_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;

    .line 26
    new-array v0, v3, [Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;

    sput-object v0, Lcom/crashlytics/android/NativeCrashWriter;->EMPTY_FRAME_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;

    .line 27
    new-array v0, v3, [Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;

    sput-object v0, Lcom/crashlytics/android/NativeCrashWriter;->EMPTY_BINARY_IMAGE_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;

    .line 29
    new-array v0, v3, [Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;

    sput-object v0, Lcom/crashlytics/android/NativeCrashWriter;->EMPTY_CUSTOM_ATTRIBUTE_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;

    return-void
.end method

.method private static createFramesMessage([Lcom/crashlytics/android/internal/models/ThreadData$FrameData;)Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;
    .locals 4
    .param p0, "frames"    # [Lcom/crashlytics/android/internal/models/ThreadData$FrameData;

    .prologue
    .line 451
    if-eqz p0, :cond_0

    array-length v2, p0

    new-array v1, v2, [Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;

    .line 453
    .local v1, "frameMessages":[Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;
    :goto_0
    const/4 v0, 0x0

    .local v0, "frameIdx":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 454
    new-instance v2, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;-><init>(Lcom/crashlytics/android/internal/models/ThreadData$FrameData;)V

    aput-object v2, v1, v0

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 451
    .end local v0    # "frameIdx":I
    .end local v1    # "frameMessages":[Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;
    :cond_0
    sget-object v1, Lcom/crashlytics/android/NativeCrashWriter;->EMPTY_FRAME_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;

    goto :goto_0

    .line 456
    .restart local v0    # "frameIdx":I
    .restart local v1    # "frameMessages":[Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;
    :cond_1
    new-instance v2, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v2, v1}, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    return-object v2
.end method

.method public static writeNativeCrash(Lcom/crashlytics/android/internal/models/SessionEventData;Lcom/crashlytics/android/CodedOutputStream;)V
    .locals 8
    .param p0, "crashEventData"    # Lcom/crashlytics/android/internal/models/SessionEventData;
    .param p1, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 488
    .line 1418
    iget-object v0, p0, Lcom/crashlytics/android/internal/models/SessionEventData;->signal:Lcom/crashlytics/android/internal/models/SignalData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/internal/models/SessionEventData;->signal:Lcom/crashlytics/android/internal/models/SignalData;

    .line 1420
    :goto_0
    new-instance v3, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;

    invoke-direct {v3, v0}, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;-><init>(Lcom/crashlytics/android/internal/models/SignalData;)V

    .line 1422
    iget-object v4, p0, Lcom/crashlytics/android/internal/models/SessionEventData;->threads:[Lcom/crashlytics/android/internal/models/ThreadData;

    .line 1440
    if-eqz v4, :cond_1

    array-length v0, v4

    new-array v0, v0, [Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;

    :goto_1
    move v1, v2

    .line 1442
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 1443
    aget-object v5, v4, v1

    .line 1444
    new-instance v6, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;

    iget-object v7, v5, Lcom/crashlytics/android/internal/models/ThreadData;->frames:[Lcom/crashlytics/android/internal/models/ThreadData$FrameData;

    invoke-static {v7}, Lcom/crashlytics/android/NativeCrashWriter;->createFramesMessage([Lcom/crashlytics/android/internal/models/ThreadData$FrameData;)Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;-><init>(Lcom/crashlytics/android/internal/models/ThreadData;Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;)V

    aput-object v6, v0, v1

    .line 1442
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1418
    :cond_0
    sget-object v0, Lcom/crashlytics/android/NativeCrashWriter;->DEFAULT_SIGNAL:Lcom/crashlytics/android/internal/models/SignalData;

    goto :goto_0

    .line 1440
    :cond_1
    sget-object v0, Lcom/crashlytics/android/NativeCrashWriter;->EMPTY_THREAD_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;

    goto :goto_1

    .line 1447
    :cond_2
    new-instance v4, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v4, v0}, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 1423
    iget-object v5, p0, Lcom/crashlytics/android/internal/models/SessionEventData;->binaryImages:[Lcom/crashlytics/android/internal/models/BinaryImageData;

    .line 1460
    if-eqz v5, :cond_3

    array-length v0, v5

    new-array v0, v0, [Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;

    :goto_3
    move v1, v2

    .line 1462
    :goto_4
    array-length v6, v0

    if-ge v1, v6, :cond_4

    .line 1463
    new-instance v6, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;

    aget-object v7, v5, v1

    invoke-direct {v6, v7}, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;-><init>(Lcom/crashlytics/android/internal/models/BinaryImageData;)V

    aput-object v6, v0, v1

    .line 1462
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1460
    :cond_3
    sget-object v0, Lcom/crashlytics/android/NativeCrashWriter;->EMPTY_BINARY_IMAGE_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;

    goto :goto_3

    .line 1465
    :cond_4
    new-instance v1, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 1426
    new-instance v6, Lcom/crashlytics/android/NativeCrashWriter$ExecutionMessage;

    invoke-direct {v6, v3, v4, v1}, Lcom/crashlytics/android/NativeCrashWriter$ExecutionMessage;-><init>(Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;)V

    .line 1428
    iget-object v1, p0, Lcom/crashlytics/android/internal/models/SessionEventData;->customAttributes:[Lcom/crashlytics/android/internal/models/CustomAttributeData;

    .line 1470
    if-eqz v1, :cond_5

    array-length v0, v1

    new-array v0, v0, [Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;

    .line 1473
    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_6

    .line 1474
    new-instance v3, Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;-><init>(Lcom/crashlytics/android/internal/models/CustomAttributeData;)V

    aput-object v3, v0, v2

    .line 1473
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1470
    :cond_5
    sget-object v0, Lcom/crashlytics/android/NativeCrashWriter;->EMPTY_CUSTOM_ATTRIBUTE_MESSAGES:[Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;

    goto :goto_5

    .line 1476
    :cond_6
    new-instance v1, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 1431
    new-instance v5, Lcom/crashlytics/android/NativeCrashWriter$ApplicationMessage;

    invoke-direct {v5, v6, v1}, Lcom/crashlytics/android/NativeCrashWriter$ApplicationMessage;-><init>(Lcom/crashlytics/android/NativeCrashWriter$ExecutionMessage;Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;)V

    .line 1433
    new-instance v6, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;

    invoke-direct {v6}, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;-><init>()V

    .line 1435
    new-instance v1, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;

    iget-wide v2, p0, Lcom/crashlytics/android/internal/models/SessionEventData;->timestamp:J

    const-string/jumbo v4, "ndk-crash"

    invoke-direct/range {v1 .. v6}, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;-><init>(JLjava/lang/String;Lcom/crashlytics/android/NativeCrashWriter$ApplicationMessage;Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;)V

    .line 489
    invoke-virtual {v1, p1}, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->write(Lcom/crashlytics/android/CodedOutputStream;)V

    .line 490
    return-void
.end method
