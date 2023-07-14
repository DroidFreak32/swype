.class final Lcom/google/android/gms/internal/zzii$4;
.super Lcom/google/android/gms/internal/zzih$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbzk:Lcom/google/android/gms/internal/zzii;

.field final synthetic zzbzp:Lcom/google/android/gms/internal/zzep;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzii;Lcom/google/android/gms/internal/zzep;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzii$4;->zzbzk:Lcom/google/android/gms/internal/zzii;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzii$4;->zzbzp:Lcom/google/android/gms/internal/zzep;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzih$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzft;)V
    .locals 2

    const-string/jumbo v0, "/nativeAdCustomClick"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii$4;->zzbzp:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    return-void
.end method
