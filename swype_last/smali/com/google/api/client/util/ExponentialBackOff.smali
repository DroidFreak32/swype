.class public final Lcom/google/api/client/util/ExponentialBackOff;
.super Ljava/lang/Object;
.source "ExponentialBackOff.java"

# interfaces
.implements Lcom/google/api/client/util/BackOff;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ExponentialBackOff$Builder;
    }
.end annotation


# instance fields
.field public currentIntervalMillis:I

.field public final initialIntervalMillis:I

.field public final maxElapsedTimeMillis:I

.field public final maxIntervalMillis:I

.field public final multiplier:D

.field private final nanoClock:Lcom/google/api/client/util/NanoClock;

.field public final randomizationFactor:D

.field startTimeNanos:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 153
    new-instance v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;

    invoke-direct {v0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ExponentialBackOff;-><init>(Lcom/google/api/client/util/ExponentialBackOff$Builder;)V

    .line 154
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/util/ExponentialBackOff$Builder;)V
    .registers 12
    .param p1, "builder"    # Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iget v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->initialIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    .line 161
    iget-wide v4, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->randomizationFactor:D

    iput-wide v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    .line 162
    iget-wide v4, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->multiplier:D

    iput-wide v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    .line 163
    iget v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    .line 164
    iget v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxElapsedTimeMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    .line 165
    iget-object v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->nanoClock:Lcom/google/api/client/util/NanoClock;

    iput-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    .line 166
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    if-lez v0, :cond_58

    move v0, v1

    .line 1037
    :goto_24
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 167
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_5a

    iget-wide v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    cmpg-double v0, v4, v8

    if-gez v0, :cond_5a

    move v0, v1

    .line 2037
    :goto_36
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 168
    iget-wide v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    cmpl-double v0, v4, v8

    if-ltz v0, :cond_5c

    move v0, v1

    .line 3037
    :goto_40
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 169
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    iget v3, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    if-lt v0, v3, :cond_5e

    move v0, v1

    .line 4037
    :goto_4a
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 170
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    if-lez v0, :cond_60

    .line 5037
    :goto_51
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff;->reset()V

    .line 172
    return-void

    :cond_58
    move v0, v2

    .line 166
    goto :goto_24

    :cond_5a
    move v0, v2

    .line 167
    goto :goto_36

    :cond_5c
    move v0, v2

    .line 168
    goto :goto_40

    :cond_5e
    move v0, v2

    .line 169
    goto :goto_4a

    :cond_60
    move v1, v2

    .line 170
    goto :goto_51
.end method


# virtual methods
.method public final getElapsedTimeMillis()J
    .registers 5

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    invoke-interface {v0}, Lcom/google/api/client/util/NanoClock;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->startTimeNanos:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final nextBackOffMillis()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff;->getElapsedTimeMillis()J

    move-result-wide v2

    iget v1, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_e

    .line 195
    const-wide/16 v2, -0x1

    .line 200
    :goto_d
    return-wide v2

    .line 197
    :cond_e
    iget-wide v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v1, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 5209
    int-to-double v6, v1

    mul-double/2addr v2, v6

    .line 5210
    int-to-double v6, v1

    sub-double/2addr v6, v2

    .line 5211
    int-to-double v8, v1

    add-double/2addr v2, v8

    .line 5215
    sub-double/2addr v2, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v8

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v0, v2

    .line 5288
    .local v0, "randomizedInterval":I
    iget v1, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    int-to-double v2, v1

    iget v1, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    int-to-double v4, v1

    iget-wide v6, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    div-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_36

    .line 5289
    iget v1, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    iput v1, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 200
    :goto_34
    int-to-long v2, v0

    goto :goto_d

    .line 5291
    :cond_36
    iget v1, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    goto :goto_34
.end method

.method public final reset()V
    .registers 3

    .prologue
    .line 176
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 177
    iget-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    invoke-interface {v0}, Lcom/google/api/client/util/NanoClock;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->startTimeNanos:J

    .line 178
    return-void
.end method
