.class public final Lcom/google/android/gms/internal/zzfs$zze;
.super Lcom/google/android/gms/internal/zzlb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zze"
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
.field private zzbmr:Lcom/google/android/gms/internal/zzfs$zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfs$zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$zze;->zzbmr:Lcom/google/android/gms/internal/zzfs$zzc;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$zze;->zzbmr:Lcom/google/android/gms/internal/zzfs$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzc;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfs$zze;->zzbmr:Lcom/google/android/gms/internal/zzfs$zzc;

    return-void
.end method

.method public final getStatus()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$zze;->zzbmr:Lcom/google/android/gms/internal/zzfs$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzc;->getStatus()I

    move-result v0

    return v0
.end method

.method public final reject()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$zze;->zzbmr:Lcom/google/android/gms/internal/zzfs$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzc;->reject()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzla$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzft;",
            ">;",
            "Lcom/google/android/gms/internal/zzla$zza;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$zze;->zzbmr:Lcom/google/android/gms/internal/zzfs$zzc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfs$zzc;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    return-void
.end method

.method public final synthetic zzg(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzft;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$zze;->zzbmr:Lcom/google/android/gms/internal/zzfs$zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfs$zzc;->zzg(Ljava/lang/Object;)V

    .line 0
    return-void
.end method
