.class Lcom/nuance/swypeconnect/ac/ACScannerTwitter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/util/HttpUtils$FriendListCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

.field final synthetic val$bucket:Lcom/nuance/connect/api/DLMConnector$ScannerBucket;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerTwitter;Lcom/nuance/connect/api/DLMConnector$ScannerBucket;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$2;->this$0:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$2;->val$bucket:Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public friend(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    # getter for: Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "friend name="

    const-string/jumbo v2, ", screenName="

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$2;->val$bucket:Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$2;->val$bucket:Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    invoke-interface {v0, p2}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    return-void
.end method
