.class Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/DLMConnector$ScannerBucket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DLMConnectorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParentScannerBucket"
.end annotation


# instance fields
.field private final baseFileName:Ljava/lang/String;

.field private final childScanners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/DLMConnector$ScannerBucket;",
            ">;"
        }
    .end annotation
.end field

.field private final coreId:I

.field private final data:Ljava/lang/String;

.field private outputFile:Ljava/io/File;

.field private final outputFolder:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field private final sentenceBased:Z

.field final synthetic this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

.field private final wordQuality:I


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal;Ljava/lang/String;IIZ)V
    .locals 2

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->childScanners:Ljava/util/Set;

    iput-object p2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->data:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->coreId:I

    iput p4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->wordQuality:I

    iput-boolean p5, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->sentenceBased:Z

    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$300(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppFilesFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputFolder:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scanner-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->baseFileName:Ljava/lang/String;

    return-void
.end method

.method private createOutputFile()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->baseFileName:Ljava/lang/String;

    const-string v1, ".bucket"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputFolder:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputFile:Ljava/io/File;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "Could not create an output stream: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputFile:Ljava/io/File;

    iput-object v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ParentScannerBucket.close(), children count: "

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->childScanners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->data:Ljava/lang/String;

    iget v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->coreId:I

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->wordQuality:I

    iget-boolean v5, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->sentenceBased:Z

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/DLMConnectorInternal;->recordDLMScannerSet(Ljava/lang/String;ILjava/lang/String;IZ)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    iget v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->coreId:I

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDLMCore(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputFile:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "Failed to close scan: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method done(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->childScanners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->childScanners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->close()V

    :cond_0
    return-void
.end method

.method getChildBucket()Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    .locals 2

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->childScanners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method isSame(Ljava/lang/String;IIZ)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->data:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->data:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->coreId:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->wordQuality:I

    if-ne v0, p3, :cond_2

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->sentenceBased:Z

    if-ne v0, p4, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized scan(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "scan buffer="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->createOutputFile()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    const-string v1, "\n"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string v2, "Failed to log scan: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
