.class public interface abstract Lcom/nuance/connect/proto/Prediction$LoggingRequestV1OrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoggingRequestV1OrBuilder"
.end annotation


# virtual methods
.method public abstract getDeviceID()Ljava/lang/String;
.end method

.method public abstract getDeviceIDBytes()Lcom/a/a/c;
.end method

.method public abstract getTransactions(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
.end method

.method public abstract getTransactionsCount()I
.end method

.method public abstract getTransactionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDeviceID()Z
.end method
