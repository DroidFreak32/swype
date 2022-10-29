.class Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;
.super Lcom/nuance/connect/internal/Property$StringValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$StringValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .registers 8
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

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION_GEO_IP_COUNTRY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$000(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getLastGeoIP()Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_90

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "LOCATION_COUNTRY"

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "LOCATION_TIME_EPOC"

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->client:Lcom/nuance/connect/service/ConnectClient;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$000(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Lcom/nuance/connect/service/ConnectClient;

    move-result-object v0

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATALOG_LOCATION_CHANGED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v3, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPCountry:Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPTimeEpoc:J
    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->minWaitBetweenCatalogListRefresh:I
    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$300(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)I

    move-result v3

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_91

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->minWaitBetweenCatalogListRefresh:I
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$300(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)I

    move-result v0

    int-to-long v0, v0

    :goto_75
    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    # invokes: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->postRefreshMessage(J)V
    invoke-static {v3, v0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$400(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;J)V

    :cond_7a
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPCountry:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$102(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    # setter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPTimeEpoc:J
    invoke-static {v1, v2, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$202(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;J)J

    :cond_90
    :goto_90
    return-void

    :cond_91
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->lastGeoIPTimeEpoc:J
    invoke-static {v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_75

    :cond_a1
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEVICE_PROPERTIES_UPDATED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Lcom/nuance/connect/util/StringUtils;->stringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$500(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "Detected device properties update: "

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->catalogDeviceProperties:Ljava/util/Set;
    invoke-static {}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$600()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$500(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Important catalog device properties have updated. enabled: "

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    # getter for: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->enabled:Z
    invoke-static {v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$700(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog$1;->this$0:Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;

    const-wide/16 v2, 0x0

    # invokes: Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->postRefreshMessage(J)V
    invoke-static {v0, v2, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;->access$400(Lcom/nuance/connect/service/manager/CategorySubmanagerCatalog;J)V

    goto :goto_90
.end method
