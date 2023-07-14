.class public final Lcom/google/android/gms/internal/zzkw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzky;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzky",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzcnn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzcnp:Lcom/google/android/gms/internal/zzkz;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkw;->zzcnn:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzkz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzcnp:Lcom/google/android/gms/internal/zzkz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzcnp:Lcom/google/android/gms/internal/zzkz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkz;->zztz()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzcnn:Ljava/lang/Object;

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzcnn:Ljava/lang/Object;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzc(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw;->zzcnp:Lcom/google/android/gms/internal/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkz;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method
