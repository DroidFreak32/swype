.class synthetic Lcom/nuance/connect/internal/DocumentServiceInternal$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DocumentServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

.field static final synthetic $SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/nuance/connect/internal/common/InternalMessages;->values()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    :try_start_0
    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DOCUMENT_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    invoke-static {}, Lcom/nuance/connect/internal/common/Document$DocumentType;->values()[Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    :try_start_1
    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
