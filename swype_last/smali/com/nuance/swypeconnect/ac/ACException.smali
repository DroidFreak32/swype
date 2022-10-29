.class public Lcom/nuance/swypeconnect/ac/ACException;
.super Ljava/lang/Exception;


# static fields
.field public static final ACTIVITY_NOT_AVAILABLE:I = 0x66

.field public static final CORE_VERSIONS_NOT_SPECIFIED:I = 0x6a

.field public static final DEPENDENCIES_NOT_MET:I = 0x84

.field public static final DISABLED_FEATURE:I = 0x87

.field public static final DLM_ALREADY_BOUND:I = 0x73

.field public static final DOCUMENT_NOT_RENDERED:I = 0x79

.field public static final DOCUMENT_OUT_OF_DATE:I = 0x88

.field public static final FEATURE_NOT_AVAILABLE_IN_CORE:I = 0x7b

.field public static final ILLEGAL_STATE:I = 0x6d

.field public static final INVALID_APPLICATION_ID:I = 0x6b

.field public static final INVALID_CALL:I = 0x80

.field public static final INVALID_CONNECTION_LIMIT:I = 0x71

.field public static final INVALID_CORE:I = 0x7b

.field public static final INVALID_IDLE_TIMEOUT:I = 0x70

.field public static final INVALID_LIBRARY:I = 0x67

.field public static final INVALID_PROPERTY_NAME:I = 0x86

.field public static final INVALID_REFRESH_INTERVAL:I = 0x72

.field public static final INVALID_VALUE:I = 0x7a

.field public static final LANGUAGE_NOT_AVAILABLE:I = 0x6e

.field public static final LANGUAGE_NOT_SUPPORTED:I = 0x6f

.field public static final MISSING_PERMISSION:I = 0x74

.field public static final NETWORK_PERMISSION_MISSING:I = 0x64

.field public static final OUT_OF_BOUNDS:I = 0x83

.field public static final PROPERTY_NOT_FOUND:I = 0x85

.field public static final REASON_UNSPECIFIED:I = 0x0

.field public static final REQUIRED_LEGAL_DOCUMENT_NOT_ACCEPTED:I = 0x7e

.field public static final REQUIRES_LINKED_ACCOUNT:I = 0x7f

.field public static final SDK_ALREADY_STARTED:I = 0x76

.field public static final SDK_LICENSE_EXPIRED:I = 0x6c

.field public static final SDK_SHUTDOWN:I = 0x77

.field public static final SDK_STARTED:I = 0x78

.field public static final SDK_TRIAL_EXPIRED:I = 0x75

.field public static final SERVICE_NOT_AVAILABLE:I = 0x65

.field public static final SERVICE_NOT_STARTED:I = 0x69

.field public static final TOS_NOT_ACCEPTED:I = 0x68

.field public static final TOS_NOT_RENDERED:I = 0x72

.field public static final UNLICENSED:I = 0x81

.field public static final UPDATE_UNAVAILABLE:I = 0x82

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private reason:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACException;->reason:I

    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACException;->reason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACException;->reason:I

    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACException;->reason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACException;->reason:I

    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACException;->reason:I

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACException;->reason:I

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACException;->reason:I

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ACException reason: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACException;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonCode()I
    .registers 2

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACException;->reason:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACException;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    return-object v0
.end method
