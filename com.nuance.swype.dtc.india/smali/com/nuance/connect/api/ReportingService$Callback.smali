.class public interface abstract Lcom/nuance/connect/api/ReportingService$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/ReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract allowedPoints(Ljava/util/Set;)V
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

.method public abstract onClear(I)V
.end method

.method public abstract onLoggingFailure(ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onLoggingSuccess(Landroid/os/Bundle;)V
.end method

.method public abstract onTransmission(I)V
.end method

.method public abstract onTransmissionFailure(ILjava/lang/String;)V
.end method
