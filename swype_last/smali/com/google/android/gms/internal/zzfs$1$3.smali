.class final Lcom/google/android/gms/internal/zzfs$1$3;
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

.field final synthetic zzbmd:Lcom/google/android/gms/internal/zzks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs$1;Lcom/google/android/gms/internal/zzfp;Lcom/google/android/gms/internal/zzks;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzblz:Lcom/google/android/gms/internal/zzfp;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbmd:Lcom/google/android/gms/internal/zzks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .registers 7
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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzfs;->zzail:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_7
    const-string/jumbo v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 2000
    iget v0, v0, Lcom/google/android/gms/internal/zzfs;->zzblv:I

    .line 0
    if-nez v0, :cond_2d

    const-string/jumbo v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 3000
    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/zzfs;->zzblv:I

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzfs$1;->zzblw:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzfs;->zzb(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzd;

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzblz:Lcom/google/android/gms/internal/zzfp;

    const-string/jumbo v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbmd:Lcom/google/android/gms/internal/zzks;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzks;->zzcmu:Ljava/lang/Object;

    .line 0
    check-cast v0, Lcom/google/android/gms/internal/zzep;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/zzfp;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    monitor-exit v1

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw v0
.end method
