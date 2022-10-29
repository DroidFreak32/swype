.class final Lcom/crashlytics/android/NativeCrashWriter$EventMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventMessage"
.end annotation


# instance fields
.field private final crashType:Ljava/lang/String;

.field private final time:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/crashlytics/android/NativeCrashWriter$ApplicationMessage;Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;)V
    .registers 9
    .param p1, "time"    # J
    .param p3, "crashType"    # Ljava/lang/String;
    .param p4, "applicationMessage"    # Lcom/crashlytics/android/NativeCrashWriter$ApplicationMessage;
    .param p5, "device"    # Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;

    .prologue
    .line 155
    const/16 v0, 0xa

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p5, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 156
    iput-wide p1, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->time:J

    .line 157
    iput-object p3, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->crashType:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .registers 7

    .prologue
    .line 162
    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->time:J

    invoke-static {v2, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    .line 163
    .local v0, "timeSize":I
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->crashType:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    .line 165
    .local v1, "typeSize":I
    add-int v2, v0, v1

    return v2
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
    .line 170
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->time:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 171
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->crashType:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 172
    return-void
.end method
