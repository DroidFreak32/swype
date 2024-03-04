.class public interface abstract Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACAccountCallback"
.end annotation


# virtual methods
.method public abstract created()V
.end method

.method public abstract devicesUpdated([Lcom/nuance/swypeconnect/ac/ACDevice;)V
.end method

.method public abstract linked()V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract status(ILjava/lang/String;)V
.end method

.method public abstract verifyFailed()V
.end method
