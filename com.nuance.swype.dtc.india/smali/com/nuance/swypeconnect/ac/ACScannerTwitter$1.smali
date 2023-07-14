.class Lcom/nuance/swypeconnect/ac/ACScannerTwitter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/util/HttpUtils$TimelineCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

.field final synthetic val$bucket:Lcom/nuance/connect/api/DLMConnector$ScannerBucket;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerTwitter;Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$1;->this$0:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$1;->val$bucket:Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saveSinceId(J)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$1;->this$0:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string/jumbo v1, "SCANNER_TWITTER_LAST_SCANNED_ID"

    invoke-interface {v0, v1, p1, p2}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    return-void
.end method

.method public tweet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$1;->val$bucket:Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    invoke-interface {v0, p3}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    return-void
.end method
