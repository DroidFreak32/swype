.class synthetic Lcom/nuance/connect/internal/CategoryServiceInternal$12;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/CategoryServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$connect$api$CatalogService$CatalogItem$Type:[I

.field static final synthetic $SwitchMap$com$nuance$connect$internal$CategoryServiceInternal$CategoryEvents:[I

.field static final synthetic $SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->values()[Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$api$CatalogService$CatalogItem$Type:[I

    :try_start_9
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$api$CatalogService$CatalogItem$Type:[I

    sget-object v1, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v1}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_179

    :goto_14
    :try_start_14
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$api$CatalogService$CatalogItem$Type:[I

    sget-object v1, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->KEYBOARD:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v1}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_176

    :goto_1f
    invoke-static {}, Lcom/nuance/connect/internal/common/InternalMessages;->values()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    :try_start_28
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_173

    :goto_33
    :try_start_33
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_170

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ON_DICTIONARIES_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_16d

    :goto_49
    :try_start_49
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_16a

    :goto_54
    :try_start_54
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_167

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_164

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_161

    :goto_75
    :try_start_75
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_81} :catch_15e

    :goto_81
    :try_start_81
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_MAX_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8d} :catch_15b

    :goto_8d
    :try_start_8d
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ADD_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_99} :catch_158

    :goto_99
    :try_start_99
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPDATE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a5} :catch_155

    :goto_a5
    :try_start_a5
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_REMOVE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_b1} :catch_152

    :goto_b1
    :try_start_b1
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_NOTIFY_LIVING_LANGUAGE_UPDATE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bd} :catch_14f

    :goto_bd
    :try_start_bd
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_c9} :catch_14c

    :goto_c9
    :try_start_c9
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATALOG_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_d5} :catch_14a

    :goto_d5
    :try_start_d5
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CATALOG_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_e1} :catch_148

    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATALOG_LOCATION_CHANGED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ed} :catch_146

    :goto_ed
    :try_start_ed
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATALOG_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f9} :catch_144

    :goto_f9
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->values()[Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$CategoryServiceInternal$CategoryEvents:[I

    :try_start_102
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$CategoryServiceInternal$CategoryEvents:[I

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_DICTIONARIES_UPDATED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_102 .. :try_end_10d} :catch_142

    :goto_10d
    :try_start_10d
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$CategoryServiceInternal$CategoryEvents:[I

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOGS_CHANGED:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_118} :catch_140

    :goto_118
    :try_start_118
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$CategoryServiceInternal$CategoryEvents:[I

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOG_PRICES_SET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_123
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_123} :catch_13e

    :goto_123
    :try_start_123
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$CategoryServiceInternal$CategoryEvents:[I

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ON_CATALOG_PRICES_RESET:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_123 .. :try_end_12e} :catch_13c

    :goto_12e
    :try_start_12e
    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$CategoryServiceInternal$CategoryEvents:[I

    sget-object v1, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->UNKNOWN:Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_139
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_139} :catch_13a

    :goto_139
    return-void

    :catch_13a
    move-exception v0

    goto :goto_139

    :catch_13c
    move-exception v0

    goto :goto_12e

    :catch_13e
    move-exception v0

    goto :goto_123

    :catch_140
    move-exception v0

    goto :goto_118

    :catch_142
    move-exception v0

    goto :goto_10d

    :catch_144
    move-exception v0

    goto :goto_f9

    :catch_146
    move-exception v0

    goto :goto_ed

    :catch_148
    move-exception v0

    goto :goto_e1

    :catch_14a
    move-exception v0

    goto :goto_d5

    :catch_14c
    move-exception v0

    goto/16 :goto_c9

    :catch_14f
    move-exception v0

    goto/16 :goto_bd

    :catch_152
    move-exception v0

    goto/16 :goto_b1

    :catch_155
    move-exception v0

    goto/16 :goto_a5

    :catch_158
    move-exception v0

    goto/16 :goto_99

    :catch_15b
    move-exception v0

    goto/16 :goto_8d

    :catch_15e
    move-exception v0

    goto/16 :goto_81

    :catch_161
    move-exception v0

    goto/16 :goto_75

    :catch_164
    move-exception v0

    goto/16 :goto_6a

    :catch_167
    move-exception v0

    goto/16 :goto_5f

    :catch_16a
    move-exception v0

    goto/16 :goto_54

    :catch_16d
    move-exception v0

    goto/16 :goto_49

    :catch_170
    move-exception v0

    goto/16 :goto_3e

    :catch_173
    move-exception v0

    goto/16 :goto_33

    :catch_176
    move-exception v0

    goto/16 :goto_1f

    :catch_179
    move-exception v0

    goto/16 :goto_14
.end method
