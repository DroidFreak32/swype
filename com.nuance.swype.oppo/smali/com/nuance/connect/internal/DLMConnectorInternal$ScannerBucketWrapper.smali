.class Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/DLMConnector$ScannerBucket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DLMConnectorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScannerBucketWrapper"
.end annotation


# instance fields
.field private final bucket:Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;

.field private done:Z


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;->done:Z

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;->bucket:Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;->done:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;->bucket:Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;

    invoke-virtual {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->done(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V

    return-void
.end method

.method public scan(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScannerBucketWrapper;->bucket:Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/DLMConnectorInternal$ParentScannerBucket;->scan(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
