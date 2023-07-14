.class Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;

    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;->access$800(Lcom/nuance/connect/service/manager/CategoryManager$CategoryStatusTransaction;Lcom/nuance/connect/comm/Response;)V

    return-void
.end method
