.class final Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 184
    const/4 v0, 0x5

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 185
    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 190
    invoke-static {}, Lcom/crashlytics/android/CodedOutputStream;->computeFloatSize$255e745()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 191
    invoke-static {}, Lcom/crashlytics/android/CodedOutputStream;->computeInt32Size$255f288()I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBoolSize$2563259(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    const/4 v1, 0x5

    invoke-static {v1, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    const/4 v1, 0x6

    invoke-static {v1, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    return v0
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
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeFloat$255e752(F)V

    .line 1168
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1169
    invoke-virtual {p1, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeInt32NoTag(I)V

    .line 203
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V

    .line 204
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 205
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 206
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 207
    return-void
.end method
