.class public Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getACLanguageDownloadService(Ljava/lang/String;Lcom/nuance/connect/api/LanguageService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    .registers 6

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-direct {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;-><init>()V

    :try_start_5
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;
    :try_end_f
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_f} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_f} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_f} :catch_19

    :goto_f
    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->init(Lcom/nuance/connect/api/LanguageService;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V

    return-object v0

    :catch_13
    move-exception v0

    move-object v0, v1

    goto :goto_f

    :catch_16
    move-exception v0

    move-object v0, v1

    goto :goto_f

    :catch_19
    move-exception v0

    move-object v0, v1

    goto :goto_f
.end method
