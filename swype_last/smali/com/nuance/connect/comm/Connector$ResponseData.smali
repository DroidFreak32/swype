.class public interface abstract Lcom/nuance/connect/comm/Connector$ResponseData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseData"
.end annotation


# virtual methods
.method public abstract getResponse()Lcom/nuance/connect/comm/Response;
.end method

.method public abstract getStatusCode()I
.end method

.method public abstract getStatusMessage()Ljava/lang/String;
.end method
