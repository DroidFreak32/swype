.class public Lcom/nuance/nmsp/client/sdk/common/protocols/ProtocolDefines;
.super Ljava/lang/Object;


# static fields
.field public static final BYTE_SIZE:B = 0x1t

.field public static final DEVICE_ID:S = 0x7s

.field public static final LONG_SIZE:B = 0x4t

.field public static final SHORT_SIZE:B = 0x2t

.field public static final XMODE_BCP_CANCEL_COMPL_CAUSE_SUCCESS:S = 0x0s

.field public static final XMODE_BCP_COMMAND_BCP_BEGIN:S = 0xa25s

.field public static final XMODE_BCP_COMMAND_BCP_DATA:S = 0xa19s

.field public static final XMODE_BCP_COMMAND_BCP_END:S = 0xa26s

.field public static final XMODE_BCP_COMMAND_BCP_LOG:S = 0xa50s

.field public static final XMODE_BCP_COMMAND_BCP_LOG_RESPONSE:S = 0xa51s

.field public static final XMODE_BCP_COMMAND_CANCEL:S = 0xa03s

.field public static final XMODE_BCP_COMMAND_CANCEL_RESPONSE:S = 0xa20s

.field public static final XMODE_BCP_COMMAND_EVENT:S = 0xa28s

.field public static final XMODE_BCP_COMMAND_FREE_RESOURCE:S = 0xa29s

.field public static final XMODE_BCP_COMMAND_FREE_RESOURCE_ID:S = 0xa30s

.field public static final XMODE_BCP_COMMAND_GENERATE_AUDIO:S = 0xa00s

.field public static final XMODE_BCP_COMMAND_GENERATE_AUDIO_COMPLETE:S = 0xa11s

.field public static final XMODE_BCP_COMMAND_GET_PARAMS:S = 0xa17s

.field public static final XMODE_BCP_COMMAND_GET_PARAMS_COMPLETE:S = 0xa18s

.field public static final XMODE_BCP_COMMAND_LOAD_GRAMMAR:S = 0xa01s

.field public static final XMODE_BCP_COMMAND_LOAD_RESOURCE:S = 0xa27s

.field public static final XMODE_BCP_COMMAND_RECOGNITION_COMPLETE:S = 0xa13s

.field public static final XMODE_BCP_COMMAND_RECOGNITION_INTERMRESULTS:S = 0xa14s

.field public static final XMODE_BCP_COMMAND_RECOGNIZE:S = 0xa02s

.field public static final XMODE_BCP_COMMAND_RESPONSE:S = 0xa10s

.field public static final XMODE_BCP_COMMAND_SET_PARAMS:S = 0xa15s

.field public static final XMODE_BCP_COMMAND_SET_PARAMS_COMPLETE:S = 0xa16s

.field public static final XMODE_BCP_COMMAND_START_OF_SPEECH:S = 0xa12s

.field public static final XMODE_BCP_GENERATE_AUDIO_AUDIO_ID_SIZE:B = 0x4t

.field public static final XMODE_BCP_GETPARAM_LENGTH_SIZE:B = 0x4t

.field public static final XMODE_BCP_RECOGNITION_COMPL_CAUSE_CANCELLED:S = 0xbs

.field public static final XMODE_BCP_RECOGNITION_COMPL_CAUSE_SUCCESS:S = 0x0s

.field public static final XMODE_BCP_RECOGNITION_RESULT_TYPE_APPSERVER:B = 0x1t

.field public static final XMODE_BCP_RECOGNITION_RESULT_TYPE_NSS:B = 0x0t

.field public static final XMODE_BCP_REQUEST_ID_SIZE:B = 0x4t

.field public static final XMODE_BCP_RESPONSE_STATUS_METHOD_OPS_FAIL:S = 0x197s

.field public static final XMODE_BCP_RESPONSE_STATUS_OK:S = 0xc8s

.field public static final XMODE_BCP_SETPARAM_LENGTH_SIZE:B = 0x4t

.field public static final XMODE_BCP_TRANSACTION_ID_SIZE:B = 0x1t

.field public static final XMODE_BUILD_DATE:I = 0x132908f

.field public static final XMODE_CLIENT_COP_CONFIRM_DATA_LEN_SIZE:B = 0x4t

.field public static final XMODE_CLIENT_COP_CONNECT_DATA_LEN_SIZE:B = 0x4t

.field public static final XMODE_CLIENT_COP_CONNECT_DATA_TYPE_SIZE:B = 0x1t

.field public static final XMODE_CLIENT_COP_DISCONNECT_CODE_SIZE:B = 0x2t

.field public static final XMODE_CLIENT_COP_PING_RESPONSE_LATENCY_SIZE:B = 0x4t

.field public static final XMODE_CLIENT_VAP_AUDIO_CODEC:B = 0x2t

.field public static final XMODE_CLIENT_VAP_AUDIO_ID_SIZE:B = 0x4t

.field public static final XMODE_CLIENT_VAP_AUDIO_LEN_SIZE:B = 0x4t

.field public static final XMODE_COP_COMMAND_CONFIRM:S = 0x106s

.field public static final XMODE_COP_COMMAND_CONNECT:S = 0x100s

.field public static final XMODE_COP_COMMAND_CONNECTED:S = 0x101s

.field public static final XMODE_COP_COMMAND_CONNECT_FAILED:S = 0x300s

.field public static final XMODE_COP_COMMAND_DISCONNECT:S = 0x200s

.field public static final XMODE_COP_COMMAND_PING_REQUEST:S = 0x102s

.field public static final XMODE_COP_COMMAND_PING_RESPONSE:S = 0x103s

.field public static final XMODE_COP_CONNECT_DATA_TYPE_GATEWAY:B = 0x0t

.field public static final XMODE_DISCONNECT_CODE_CRITICAL_ERROR:S = 0x3s

.field public static final XMODE_DISCONNECT_CODE_ENDPOINT_EXCEPTION:S = 0x6s

.field public static final XMODE_DISCONNECT_CODE_MAXAUDIO_PERSESSION:S = 0x7s

.field public static final XMODE_DISCONNECT_CODE_MAXBYTE_PERAUDIO:S = 0x8s

.field public static final XMODE_DISCONNECT_CODE_NORMAL:S = 0x0s

.field public static final XMODE_DISCONNECT_CODE_PING_TIME_OUT:S = 0x4s

.field public static final XMODE_DISCONNECT_CODE_SERVER_SHUTDOWN:S = 0x2s

.field public static final XMODE_DISCONNECT_CODE_SERVER_UNAVAILABLE:S = 0x5s

.field public static final XMODE_DISCONNECT_CODE_TIMEOUT:S = 0x1s

.field public static final XMODE_DISCONNECT_CODE_UNKNOWN:S = 0x9s

.field public static final XMODE_NMSP_PARAM_DSR_CODEC:Ljava/lang/String; = "warp-factor"

.field public static final XMODE_NMSP_PARAM_PING_INTERVAL_SECS:Ljava/lang/String; = "Ping_IntervalSecs"

.field public static final XMODE_NMSP_PARAM_PING_MIS_RESP_B4_DISCONNECT:Ljava/lang/String; = "Ping_MissedResponsesBeforeDisconnect"

.field public static final XMODE_PACKET_HEADER_SIZE:B = 0x8t

.field public static final XMODE_PAYLOAD_LENGTH_SIZE:B = 0x4t

.field public static final XMODE_PING_RESPONSE_ZERO_LATENCY:B = 0x0t

.field public static final XMODE_PROTOCOL_BB_HANDSHAKE:B = 0xft

.field public static final XMODE_PROTOCOL_BCP:B = 0x2t

.field public static final XMODE_PROTOCOL_COP:B = 0x3t

.field public static final XMODE_PROTOCOL_VAP:B = 0x1t

.field public static final XMODE_SERVER_BCP_COMPLETION_CAUSE_SIZE:B = 0x2t

.field public static final XMODE_SERVER_BCP_DATA_LENGTH:B = 0x4t

.field public static final XMODE_SERVER_BCP_EVENT_CODE_SIZE:B = 0x2t

.field public static final XMODE_SERVER_BCP_EVENT_PAYLOAD_LENGTH:B = 0x4t

.field public static final XMODE_SERVER_BCP_FREE_RESOURCE_TIMEOUT_LENGTH:B = 0x4t

.field public static final XMODE_SERVER_BCP_RECOGNITION_COMPLETE_RES_LEN:B = 0x4t

.field public static final XMODE_SERVER_BCP_RECOGNITION_RESULT_LENGTH:B = 0x4t

.field public static final XMODE_SERVER_BCP_RECOGNITION_RESULT_TYPE:B = 0x1t

.field public static final XMODE_SERVER_BCP_RESPONSE_REQUEST_STATE_SIZE:B = 0x2t

.field public static final XMODE_SERVER_BCP_RESPONSE_STATUS_CODE_SIZE:B = 0x2t

.field public static final XMODE_SERVER_COP_CONNECTED_PAYLOAD_SIZE:B = 0x4t

.field public static final XMODE_SERVER_COP_CONNECT_FAILED_PAYLOAD_SIZE:B = 0x4t

.field public static final XMODE_SERVER_COP_CONNECT_FAILURE_CODE_SIZE:B = 0x2t

.field public static final XMODE_SERVER_COP_PING_REQUEST_ID_SIZE:B = 0x4t

.field public static final XMODE_SERVER_SESSION_UUID_SIZE:B = 0x10t

.field public static final XMODE_VAP_COMMAND_PLAY:S = 0x200s

.field public static final XMODE_VAP_COMMAND_PLAY_BEGIN:S = 0x210s

.field public static final XMODE_VAP_COMMAND_PLAY_END:S = 0x400s

.field public static final XMODE_VAP_COMMAND_RECORD:S = 0x201s

.field public static final XMODE_VAP_COMMAND_RECORD_BEGIN:S = 0x101s

.field public static final XMODE_VAP_COMMAND_RECORD_END:S = 0x100s

.field public static final XMODE_VERSION_BCP:B = 0x22t

.field public static final XMODE_VERSION_COP:B = 0x17t

.field public static final XMODE_VERSION_VAP:B = 0x12t

.field public static final XMODE_XML_PAYLOAD_SIZE:B = 0x4t


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
