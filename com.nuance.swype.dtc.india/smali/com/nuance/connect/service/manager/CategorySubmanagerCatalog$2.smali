.class Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$2;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->CATALOG_LIST_REFRESH_MINIMUM_WAIT:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$302(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$500(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Minimum wait for location change: "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$2;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$300(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
