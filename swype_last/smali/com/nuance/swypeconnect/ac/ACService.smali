.class public abstract Lcom/nuance/swypeconnect/ac/ACService;
.super Ljava/lang/Object;


# instance fields
.field isShutdown:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dependenciesMet()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method requireInitialization()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract requiresDocument(I)Z
.end method

.method abstract shutdown()V
.end method

.method abstract start()V
.end method
