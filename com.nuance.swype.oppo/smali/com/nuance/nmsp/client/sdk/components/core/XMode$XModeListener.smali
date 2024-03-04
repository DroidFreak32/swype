.class public interface abstract Lcom/nuance/nmsp/client/sdk/components/core/XMode$XModeListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/components/core/XMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "XModeListener"
.end annotation


# virtual methods
.method public abstract copConnected()V
.end method

.method public abstract socketClosed(SS)V
.end method

.method public abstract socketOpened()V
.end method

.method public abstract xmodeMsgCallback(Lcom/nuance/nmsp/client/sdk/common/protocols/XModeMsgHeader;[B)V
.end method

.method public abstract xmodeMsgNotSent(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract xmodeMsgSent(Ljava/lang/String;Ljava/lang/Object;)V
.end method
