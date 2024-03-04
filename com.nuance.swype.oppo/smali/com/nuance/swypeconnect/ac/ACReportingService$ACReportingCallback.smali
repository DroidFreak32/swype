.class public interface abstract Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACReportingCallback"
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

.method public abstract onLoggingFailure(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;)V
.end method

.method public abstract onLoggingSuccess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingEntry;)V
.end method

.method public abstract onTransmission(I)V
.end method

.method public abstract onTransmissionFailure(ILjava/lang/String;)I
.end method
