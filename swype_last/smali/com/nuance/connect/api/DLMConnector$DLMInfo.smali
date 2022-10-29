.class public Lcom/nuance/connect/api/DLMConnector$DLMInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/DLMConnector$DLMInformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/DLMConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLMInfo"
.end annotation


# instance fields
.field private coreId:I

.field private reserved:I

.field private size:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/connect/api/DLMConnector$DLMInfo;->coreId:I

    iput p2, p0, Lcom/nuance/connect/api/DLMConnector$DLMInfo;->size:I

    iput p3, p0, Lcom/nuance/connect/api/DLMConnector$DLMInfo;->reserved:I

    return-void
.end method


# virtual methods
.method public getCoreId()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/api/DLMConnector$DLMInfo;->coreId:I

    return v0
.end method

.method public getReserved()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/api/DLMConnector$DLMInfo;->reserved:I

    return v0
.end method

.method public getSize()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/api/DLMConnector$DLMInfo;->size:I

    return v0
.end method
