.class Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/DLMConnector$ScannerBucket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DLMConnectorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
    .registers 8

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->childScanners:Ljava/util/Set;

    iput-object p2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->data:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->coreId:I

    iput p4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->wordQuality:I

    iput-boolean p5, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->sentenceBased:Z

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {p1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$100(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppFilesFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputFolder:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scanner-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

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
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->baseFileName:Ljava/lang/String;

    const-string/jumbo v1, ".bucket"

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
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "Could not create an output stream: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputFile:Ljava/io/File;

    iput-object v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    goto :goto_22
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "ParentScannerBucket.close(), children count: "

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->childScanners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_59

    if-eqz v0, :cond_3f

    :try_start_1b
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_47
    .catchall {:try_start_1b .. :try_end_25} :catchall_59

    :goto_25
    :try_start_25
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

    :cond_3f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputFile:Ljava/io/File;
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_59

    monitor-exit p0

    return-void

    :catch_47
    move-exception v0

    :try_start_48
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "Failed to close scan: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_59

    goto :goto_25

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method done(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->childScanners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->childScanners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->close()V

    :cond_10
    return-void
.end method

.method getChildBucket()Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    .registers 3

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->childScanners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method isSame(Ljava/lang/String;IIZ)Z
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->data:Ljava/lang/String;

    if-nez v0, :cond_6

    if-eqz p1, :cond_14

    :cond_6
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->data:Ljava/lang/String;

    if-eqz v0, :cond_22

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_14
    iget v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->coreId:I

    if-ne v0, p2, :cond_22

    iget v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->wordQuality:I

    if-ne v0, p3, :cond_22

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->sentenceBased:Z

    if-ne v0, p4, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public declared-synchronized scan(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "scan buffer="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->createOutputFile()V

    :cond_18
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_4b

    if-eqz v0, :cond_37

    :try_start_1c
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->outputStream:Ljava/io/OutputStream;

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_37} :catch_39
    .catchall {:try_start_1c .. :try_end_37} :catchall_4b

    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    :catch_39
    move-exception v0

    :try_start_3a
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "Failed to log scan: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4b

    goto :goto_37

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
