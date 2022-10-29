.class public interface abstract Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;
    }
.end annotation


# static fields
.field public static final NMSP_CALLLOG_APP_REMOTEEVENT:Ljava/lang/String; = "APP_REMOTEEVENT"

.field public static final NMSP_CALLLOG_CLOSESOCKET_EVENT:Ljava/lang/String; = "CloseSocket"

.field public static final NMSP_CALLLOG_COMMANDABORT_EVENT:Ljava/lang/String; = "CommandAbort"

.field public static final NMSP_CALLLOG_COMMANDEXPIRED_EVENT:Ljava/lang/String; = "CommandExpired"

.field public static final NMSP_CALLLOG_CONNECTED_EVENT:Ljava/lang/String; = "ConnectionEstablished"

.field public static final NMSP_CALLLOG_CONNECT_EVENT:Ljava/lang/String; = "Connect"

.field public static final NMSP_CALLLOG_NMASAUDIOPARAM_EVENT:Ljava/lang/String; = "NMASAudioParameter"

.field public static final NMSP_CALLLOG_NMASCOMMAND_EVENT:Ljava/lang/String; = "NMASCommand"

.field public static final NMSP_CALLLOG_NMASRESPONSE_EVENT:Ljava/lang/String; = "NMASResponse"

.field public static final NMSP_CALLLOG_NMSPGW_EVENT:Ljava/lang/String; = "NMSP_GATEWAY"

.field public static final NMSP_CALLLOG_NMSPSDK_EVENT:Ljava/lang/String; = "CLIENT"

.field public static final NMSP_CALLLOG_NMSPSESSION:Ljava/lang/String; = "NMSPSession"

.field public static final NMSP_CALLLOG_NMSPSOCKET_EVENT:Ljava/lang/String; = "NMSPSocket"

.field public static final NMSP_CALLLOG_OPENSOCKET_EVENT:Ljava/lang/String; = "OpenSocket"

.field public static final NMSP_CALLLOG_PLAYERSTART_EVENT:Ljava/lang/String; = "PlayerStart"

.field public static final NMSP_CALLLOG_PLAYERSTOP_EVENT:Ljava/lang/String; = "PlayerStop"

.field public static final NMSP_CALLLOG_PLAYER_EVENT:Ljava/lang/String; = "NMSPPlayer"

.field public static final NMSP_CALLLOG_PLAYSTREAMSTART_EVENT:Ljava/lang/String; = "StreamStart"

.field public static final NMSP_CALLLOG_PLAYSTREAMSTOP_EVENT:Ljava/lang/String; = "StreamStop"

.field public static final NMSP_CALLLOG_RECORDERSTART_EVENT:Ljava/lang/String; = "RecorderStart"

.field public static final NMSP_CALLLOG_RECORDERSTOP_EVENT:Ljava/lang/String; = "RecorderStop"

.field public static final NMSP_CALLLOG_RECORDER_EVENT:Ljava/lang/String; = "NMSPRecorder"

.field public static final NMSP_CALLLOG_RECORDSTREAMSTART_EVENT:Ljava/lang/String; = "StreamStart"

.field public static final NMSP_CALLLOG_RECORDSTREAMSTOP_EVENT:Ljava/lang/String; = "StreamStop"

.field public static final NMSP_CALLLOG_SHUTDOWN_EVENT:Ljava/lang/String; = "NMSP_ShutDown"

.field public static final NMSP_CALLLOG_SOCKETCLOSED_EVENT:Ljava/lang/String; = "SocketClosed"

.field public static final NMSP_CALLLOG_SOCKETOPENED_EVENT:Ljava/lang/String; = "SocketOpened"


# virtual methods
.method public abstract createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
.end method

.method public abstract createRemoteChildEvent(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
.end method

.method public abstract getId()Ljava/lang/String;
.end method
