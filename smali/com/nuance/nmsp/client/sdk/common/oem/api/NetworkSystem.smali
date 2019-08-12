.class public interface abstract Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$WriteSocketCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;
    }
.end annotation


# virtual methods
.method public abstract clearPendingOps(Ljava/lang/Object;)V
.end method

.method public abstract closeSocket(Ljava/lang/Object;)V
.end method

.method public abstract isNetworkHealthy()Z
.end method

.method public abstract openSSLSocket(Ljava/lang/String;ILjava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;)V
.end method

.method public abstract openSocket(Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$OpenSocketCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$CloseSocketCallback;Ljava/lang/Object;)V
.end method

.method public abstract setSessionId(Ljava/lang/Object;[B)V
.end method

.method public abstract socketRead(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkReadMode;[BIILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$ReadSocketCallback;Ljava/lang/Object;)Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;
.end method

.method public abstract socketWrite(Ljava/lang/Object;[BIILcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$WriteSocketCallback;Ljava/lang/Object;)Lcom/nuance/nmsp/client/sdk/common/oem/api/NetworkSystem$NetworkStatus;
.end method
