.class Lcom/nuance/connect/service/manager/GeoIpLocationManager$3;
.super Lcom/nuance/connect/internal/Property$StringValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$3;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$StringValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_SERVER_URL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$3;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/nuance/connect/service/manager/GeoIpLocationManager;->serverUrl:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$302(Lcom/nuance/connect/service/manager/GeoIpLocationManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_GEO_IP_COUNTRY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$3;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lastCountry:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$402(Lcom/nuance/connect/service/manager/GeoIpLocationManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1b
.end method
