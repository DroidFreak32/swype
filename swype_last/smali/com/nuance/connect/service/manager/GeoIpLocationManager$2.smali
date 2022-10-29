.class Lcom/nuance/connect/service/manager/GeoIpLocationManager$2;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$2;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_SERVICE_LOOKUP_INTERVAL:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$2;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xe10

    if-le v0, v2, :cond_2e

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2a
    # setter for: Lcom/nuance/connect/service/manager/GeoIpLocationManager;->lookupInterval:I
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$202(Lcom/nuance/connect/service/manager/GeoIpLocationManager;I)I

    :cond_2d
    return-void

    :cond_2e
    const v0, 0x93a80

    goto :goto_2a
.end method
