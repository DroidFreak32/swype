.class public final Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;
.super Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ACChineseDlmEventCallback"
.end annotation


# static fields
.field protected static final CORE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;Lcom/nuance/swypeconnect/ac/ACDLMConnector$1;)V

    return-void
.end method


# virtual methods
.method public final onChineseDlmEvent([BZ)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$200(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/api/DLMConnector;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/nuance/connect/api/DLMConnector;->onDlmEvent(ILjava/lang/String;JZ)V

    :cond_0
    return-void
.end method

.method public final onReset(Z)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$400(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ACChineseDlmEventCallback.resume"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$200(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/api/DLMConnector;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/api/DLMConnector;->onReset(IZ)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic registerObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;->registerObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V

    return-void
.end method

.method public final resume()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$400(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ACChineseDlmEventCallback.resume"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$200(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/api/DLMConnector;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMConnector;->resume(I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->observers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic unregisterObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;->unregisterObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V

    return-void
.end method

.method public final bridge synthetic unregisterObservers()V
    .locals 0

    invoke-super {p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;->unregisterObservers()V

    return-void
.end method

.method public final yield()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$400(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "ACChineseDlmEventCallback.yield"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$200(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/api/DLMConnector;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/DLMConnector;->yield(I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACChineseDlmEventCallback;->observers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;->onYield()V

    goto :goto_0

    :cond_0
    return-void
.end method
