.class public final Lcom/google/android/gms/internal/zzfs$zzd;
.super Lcom/google/android/gms/internal/zzlb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlb",
        "<",
        "Lcom/google/android/gms/internal/zzfp;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field zzblt:Lcom/google/android/gms/internal/zzkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzkl",
            "<",
            "Lcom/google/android/gms/internal/zzfp;",
            ">;"
        }
    .end annotation
.end field

.field private zzbml:Z

.field private zzbmm:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzkl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzkl",
            "<",
            "Lcom/google/android/gms/internal/zzfp;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlb;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzblt:Lcom/google/android/gms/internal/zzkl;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbml:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbmm:I

    return-void
.end method

.method private zzme()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbmm:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbml:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbmm:I

    if-nez v0, :cond_1

    const-string/jumbo v0, "No reference is left (including root). Cleaning up engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfs$zzd$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfs$zzd$3;-><init>(Lcom/google/android/gms/internal/zzfs$zzd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzla$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzla$zzb;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzfs$zzd;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "There are still references to the engine. Not destroying."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zzmb()Lcom/google/android/gms/internal/zzfs$zzc;
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzfs$zzc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfs$zzc;-><init>(Lcom/google/android/gms/internal/zzfs$zzd;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzfs$zzd$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzfs$zzd$1;-><init>(Lcom/google/android/gms/internal/zzfs$zzd;Lcom/google/android/gms/internal/zzfs$zzc;)V

    new-instance v3, Lcom/google/android/gms/internal/zzfs$zzd$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzfs$zzd$2;-><init>(Lcom/google/android/gms/internal/zzfs$zzd;Lcom/google/android/gms/internal/zzfs$zzc;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/zzfs$zzd;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbmm:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbmm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbmm:I

    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final zzmc()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbmm:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    const-string/jumbo v0, "Releasing 1 reference for JS Engine"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbmm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbmm:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfs$zzd;->zzme()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzmd()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbmm:I

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    const-string/jumbo v0, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfs$zzd;->zzbml:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfs$zzd;->zzme()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
