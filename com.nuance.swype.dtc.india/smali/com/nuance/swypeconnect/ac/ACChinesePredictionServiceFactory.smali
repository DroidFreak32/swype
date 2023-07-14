.class public Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getACChinesePredictionService(Ljava/lang/String;Lcom/nuance/connect/api/ChinesePredictionService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACChinesePredictionService;
    .locals 2

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;

    invoke-direct {v1}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;-><init>()V

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionServiceBase;->init(Lcom/nuance/connect/api/ChinesePredictionService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
