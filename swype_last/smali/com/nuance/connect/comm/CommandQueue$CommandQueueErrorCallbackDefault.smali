.class public Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallbackDefault;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandQueueErrorCallbackDefault"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountInvalidated()V
    .registers 1

    return-void
.end method

.method public onConnectionStatus(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onDeviceInvalidated()V
    .registers 1

    return-void
.end method

.method public onDeviceNotAvailable()V
    .registers 1

    return-void
.end method

.method public onQueuePaused(IILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public onSessionInvalidated()V
    .registers 1

    return-void
.end method

.method public onSessionNotAvailable()V
    .registers 1

    return-void
.end method

.method public onUnlicensed(I)V
    .registers 2

    return-void
.end method
