.class final Lcom/google/android/gms/internal/zzfs$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfs;->zzb(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzla$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzfp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbly:Lcom/google/android/gms/internal/zzfs;

.field final synthetic zzbmf:Lcom/google/android/gms/internal/zzfs$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzfs$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$2;->zzbly:Lcom/google/android/gms/internal/zzfs;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfs$2;->zzbmf:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$2;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzfs;->zzail:Ljava/lang/Object;

    .line 1000
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$2;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 3000
    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/gms/internal/zzfs;->zzblv:I

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$2;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    .line 1000
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$2;->zzbmf:Lcom/google/android/gms/internal/zzfs$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs$2;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 5000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    .line 1000
    if-eq v0, v2, :cond_0

    const-string/jumbo v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$2;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzd;->zzmd()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$2;->zzbly:Lcom/google/android/gms/internal/zzfs;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs$2;->zzbmf:Lcom/google/android/gms/internal/zzfs$zzd;

    .line 7000
    iput-object v2, v0, Lcom/google/android/gms/internal/zzfs;->zzblu:Lcom/google/android/gms/internal/zzfs$zzd;

    .line 1000
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
