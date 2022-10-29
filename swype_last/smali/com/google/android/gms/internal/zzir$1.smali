.class final Lcom/google/android/gms/internal/zzir$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzces:Lcom/google/android/gms/internal/zzir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzir;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzir$1;->zzces:Lcom/google/android/gms/internal/zzir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir$1;->zzces:Lcom/google/android/gms/internal/zzir;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzir;->zzail:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir$1;->zzces:Lcom/google/android/gms/internal/zzir;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzcen:Lcom/google/android/gms/internal/zzkv;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkv;->isDone()Z

    move-result v0

    if-eqz v0, :cond_11

    monitor-exit v1

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzir$1;->zzces:Lcom/google/android/gms/internal/zzir;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzbvq:Ljava/lang/String;

    .line 0
    const-string/jumbo v2, "request_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    monitor-exit v1

    goto :goto_10

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    new-instance v0, Lcom/google/android/gms/internal/zziu;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2}, Lcom/google/android/gms/internal/zziu;-><init>(ILjava/util/Map;)V

    .line 4000
    iget-object v2, v0, Lcom/google/android/gms/internal/zziu;->zzcfz:Ljava/lang/String;

    .line 0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5000
    iget-object v3, v0, Lcom/google/android/gms/internal/zziu;->zzcfu:Ljava/util/List;

    .line 0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " request error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzir$1;->zzces:Lcom/google/android/gms/internal/zzir;

    .line 6000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzir;->zzcen:Lcom/google/android/gms/internal/zzkv;

    .line 0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzkv;->zzh(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_27 .. :try_end_76} :catchall_24

    goto :goto_10
.end method
