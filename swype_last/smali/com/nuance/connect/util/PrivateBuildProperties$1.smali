.class synthetic Lcom/nuance/connect/util/PrivateBuildProperties$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/PrivateBuildProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->values()[Lcom/nuance/connect/util/BuildProps$BuildProperty;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    :try_start_9
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->LANGUAGES:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_d7

    :goto_14
    :try_start_14
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SUPPORTED_LANGUAGES:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_d4

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->OEM_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_d1

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SDK_VERSION:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_ce

    :goto_35
    :try_start_35
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->APPLICATION_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_cb

    :goto_40
    :try_start_40
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CUSTOMER_STRING:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_c9

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->DEVICE_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_c7

    :goto_56
    :try_start_56
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SWYPER_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_c5

    :goto_62
    :try_start_62
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->LOCALE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_c3

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_ALPHA:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_c1

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_CHINESE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_bf

    :goto_86
    :try_start_86
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_JAPANESE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_bd

    :goto_92
    :try_start_92
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_KOREAN:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_bb

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->DOCUMENT_REVISIONS:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_b9

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/nuance/connect/util/PrivateBuildProperties$1;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ANONYMOUS_BUILD:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_b7

    :goto_b6
    return-void

    :catch_b7
    move-exception v0

    goto :goto_b6

    :catch_b9
    move-exception v0

    goto :goto_aa

    :catch_bb
    move-exception v0

    goto :goto_9e

    :catch_bd
    move-exception v0

    goto :goto_92

    :catch_bf
    move-exception v0

    goto :goto_86

    :catch_c1
    move-exception v0

    goto :goto_7a

    :catch_c3
    move-exception v0

    goto :goto_6e

    :catch_c5
    move-exception v0

    goto :goto_62

    :catch_c7
    move-exception v0

    goto :goto_56

    :catch_c9
    move-exception v0

    goto :goto_4b

    :catch_cb
    move-exception v0

    goto/16 :goto_40

    :catch_ce
    move-exception v0

    goto/16 :goto_35

    :catch_d1
    move-exception v0

    goto/16 :goto_2a

    :catch_d4
    move-exception v0

    goto/16 :goto_1f

    :catch_d7
    move-exception v0

    goto/16 :goto_14
.end method
