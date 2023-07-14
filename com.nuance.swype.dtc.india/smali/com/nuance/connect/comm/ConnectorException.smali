.class public Lcom/nuance/connect/comm/ConnectorException;
.super Ljava/lang/Exception;


# instance fields
.field protected delaySeconds:I

.field protected statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/nuance/connect/comm/ConnectorException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getDelaySeconds()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/comm/ConnectorException;->delaySeconds:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/comm/ConnectorException;->statusCode:I

    return v0
.end method

.method public setDelaySeconds(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/connect/comm/ConnectorException;->delaySeconds:I

    return-void
.end method
