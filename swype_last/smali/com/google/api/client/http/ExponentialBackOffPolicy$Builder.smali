.class public Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
.super Ljava/lang/Object;
.source "ExponentialBackOffPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/ExponentialBackOffPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;

    invoke-direct {v0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 283
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/http/ExponentialBackOffPolicy;
    .registers 2

    .prologue
    .line 287
    new-instance v0, Lcom/google/api/client/http/ExponentialBackOffPolicy;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/ExponentialBackOffPolicy;-><init>(Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;)V

    return-object v0
.end method

.method public final getInitialIntervalMillis()I
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 1349
    iget v0, v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->initialIntervalMillis:I

    .line 295
    return v0
.end method

.method public final getMaxElapsedTimeMillis()I
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 1461
    iget v0, v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxElapsedTimeMillis:I

    .line 407
    return v0
.end method

.method public final getMaxIntervalMillis()I
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 1432
    iget v0, v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxIntervalMillis:I

    .line 378
    return v0
.end method

.method public final getMultiplier()D
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 1409
    iget-wide v0, v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->multiplier:D

    .line 355
    return-wide v0
.end method

.method public final getNanoClock()Lcom/google/api/client/util/NanoClock;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 1486
    iget-object v0, v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->nanoClock:Lcom/google/api/client/util/NanoClock;

    .line 436
    return-object v0
.end method

.method public final getRandomizationFactor()D
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 1381
    iget-wide v0, v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->randomizationFactor:D

    .line 327
    return-wide v0
.end method

.method public setInitialIntervalMillis(I)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .registers 3
    .param p1, "initialIntervalMillis"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 1362
    iput p1, v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->initialIntervalMillis:I

    .line 309
    return-object p0
.end method

.method public setMaxElapsedTimeMillis(I)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .registers 3
    .param p1, "maxElapsedTimeMillis"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 1480
    iput p1, v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxElapsedTimeMillis:I

    .line 427
    return-object p0
.end method

.method public setMaxIntervalMillis(I)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .registers 3
    .param p1, "maxIntervalMillis"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 1446
    iput p1, v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxIntervalMillis:I

    .line 393
    return-object p0
.end method

.method public setMultiplier(D)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .registers 4
    .param p1, "multiplier"    # D

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 1422
    iput-wide p1, v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->multiplier:D

    .line 369
    return-object p0
.end method

.method public setNanoClock(Lcom/google/api/client/util/NanoClock;)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .registers 4
    .param p1, "nanoClock"    # Lcom/google/api/client/util/NanoClock;

    .prologue
    .line 450
    iget-object v1, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1498
    check-cast v0, Lcom/google/api/client/util/NanoClock;

    iput-object v0, v1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->nanoClock:Lcom/google/api/client/util/NanoClock;

    .line 451
    return-object p0
.end method

.method public setRandomizationFactor(D)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .registers 4
    .param p1, "randomizationFactor"    # D

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 1400
    iput-wide p1, v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->randomizationFactor:D

    .line 347
    return-object p0
.end method
