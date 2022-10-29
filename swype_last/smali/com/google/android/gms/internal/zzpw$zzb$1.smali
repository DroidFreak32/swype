.class final Lcom/google/android/gms/internal/zzpw$zzb$1;
.super Lcom/google/android/gms/internal/zzqa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpw$zzb;->zzapl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tT:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic tU:Lcom/google/android/gms/internal/zzpw$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpw$zzb;Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$zzb$1;->tU:Lcom/google/android/gms/internal/zzpw$zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpw$zzb$1;->tT:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqa$zza;-><init>(Lcom/google/android/gms/internal/zzpz;)V

    return-void
.end method


# virtual methods
.method public final zzapl()V
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzb$1;->tU:Lcom/google/android/gms/internal/zzpw$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpw$zzb;->tQ:Lcom/google/android/gms/internal/zzpw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$zzb$1;->tT:Lcom/google/android/gms/common/ConnectionResult;

    .line 1000
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpw;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 0
    return-void
.end method
