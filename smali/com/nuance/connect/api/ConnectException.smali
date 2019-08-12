.class public Lcom/nuance/connect/api/ConnectException;
.super Ljava/lang/Exception;


# static fields
.field public static final ACTIVITY_NOT_AVAILABLE:I = 0x66

.field public static final CORE_VERSIONS_NOT_SPECIFIED:I = 0x6a

.field public static final ILLEGAL_STATE:I = 0x6d

.field public static final INVALID_APPLICATION_ID:I = 0x6b

.field public static final INVALID_LIBRARY:I = 0x67

.field public static final LANGUAGE_NOT_AVAILABLE:I = 0x6e

.field public static final LANGUAGE_NOT_SUPPORTED:I = 0x6f

.field public static final NETWORK_PERMISSION_MISSING:I = 0x64

.field public static final REASON_UNSPECIFIED:I = 0x0

.field public static final SDK_LICENSE_EXPIRED:I = 0x6c

.field public static final SERVICE_NOT_AVAILABLE:I = 0x65

.field public static final SERVICE_NOT_STARTED:I = 0x69

.field public static final TOS_NOT_ACCEPTED:I = 0x68

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/api/ConnectException;->reason:I

    iput p1, p0, Lcom/nuance/connect/api/ConnectException;->reason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/api/ConnectException;->reason:I

    iput p1, p0, Lcom/nuance/connect/api/ConnectException;->reason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/api/ConnectException;->reason:I

    iput p1, p0, Lcom/nuance/connect/api/ConnectException;->reason:I

    iput-object p2, p0, Lcom/nuance/connect/api/ConnectException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput v0, p0, Lcom/nuance/connect/api/ConnectException;->reason:I

    iput v0, p0, Lcom/nuance/connect/api/ConnectException;->reason:I

    iput-object p1, p0, Lcom/nuance/connect/api/ConnectException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/api/ConnectException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectException reason: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nuance/connect/api/ConnectException;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Exception: "

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
    .locals 1

    iget v0, p0, Lcom/nuance/connect/api/ConnectException;->reason:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/connect/api/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/api/ConnectException;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/api/ConnectException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
