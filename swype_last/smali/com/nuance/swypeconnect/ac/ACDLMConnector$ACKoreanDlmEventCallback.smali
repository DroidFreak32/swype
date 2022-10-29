.class public final Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;
.super Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ACKoreanDlmEventCallback"
.end annotation


# static fields
.field protected static final CORE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V
    .registers 3

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;Lcom/nuance/swypeconnect/ac/ACDLMConnector$1;)V

    return-void
.end method


# virtual methods
.method public final onKoreanDlmEvent([BZ)V
    .registers 10

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->manager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$200(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/api/DLMConnector;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/nuance/connect/api/DLMConnector;->onDlmEvent(ILjava/lang/String;JZ)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->manager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getReportingService()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v2

    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACReportingService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6d

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->eventCompiler:Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$300()Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$Compiler;->compileAll([B)[Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;

    move-result-object v3

    if-eqz v3, :cond_6d

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_42
    if-ge v1, v4, :cond_6d

    aget-object v0, v3, v1

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDLMEvent;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_6e

    :goto_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    :pswitch_51
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACReportingService;->getHelper()Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    move-result-object v5

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACAddWordDLMEvent;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACAddWordDLMEvent;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->recordUdbAdd(Ljava/lang/String;)V

    goto :goto_4d

    :pswitch_5f
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACReportingService;->getHelper()Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    move-result-object v5

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDeleteWordDLMEvent;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACDeleteWordDLMEvent;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->recordUdbDelete(Ljava/lang/String;)V

    goto :goto_4d

    :cond_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x15
        :pswitch_51
        :pswitch_5f
    .end packed-switch
.end method

.method public final onReset(Z)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$400(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onKoreanDlmEvent.onReset userCategory="

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->manager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$200(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/api/DLMConnector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/api/DLMConnector;->onReset(IZ)V

    :cond_2a
    return-void
.end method

.method public final bridge synthetic registerObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;->registerObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V

    return-void
.end method

.method public final resume()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$400(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "onKoreanDlmEvent.resume"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->manager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$200(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/api/DLMConnector;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/DLMConnector;->resume(I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->observers:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;

    array-length v2, v0

    :goto_32
    if-ge v1, v2, :cond_3c

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;->onResume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_3c
    return-void
.end method

.method public final bridge synthetic unregisterObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;->unregisterObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V

    return-void
.end method

.method public final bridge synthetic unregisterObservers()V
    .registers 1

    invoke-super {p0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;->unregisterObservers()V

    return-void
.end method

.method public final yield()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$400(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v2, "onKoreanDlmEvent.yield"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->manager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$100(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/ConnectServiceManager;->isLicensed()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    # getter for: Lcom/nuance/swypeconnect/ac/ACDLMConnector;->service:Lcom/nuance/connect/api/DLMConnector;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->access$200(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)Lcom/nuance/connect/api/DLMConnector;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/DLMConnector;->yield(I)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACKoreanDlmEventCallback;->observers:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    new-array v2, v1, [Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;

    invoke-virtual {v0, v2}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;

    array-length v2, v0

    :goto_32
    if-ge v1, v2, :cond_3c

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;->onYield()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_3c
    return-void
.end method
