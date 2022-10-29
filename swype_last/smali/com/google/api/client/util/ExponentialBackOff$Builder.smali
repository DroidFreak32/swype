.class public final Lcom/google/api/client/util/ExponentialBackOff$Builder;
.super Ljava/lang/Object;
.source "ExponentialBackOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/ExponentialBackOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public initialIntervalMillis:I

.field public maxElapsedTimeMillis:I

.field public maxIntervalMillis:I

.field public multiplier:D

.field public nanoClock:Lcom/google/api/client/util/NanoClock;

.field public randomizationFactor:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->initialIntervalMillis:I

    .line 315
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->randomizationFactor:D

    .line 318
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->multiplier:D

    .line 324
    const v0, 0xea60

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxIntervalMillis:I

    .line 331
    const v0, 0xdbba0

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxElapsedTimeMillis:I

    .line 334
    sget-object v0, Lcom/google/api/client/util/NanoClock;->SYSTEM:Lcom/google/api/client/util/NanoClock;

    iput-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff$Builder;->nanoClock:Lcom/google/api/client/util/NanoClock;

    .line 337
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/api/client/util/ExponentialBackOff;
    .registers 2

    .prologue
    .line 341
    new-instance v0, Lcom/google/api/client/util/ExponentialBackOff;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/ExponentialBackOff;-><init>(Lcom/google/api/client/util/ExponentialBackOff$Builder;)V

    return-object v0
.end method
