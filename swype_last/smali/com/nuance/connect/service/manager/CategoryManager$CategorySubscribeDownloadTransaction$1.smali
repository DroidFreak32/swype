.class Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->subscribeResponse(Lcom/nuance/connect/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;->access$1300(Lcom/nuance/connect/service/manager/CategoryManager$CategorySubscribeDownloadTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method
