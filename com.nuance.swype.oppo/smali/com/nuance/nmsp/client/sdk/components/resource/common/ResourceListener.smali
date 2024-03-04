.class public interface abstract Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceListener;
.super Ljava/lang/Object;


# static fields
.field public static final COMPLETION_CAUSE_3RD_PARTY_APP_ERROR:S = 0x260s

.field public static final COMPLETION_CAUSE_EMPTY:S = 0x7fffs

.field public static final COMPLETION_CAUSE_INVALID_REQUEST:S = 0x258s

.field public static final COMPLETION_CAUSE_RESOURCE_UNAVAILABLE:S = 0xes

.field public static final EVENT_CODE_APP_SERVER_SESSION_TERMINATED_ERROR:S = 0x8s

.field public static final EVENT_CODE_APP_SERVER_SESSION_TERMINATED_NORMALLY:S = 0x7s

.field public static final EVENT_CODE_CLIENT_DISCONNECTED_NORMALLY:S = 0x0s

.field public static final EVENT_CODE_CLIENT_IDLE_TIMEOUT:S = 0x3s

.field public static final EVENT_CODE_CLIENT_PING_TIMEOUT:S = 0x2s

.field public static final EVENT_CODE_CLIENT_SOCKET_SHUTDOWN_UNEXPECTEDLY:S = 0x1s

.field public static final EVENT_CODE_GW_TERMINATED_SESSION_ERROR:S = 0x6s

.field public static final EVENT_CODE_NSS_TERMINATED_SESSION_ERROR:S = 0x5s

.field public static final EVENT_CODE_NSS_TERMINATED_SESSION_TIMEOUT:S = 0x4s

.field public static final STATUS_CODE_ILLEGAL_VALUE_FOR_PARAMETER:S = 0x194s

.field public static final STATUS_CODE_MANDATORY_PARAMETER_MISSING:S = 0x196s

.field public static final STATUS_CODE_MESSAGE_TOO_LARGE:S = 0x1f8s

.field public static final STATUS_CODE_METHOD_NOT_ALLOWED:S = 0x191s

.field public static final STATUS_CODE_METHOD_NOT_VALID_IN_THIS_STATE:S = 0x192s

.field public static final STATUS_CODE_METHOD_OR_OPERATION_FAILED:S = 0x197s

.field public static final STATUS_CODE_NOT_FOUND:S = 0x195s

.field public static final STATUS_CODE_OUT_OF_ORDER_NUMBER_ID:S = 0x19as

.field public static final STATUS_CODE_PARTIAL_SUCCESS:S = 0xc9s

.field public static final STATUS_CODE_PROTOCOL_VERSION_NOT_SUPPORTED:S = 0x1f6s

.field public static final STATUS_CODE_PROXY_TIMEOUT:S = 0x1f7s

.field public static final STATUS_CODE_SERVER_INTERNAL_ERROR:S = 0x1f5s

.field public static final STATUS_CODE_SUCCESS:S = 0xc8s

.field public static final STATUS_CODE_UNRECOGNIZED_MESSAGE_ENTITY:S = 0x198s

.field public static final STATUS_CODE_UNSUPPORTED_PARAMETER:S = 0x193s

.field public static final STATUS_CODE_UNSUPPORTED_PARAMETER_VALUE:S = 0x199s


# virtual methods
.method public abstract getParameterCompleted(SLjava/util/Vector;J)V
.end method

.method public abstract getParameterFailed(SSJ)V
.end method

.method public abstract resourceUnloaded(S)V
.end method

.method public abstract setParameterCompleted(SLjava/util/Vector;J)V
.end method

.method public abstract setParameterFailed(SSJ)V
.end method
