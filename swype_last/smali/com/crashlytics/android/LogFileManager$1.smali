.class final Lcom/crashlytics/android/LogFileManager$1;
.super Ljava/lang/Object;
.source "LogFileManager.java"

# interfaces
.implements Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/LogFileManager;->getByteStringForLog(Lio/fabric/sdk/android/services/common/QueueFile;)Lcom/crashlytics/android/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logBytes:[B

.field final synthetic val$offsetHolder:[I


# direct methods
.method constructor <init>([B[I)V
    .registers 3

    .prologue
    .line 162
    iput-object p1, p0, Lcom/crashlytics/android/LogFileManager$1;->val$logBytes:[B

    iput-object p2, p0, Lcom/crashlytics/android/LogFileManager$1;->val$offsetHolder:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Ljava/io/InputStream;I)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/LogFileManager$1;->val$logBytes:[B

    iget-object v1, p0, Lcom/crashlytics/android/LogFileManager$1;->val$offsetHolder:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 167
    iget-object v0, p0, Lcom/crashlytics/android/LogFileManager$1;->val$offsetHolder:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p2

    aput v2, v0, v1
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    .line 169
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 170
    return-void

    .line 169
    :catchall_16
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
