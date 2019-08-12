.class abstract Lcom/nuance/connect/service/manager/AbstractTransaction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/comm/Transaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;
    }
.end annotation


# instance fields
.field protected currentCommand:Lcom/nuance/connect/service/comm/Command;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method


# virtual methods
.method public allowDuplicates()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadFile()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSame(Lcom/nuance/connect/service/comm/Transaction;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/AbstractTransaction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/connect/service/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onEndProcessing()V
    .locals 0

    return-void
.end method

.method public requiresDeviceId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requiresSessionId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract rollback()V
.end method

.method public wifiOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
