.class Lcom/nuance/swypeconnect/ac/ACScannerService$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic this$1:Lcom/nuance/swypeconnect/ac/ACScannerService$1;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService$1;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerService$1$1;->this$1:Lcom/nuance/swypeconnect/ac/ACScannerService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    # getter for: Lcom/nuance/swypeconnect/ac/ACScannerService;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerService;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error running scanner: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerService$1$1;->this$1:Lcom/nuance/swypeconnect/ac/ACScannerService$1;

    iget-object v2, v2, Lcom/nuance/swypeconnect/ac/ACScannerService$1;->val$scanner:Lcom/nuance/swypeconnect/ac/ACScanner;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACScanner;->getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService$1$1;->this$1:Lcom/nuance/swypeconnect/ac/ACScannerService$1;

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACScannerService$1;->val$scanner:Lcom/nuance/swypeconnect/ac/ACScanner;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScanner;->fail(ILjava/lang/String;)V

    return-void
.end method
