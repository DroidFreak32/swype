.class public Lcom/nuance/connect/api/DLMConnector$ScannerBucketSet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/DLMConnector$ScannerBucket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/DLMConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScannerBucketSet"
.end annotation


# instance fields
.field private buckets:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nuance/connect/api/DLMConnector$ScannerBucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/api/DLMConnector$ScannerBucketSet;->buckets:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addBucket(Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/api/DLMConnector$ScannerBucketSet;->buckets:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/api/DLMConnector$ScannerBucketSet;->buckets:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    invoke-interface {v0}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scan(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/api/DLMConnector$ScannerBucketSet;->buckets:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
