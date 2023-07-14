.class final Lcom/google/android/gms/internal/zzfs$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfs$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzblz:Lcom/google/android/gms/internal/zzfp;

.field final synthetic zzbma:Lcom/google/android/gms/internal/zzfs$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs$1;Lcom/google/android/gms/internal/zzfp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzblz:Lcom/google/android/gms/internal/zzfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .locals 3
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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzfs;->zzail:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzblx:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzd;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzblx:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzd;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 2000
    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/gms/internal/zzfs;->zzblv:I

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs;->zzbls:Lcom/google/android/gms/internal/zzkl;

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzblz:Lcom/google/android/gms/internal/zzfp;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzkl;->zzd(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzblx:Lcom/google/android/gms/internal/zzfs$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzblz:Lcom/google/android/gms/internal/zzfp;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzfs$zzd;->zzg(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs$1$2;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzfs$1;->zzblx:Lcom/google/android/gms/internal/zzfs$zzd;

    .line 4000
    iput-object v2, v0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    .line 0
    const-string/jumbo v0, "Successfully loaded JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
