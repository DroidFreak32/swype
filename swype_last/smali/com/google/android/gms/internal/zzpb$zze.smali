.class final Lcom/google/android/gms/internal/zzpb$zze;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zze"
.end annotation


# instance fields
.field private mSize:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzpb$zze;->mSize:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpb$zze;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized decrement()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzpb$zze;->mSize:I

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "too many decrements"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    :try_start_11
    iget v0, p0, Lcom/google/android/gms/internal/zzpb$zze;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpb$zze;->mSize:I

    iget v0, p0, Lcom/google/android/gms/internal/zzpb$zze;->mSize:I

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_e

    :cond_1e
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized increment()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzpb$zze;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzpb$zze;->mSize:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
