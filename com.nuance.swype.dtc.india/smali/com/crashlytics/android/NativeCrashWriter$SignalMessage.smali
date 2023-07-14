.class final Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SignalMessage"
.end annotation


# instance fields
.field private final sigAddr:J

.field private final sigCode:Ljava/lang/String;

.field private final sigName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/models/SignalData;)V
    .locals 2
    .param p1, "signalData"    # Lcom/crashlytics/android/internal/models/SignalData;

    .prologue
    .line 316
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 317
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/SignalData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigName:Ljava/lang/String;

    .line 318
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/SignalData;->code:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigCode:Ljava/lang/String;

    .line 319
    iget-wide v0, p1, Lcom/crashlytics/android/internal/models/SignalData;->faultAddress:J

    iput-wide v0, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigAddr:J

    .line 320
    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .locals 4

    .prologue
    .line 324
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigName:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    .line 325
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigAddr:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    return v0
.end method

.method public final writeProperties(Lcom/crashlytics/android/CodedOutputStream;)V
    .locals 4
    .param p1, "cos"    # Lcom/crashlytics/android/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigName:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 333
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 334
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigAddr:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 335
    return-void
.end method
