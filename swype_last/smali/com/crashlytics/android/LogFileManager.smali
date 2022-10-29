.class final Lcom/crashlytics/android/LogFileManager;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final filesDir:Ljava/io/File;

.field logFile:Lio/fabric/sdk/android/services/common/QueueFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filesDir"    # Ljava/io/File;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/crashlytics/android/LogFileManager;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/crashlytics/android/LogFileManager;->filesDir:Ljava/io/File;

    .line 31
    return-void
.end method

.method static getByteStringForLog(Lio/fabric/sdk/android/services/common/QueueFile;)Lcom/crashlytics/android/ByteString;
    .registers 8
    .param p0, "logFile"    # Lio/fabric/sdk/android/services/common/QueueFile;

    .prologue
    const/4 v6, 0x0

    .line 150
    if-nez p0, :cond_5

    .line 151
    const/4 v3, 0x0

    .line 178
    :goto_4
    return-object v3

    .line 157
    :cond_5
    const/4 v3, 0x1

    new-array v2, v3, [I

    aput v6, v2, v6

    .line 159
    .local v2, "offsetHolder":[I
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v3

    new-array v1, v3, [B

    .line 162
    .local v1, "logBytes":[B
    :try_start_10
    new-instance v3, Lcom/crashlytics/android/LogFileManager$1;

    invoke-direct {v3, v1, v2}, Lcom/crashlytics/android/LogFileManager$1;-><init>([B[I)V

    invoke-virtual {p0, v3}, Lio/fabric/sdk/android/services/common/QueueFile;->forEach(Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_1f

    .line 178
    :goto_18
    aget v3, v2, v6

    invoke-static {v1, v3}, Lcom/crashlytics/android/ByteString;->copyFrom$49030a4c([BI)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    goto :goto_4

    .line 173
    :catch_1f
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string/jumbo v4, "Fabric"

    const-string/jumbo v5, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method
