.class Lcom/nuance/swypeconnect/ac/ACScannerService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACScannerService;

.field final synthetic val$scanner:Lcom/nuance/swypeconnect/ac/ACScanner;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Lcom/nuance/swypeconnect/ac/ACScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerService$1;->this$0:Lcom/nuance/swypeconnect/ac/ACScannerService;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScannerService$1;->val$scanner:Lcom/nuance/swypeconnect/ac/ACScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACScannerService$1$1;

    invoke-direct {v1, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService$1$1;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerService;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "running: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerService$1;->val$scanner:Lcom/nuance/swypeconnect/ac/ACScanner;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACScanner;->getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService$1;->val$scanner:Lcom/nuance/swypeconnect/ac/ACScanner;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScanner;->scan()V

    return-void
.end method
