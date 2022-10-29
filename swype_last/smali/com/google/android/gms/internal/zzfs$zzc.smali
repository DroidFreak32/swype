.class public final Lcom/google/android/gms/internal/zzfs$zzc;
.super Lcom/google/android/gms/internal/zzlb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlb",
        "<",
        "Lcom/google/android/gms/internal/zzft;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field final zzbmi:Lcom/google/android/gms/internal/zzfs$zzd;

.field private zzbmj:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfs$zzd;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlb;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs$zzc;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$zzc;->zzbmi:Lcom/google/android/gms/internal/zzfs$zzd;

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs$zzc;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfs$zzc;->zzbmj:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfs$zzc;->zzbmj:Z

    new-instance v0, Lcom/google/android/gms/internal/zzfs$zzc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfs$zzc$1;-><init>(Lcom/google/android/gms/internal/zzfs$zzc;)V

    new-instance v2, Lcom/google/android/gms/internal/zzla$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzla$zzb;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzfs$zzc;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    new-instance v0, Lcom/google/android/gms/internal/zzfs$zzc$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfs$zzc$2;-><init>(Lcom/google/android/gms/internal/zzfs$zzc;)V

    new-instance v2, Lcom/google/android/gms/internal/zzfs$zzc$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzfs$zzc$3;-><init>(Lcom/google/android/gms/internal/zzfs$zzc;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzfs$zzc;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    monitor-exit v1

    goto :goto_8

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method
