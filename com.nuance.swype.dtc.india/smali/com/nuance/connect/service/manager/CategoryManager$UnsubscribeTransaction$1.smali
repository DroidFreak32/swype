.class Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->unsubscribeResponse(Lcom/nuance/connect/comm/Response;)V

    return-void
.end method
