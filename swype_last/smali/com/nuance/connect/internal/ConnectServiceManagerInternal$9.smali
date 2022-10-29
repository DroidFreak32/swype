.class synthetic Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$connect$common$ConnectFeature:[I

.field static final synthetic $SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/nuance/connect/common/ConnectFeature;->values()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    :try_start_9
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_134

    :goto_14
    :try_start_14
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_131

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->REPORTING:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_12e

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_12b

    :goto_35
    :try_start_35
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->DLM:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_128

    :goto_40
    :try_start_40
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_125

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->ADDON_DICTIONARIES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_122

    :goto_56
    :try_start_56
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_11f

    :goto_62
    :try_start_62
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->SYNC:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_11c

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_119

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->UPDATE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_116

    :goto_86
    :try_start_86
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CHINESE_PREDICTION:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_113

    :goto_92
    :try_start_92
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$common$ConnectFeature:[I

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CATALOG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v1}, Lcom/nuance/connect/common/ConnectFeature;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_111

    :goto_9e
    invoke-static {}, Lcom/nuance/connect/internal/common/InternalMessages;->values()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    :try_start_a7
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_HANDLERS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b2} :catch_10f

    :goto_b2
    :try_start_b2
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CLIENT_START_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_bd} :catch_10d

    :goto_bd
    :try_start_bd
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CONNECTION_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_c8} :catch_10b

    :goto_c8
    :try_start_c8
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ON_SERVICE_SHUTDOWN:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d3} :catch_109

    :goto_d3
    :try_start_d3
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_REQUESTED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d3 .. :try_end_de} :catch_107

    :goto_de
    :try_start_de
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_POLL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_de .. :try_end_e9} :catch_105

    :goto_e9
    :try_start_e9
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_LICENSED_BUILD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f4} :catch_103

    :goto_f4
    :try_start_f4
    sget-object v0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$9;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_ANONYMOUS_BUILD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f4 .. :try_end_100} :catch_101

    :goto_100
    return-void

    :catch_101
    move-exception v0

    goto :goto_100

    :catch_103
    move-exception v0

    goto :goto_f4

    :catch_105
    move-exception v0

    goto :goto_e9

    :catch_107
    move-exception v0

    goto :goto_de

    :catch_109
    move-exception v0

    goto :goto_d3

    :catch_10b
    move-exception v0

    goto :goto_c8

    :catch_10d
    move-exception v0

    goto :goto_bd

    :catch_10f
    move-exception v0

    goto :goto_b2

    :catch_111
    move-exception v0

    goto :goto_9e

    :catch_113
    move-exception v0

    goto/16 :goto_92

    :catch_116
    move-exception v0

    goto/16 :goto_86

    :catch_119
    move-exception v0

    goto/16 :goto_7a

    :catch_11c
    move-exception v0

    goto/16 :goto_6e

    :catch_11f
    move-exception v0

    goto/16 :goto_62

    :catch_122
    move-exception v0

    goto/16 :goto_56

    :catch_125
    move-exception v0

    goto/16 :goto_4b

    :catch_128
    move-exception v0

    goto/16 :goto_40

    :catch_12b
    move-exception v0

    goto/16 :goto_35

    :catch_12e
    move-exception v0

    goto/16 :goto_2a

    :catch_131
    move-exception v0

    goto/16 :goto_1f

    :catch_134
    move-exception v0

    goto/16 :goto_14
.end method
