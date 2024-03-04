.class public interface abstract Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;
.super Ljava/lang/Object;


# static fields
.field public static final NMSP_REMOTE_DISCONNECT_CONNECT_FORBIDDEN:S = 0x193s

.field public static final NMSP_REMOTE_DISCONNECT_CRITICAL_ERROR:S = 0x3s

.field public static final NMSP_REMOTE_DISCONNECT_ENDPOINT_EXCEPTION:S = 0x6s

.field public static final NMSP_REMOTE_DISCONNECT_MAXAUDIO_PERSESSION:S = 0x7s

.field public static final NMSP_REMOTE_DISCONNECT_MAXBYTE_PERAUDIO:S = 0x8s

.field public static final NMSP_REMOTE_DISCONNECT_NORMAL:S = 0x0s

.field public static final NMSP_REMOTE_DISCONNECT_PING_TIME_OUT:S = 0x4s

.field public static final NMSP_REMOTE_DISCONNECT_SERVER_SHUTDOWN:S = 0x2s

.field public static final NMSP_REMOTE_DISCONNECT_SERVER_UNAVAILABLE:S = 0x5s

.field public static final NMSP_REMOTE_DISCONNECT_TIMEOUT:S = 0x1s

.field public static final NMSP_REMOTE_DISCONNECT_UNKNOWN:S = 0x9s


# virtual methods
.method public abstract callLogDataGenerated([B)V
.end method

.method public abstract connected(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;)V
.end method

.method public abstract connectionFailed(Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;S)V
.end method

.method public abstract disconnected(Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;S)V
.end method

.method public abstract shutdownCompleted()V
.end method
