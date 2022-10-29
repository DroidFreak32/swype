.class synthetic Lcom/nuance/connect/service/manager/CategoryManager$4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

.field static final synthetic $SwitchMap$com$nuance$connect$service$manager$CategoryManager$SubManagerDefinition:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/nuance/connect/internal/common/InternalMessages;->values()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    :try_start_9
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_PROCESS_CATEGORIES:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_127

    :goto_14
    :try_start_14
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_124

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_121

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD_LIST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_11e

    :goto_35
    :try_start_35
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_NO_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_11b

    :goto_40
    :try_start_40
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_NO_DOWNLOAD_LIST:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_118

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_UNSUBSCRIBE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_115

    :goto_56
    :try_start_56
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_112

    :goto_62
    :try_start_62
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATALOG_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_10f

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CATEGORY_HOTWORD_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_10c

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_LIST_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_109

    :goto_86
    :try_start_86
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_CDB_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_107

    :goto_92
    :try_start_92
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL_COMPLETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_105

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_103

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CATALOG_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_101

    :goto_b6
    invoke-static {}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->values()[Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$service$manager$CategoryManager$SubManagerDefinition:[I

    :try_start_bf
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$service$manager$CategoryManager$SubManagerDefinition:[I

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_ca} :catch_ff

    :goto_ca
    :try_start_ca
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$service$manager$CategoryManager$SubManagerDefinition:[I

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CHINESE_DATABASES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ca .. :try_end_d5} :catch_fd

    :goto_d5
    :try_start_d5
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$service$manager$CategoryManager$SubManagerDefinition:[I

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_UPDATES:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_e0} :catch_fb

    :goto_e0
    :try_start_e0
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$service$manager$CategoryManager$SubManagerDefinition:[I

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CATALOG:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_eb} :catch_f9

    :goto_eb
    :try_start_eb
    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$4;->$SwitchMap$com$nuance$connect$service$manager$CategoryManager$SubManagerDefinition:[I

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_CUSTOM_CONFIG:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {v1}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_eb .. :try_end_f6} :catch_f7

    :goto_f6
    return-void

    :catch_f7
    move-exception v0

    goto :goto_f6

    :catch_f9
    move-exception v0

    goto :goto_eb

    :catch_fb
    move-exception v0

    goto :goto_e0

    :catch_fd
    move-exception v0

    goto :goto_d5

    :catch_ff
    move-exception v0

    goto :goto_ca

    :catch_101
    move-exception v0

    goto :goto_b6

    :catch_103
    move-exception v0

    goto :goto_aa

    :catch_105
    move-exception v0

    goto :goto_9e

    :catch_107
    move-exception v0

    goto :goto_92

    :catch_109
    move-exception v0

    goto/16 :goto_86

    :catch_10c
    move-exception v0

    goto/16 :goto_7a

    :catch_10f
    move-exception v0

    goto/16 :goto_6e

    :catch_112
    move-exception v0

    goto/16 :goto_62

    :catch_115
    move-exception v0

    goto/16 :goto_56

    :catch_118
    move-exception v0

    goto/16 :goto_4b

    :catch_11b
    move-exception v0

    goto/16 :goto_40

    :catch_11e
    move-exception v0

    goto/16 :goto_35

    :catch_121
    move-exception v0

    goto/16 :goto_2a

    :catch_124
    move-exception v0

    goto/16 :goto_1f

    :catch_127
    move-exception v0

    goto/16 :goto_14
.end method
