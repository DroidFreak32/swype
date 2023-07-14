.class public final Lcom/nuance/swype/measure/Usecases;
.super Ljava/lang/Object;
.source "Usecases.java"


# static fields
.field public static final DOWNLOAD_THEME:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

.field public static final ENABLE_CATALOG_SERVICE:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

.field public static final GET_PRICE:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

.field public static final GET_SKUS_FOR_DOWNLOAD:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

.field public static final PURCHASE_THEME:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

.field public static final UNZIP_THEME:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    const-string/jumbo v1, "Enable catalog service"

    invoke-direct {v0, v1}, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/measure/Usecases;->ENABLE_CATALOG_SERVICE:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    .line 7
    new-instance v0, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    const-string/jumbo v1, "Download theme"

    invoke-direct {v0, v1}, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/measure/Usecases;->DOWNLOAD_THEME:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    .line 8
    new-instance v0, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    const-string/jumbo v1, "Get SKUs for download"

    invoke-direct {v0, v1}, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/measure/Usecases;->GET_SKUS_FOR_DOWNLOAD:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    .line 9
    new-instance v0, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    const-string/jumbo v1, "Get price from Google Play"

    invoke-direct {v0, v1}, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/measure/Usecases;->GET_PRICE:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    .line 10
    new-instance v0, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    const-string/jumbo v1, "Unzip theme"

    invoke-direct {v0, v1}, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/measure/Usecases;->UNZIP_THEME:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    .line 11
    new-instance v0, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    const-string/jumbo v1, "Purchase theme"

    invoke-direct {v0, v1}, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/measure/Usecases;->PURCHASE_THEME:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    return-void
.end method
