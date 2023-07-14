.class Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$3;
.super Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$3;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;-><init>(Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected unsubscribeResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$3;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$500(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "unsubscribeResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$UnsubscribeTransaction;->unsubscribeResponse(Lcom/nuance/connect/comm/Response;)V

    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$3;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$3;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->sendIfCatalogDictionary(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
