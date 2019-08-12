.class synthetic Lcom/nuance/connect/service/manager/LanguageManager$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/LanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/nuance/connect/internal/common/InternalMessages;->values()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/service/manager/LanguageManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    :try_start_0
    sget-object v0, Lcom/nuance/connect/service/manager/LanguageManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_LANGAUGE_LIST_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/nuance/connect/service/manager/LanguageManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_REFRESH_LANGUAGE_MANAGER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/nuance/connect/service/manager/LanguageManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/nuance/connect/service/manager/LanguageManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_INSTALLED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/nuance/connect/service/manager/LanguageManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/nuance/connect/service/manager/LanguageManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_REMOVE_LANGUAGES:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/nuance/connect/service/manager/LanguageManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_LANGUAGE_DOWNLOAD_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
