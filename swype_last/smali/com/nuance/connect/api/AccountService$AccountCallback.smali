.class public interface abstract Lcom/nuance/connect/api/AccountService$AccountCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/AccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccountCallback"
.end annotation


# virtual methods
.method public abstract created()V
.end method

.method public abstract devicesUpdated([Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V
.end method

.method public abstract linked()V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract status(ILjava/lang/String;)V
.end method
