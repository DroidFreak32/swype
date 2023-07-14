.class Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;
.super Lcom/nuance/connect/comm/SimpleTransaction;


# instance fields
.field private volatile mLastCountry:Ljava/lang/String;

.field private volatile mLastTimestamp:J

.field private volatile success:Z

.field final synthetic this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/GeoIpLocationManager;Lcom/nuance/connect/comm/Command;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-direct {p0, p2}, Lcom/nuance/connect/comm/SimpleTransaction;-><init>(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method


# virtual methods
.method public onEndProcessing()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->mLastTimestamp:J

    invoke-static {v0, v2, v3}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$502(Lcom/nuance/connect/service/manager/GeoIpLocationManager;J)J

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->PREF_LAST_GEO_LOCATION_TIMESTAMP:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$500(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->success:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$400(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$400(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->mLastCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$000(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Country has changed: "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$400(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " new value: "

    iget-object v4, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->mLastCountry:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->mLastCountry:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$402(Lcom/nuance/connect/service/manager/GeoIpLocationManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_GEO_IP_COUNTRY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$400(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->postMessage(Lcom/nuance/connect/internal/common/InternalMessages;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$200(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$600(Lcom/nuance/connect/service/manager/GeoIpLocationManager;J)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->finishTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/nuance/connect/comm/SimpleTransaction;->onResponse(Lcom/nuance/connect/comm/Response;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->success:Z

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "country"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->mLastCountry:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->this$0:Lcom/nuance/connect/service/manager/GeoIpLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/GeoIpLocationManager;->access$000(Lcom/nuance/connect/service/manager/GeoIpLocationManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "requestGeoLocationResponse() country: "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->mLastCountry:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/GeoIpLocationManager$4;->mLastTimestamp:J

    return-void
.end method
