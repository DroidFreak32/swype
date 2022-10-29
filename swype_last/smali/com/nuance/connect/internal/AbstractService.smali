.class abstract Lcom/nuance/connect/internal/AbstractService;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
.end method

.method abstract getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
.end method

.method abstract getServiceName()Ljava/lang/String;
.end method
