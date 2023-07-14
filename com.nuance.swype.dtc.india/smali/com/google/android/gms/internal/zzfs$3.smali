.class final Lcom/google/android/gms/internal/zzfs$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfs;->zzb(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbly:Lcom/google/android/gms/internal/zzfs;

.field final synthetic zzbmf:Lcom/google/android/gms/internal/zzfs$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzfs$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$3;->zzbly:Lcom/google/android/gms/internal/zzfs;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfs$3;->zzbmf:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$3;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzfs;->zzail:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$3;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 2000
    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/zzfs;->zzblv:I

    .line 0
    const-string/jumbo v0, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$3;->zzbmf:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzd;->zzmd()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
