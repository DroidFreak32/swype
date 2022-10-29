.class final Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BinaryImageMessage"
.end annotation


# instance fields
.field private final baseAddr:J

.field private final filePath:Ljava/lang/String;

.field private final imageSize:J

.field private final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/models/BinaryImageData;)V
    .registers 4
    .param p1, "binaryImageData"    # Lcom/crashlytics/android/internal/models/BinaryImageData;

    .prologue
    .line 351
    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 352
    iget-wide v0, p1, Lcom/crashlytics/android/internal/models/BinaryImageData;->baseAddress:J

    iput-wide v0, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->baseAddr:J

    .line 353
    iget-wide v0, p1, Lcom/crashlytics/android/internal/models/BinaryImageData;->size:J

    iput-wide v0, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->imageSize:J

    .line 354
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/BinaryImageData;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->filePath:Ljava/lang/String;

    .line 355
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/BinaryImageData;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->uuid:Ljava/lang/String;

    .line 356
    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .registers 9

    .prologue
    .line 360
    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->baseAddr:J

    invoke-static {v4, v6, v7}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    .line 361
    .local v0, "addrSize":I
    const/4 v4, 0x2

    iget-wide v6, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->imageSize:J

    invoke-static {v4, v6, v7}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    .line 362
    .local v1, "imgSize":I
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->filePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v2

    .line 364
    .local v2, "pathSize":I
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->uuid:Ljava/lang/String;

    invoke-static {v5}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v3

    .line 367
    .local v3, "uuidSize":I
    add-int v4, v2, v0

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    return v4
.end method

.method public final writeProperties(Lcom/crashlytics/android/CodedOutputStream;)V
    .registers 6
    .param p1, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->baseAddr:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 373
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->imageSize:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 374
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 375
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->uuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 376
    return-void
.end method
