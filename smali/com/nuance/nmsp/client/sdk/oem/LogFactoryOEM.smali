.class public Lcom/nuance/nmsp/client/sdk/oem/LogFactoryOEM;
.super Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;-><init>()V

    return-void
.end method

.method public static getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;
    .locals 1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/LogOEM;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/oem/LogOEM;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
