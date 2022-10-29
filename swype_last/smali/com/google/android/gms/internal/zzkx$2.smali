.class final Lcom/google/android/gms/internal/zzkx$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkx;->zzn(Ljava/util/List;)Lcom/google/android/gms/internal/zzky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic zzcnu:I

.field final synthetic zzcnv:Lcom/google/android/gms/internal/zzkv;

.field final synthetic zzcnw:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;ILcom/google/android/gms/internal/zzkv;Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkx$2;->zzcnt:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p2, p0, Lcom/google/android/gms/internal/zzkx$2;->zzcnu:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkx$2;->zzcnv:Lcom/google/android/gms/internal/zzkv;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzkx$2;->zzcnw:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkx$2;->zzcnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzkx$2;->zzcnu:I

    if-lt v0, v1, :cond_34

    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzkx$2;->zzcnv:Lcom/google/android/gms/internal/zzkv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkx$2;->zzcnw:Ljava/util/List;

    .line 2000
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzky;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzky;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_2c} :catch_39

    goto :goto_17

    .line 0
    :catch_2d
    move-exception v0

    :goto_2e
    const-string/jumbo v1, "Unable to convert list of futures to a future of list"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    return-void

    :cond_35
    :try_start_35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzkv;->zzh(Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_35 .. :try_end_38} :catch_2d
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_34

    :catch_39
    move-exception v0

    goto :goto_2e
.end method
