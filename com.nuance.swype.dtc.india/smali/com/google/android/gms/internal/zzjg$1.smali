.class final Lcom/google/android/gms/internal/zzjg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjg;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzalq:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field final synthetic zzchr:Lcom/google/android/gms/internal/zzgk;

.field final synthetic zzchs:Lcom/google/android/gms/internal/zzjg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjg;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzgk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjg$1;->zzchs:Lcom/google/android/gms/internal/zzjg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjg$1;->zzalq:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjg$1;->zzchr:Lcom/google/android/gms/internal/zzgk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg$1;->zzchs:Lcom/google/android/gms/internal/zzjg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg$1;->zzalq:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjg$1;->zzchr:Lcom/google/android/gms/internal/zzgk;

    .line 1000
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzjg;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzgk;)V

    .line 0
    return-void
.end method
