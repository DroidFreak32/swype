.class public interface abstract Lcom/nuance/connect/api/ReportingService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/ReportingService$Callback;
    }
.end annotation


# virtual methods
.method public abstract allowedPoints()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clearData()V
.end method

.method public abstract disableReporting()V
.end method

.method public abstract enableReporting()V
.end method

.method public abstract getMaxIndividualEntries()I
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isPointAllowed(Ljava/lang/String;)Z
.end method

.method public abstract log(Landroid/os/Bundle;)V
.end method

.method public abstract registerCallback(Lcom/nuance/connect/api/ReportingService$Callback;)V
.end method

.method public abstract registerDataPoints(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendData()V
.end method

.method public abstract setActiveLanguages([I)V
.end method

.method public abstract setMaxIndividualEntries(I)V
.end method

.method public abstract unregisterCallback(Lcom/nuance/connect/api/ReportingService$Callback;)V
.end method

.method public abstract unregisterCallbacks()V
.end method
