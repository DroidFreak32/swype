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
    .registers 3

    invoke-static {}, Lcom/nuance/connect/internal/common/InternalMessages;->values()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    :try_start_9
    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DOCUMENT_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_52

    :goto_14
    invoke-static {}, Lcom/nuance/connect/internal/common/Document$DocumentType;->values()[Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    :try_start_1d
    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_50

    :goto_28
    :try_start_28
    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_4e

    :goto_33
    :try_start_33
    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_4c

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49

    :catch_4c
    move-exception v0

    goto :goto_3e

    :catch_4e
    move-exception v0

    goto :goto_33

    :catch_50
    move-exception v0

    goto :goto_28

    :catch_52
    move-exception v0

    goto :goto_14
.end method
