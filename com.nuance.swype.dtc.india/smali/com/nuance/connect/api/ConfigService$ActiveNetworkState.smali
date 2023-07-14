.class public interface abstract Lcom/nuance/connect/api/ConfigService$ActiveNetworkState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/ConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActiveNetworkState"
.end annotation


# virtual methods
.method public abstract getCellularState()Z
.end method

.method public abstract getRoamingState()Z
.end method

.method public abstract getWifiState()Z
.end method

.method public abstract setNetworkState(ZZZ)V
.end method
