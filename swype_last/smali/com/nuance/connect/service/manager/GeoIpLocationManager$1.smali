.class Lcom/nuance/connect/service/manager/GeoIpLocationManager$1;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$1;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$BooleanValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_ENABLED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$1;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    # getter for: Lcom/nuance/connect/service/manager/GeoIpLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$000(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "LOCATION_SERVICE_ENABLED "

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$1;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # setter for: Lcom/nuance/connect/service/manager/GeoIpLocationManager;->enabled:Z
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$102(Lcom/nuance/connect/service/manager/GeoIpLocationManager;Z)Z

    :cond_2f
    return-void
.end method
