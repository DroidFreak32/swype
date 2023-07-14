.class public Lcom/nuance/connect/comm/PersistantConnectionConfig;
.super Ljava/lang/Object;


# instance fields
.field private compressionThreshold:I

.field private timeout:I

.field private url:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;II)Lcom/nuance/connect/comm/PersistantConnectionConfig;
    .locals 1

    new-instance v0, Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-direct {v0}, Lcom/nuance/connect/comm/PersistantConnectionConfig;-><init>()V

    iput-object p0, v0, Lcom/nuance/connect/comm/PersistantConnectionConfig;->url:Ljava/lang/String;

    iput p1, v0, Lcom/nuance/connect/comm/PersistantConnectionConfig;->timeout:I

    iput p2, v0, Lcom/nuance/connect/comm/PersistantConnectionConfig;->compressionThreshold:I

    return-object v0
.end method


# virtual methods
.method public getCompressionThreshold()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/comm/PersistantConnectionConfig;->compressionThreshold:I

    return v0
.end method

.method public getTimeoutSeconds()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/comm/PersistantConnectionConfig;->timeout:I

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/PersistantConnectionConfig;->url:Ljava/lang/String;

    return-object v0
.end method
