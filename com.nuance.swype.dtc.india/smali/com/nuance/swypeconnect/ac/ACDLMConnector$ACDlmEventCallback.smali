.class public interface abstract Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACDlmEventCallback"
.end annotation


# virtual methods
.method public abstract onReset(Z)V
.end method

.method public abstract registerObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V
.end method

.method public abstract resume()V
.end method

.method public abstract unregisterObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V
.end method

.method public abstract unregisterObservers()V
.end method

.method public abstract yield()V
.end method
