.class public Lcom/nuance/swypeconnect/ac/ACCatalogServiceFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getACCatalogService(Ljava/lang/String;Lcom/nuance/connect/api/CatalogService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .registers 8

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string/jumbo v0, "ACCatalogServiceFactory.getACCatalogService("

    const-string/jumbo v1, ")"

    invoke-interface {v2, v0, p0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v0, "ACCatalogServiceFactory.getACCatalogService()"

    invoke-interface {p1}, Lcom/nuance/connect/api/CatalogService;->isCatalogEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-interface {v2, v0, v1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;

    invoke-direct {v1}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;-><init>()V

    :try_start_25
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;
    :try_end_2f
    .catch Ljava/lang/InstantiationException; {:try_start_25 .. :try_end_2f} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2f} :catch_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_2f} :catch_3f

    :goto_2f
    const-string/jumbo v1, "ACCatalogServiceFactory calling init()"

    invoke-interface {v2, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swypeconnect/ac/ACCatalogServiceBase;->init(Lcom/nuance/connect/api/CatalogService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V

    return-object v0

    :catch_39
    move-exception v0

    move-object v0, v1

    goto :goto_2f

    :catch_3c
    move-exception v0

    move-object v0, v1

    goto :goto_2f

    :catch_3f
    move-exception v0

    move-object v0, v1

    goto :goto_2f
.end method
