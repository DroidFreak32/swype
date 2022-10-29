.class final Lcom/google/android/gms/ads/internal/zzg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/internal/zzjw;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakv:Lcom/google/android/gms/ads/internal/zzg;

.field final synthetic zzakw:Lcom/google/android/gms/internal/zzfs;

.field final synthetic zzakx:Ljava/lang/String;

.field final synthetic zzaky:Ljava/lang/String;

.field final synthetic zzakz:Z

.field final synthetic zzala:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzg;Lcom/google/android/gms/internal/zzfs;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzakv:Lcom/google/android/gms/ads/internal/zzg;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzakw:Lcom/google/android/gms/internal/zzfs;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzakx:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzaky:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzakz:Z

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzala:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzakw:Lcom/google/android/gms/internal/zzfs;

    .line 1000
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfs;->zzc(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v0

    .line 0
    new-instance v1, Lcom/google/android/gms/ads/internal/zzg$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzg$2$1;-><init>(Lcom/google/android/gms/ads/internal/zzg$2;)V

    new-instance v2, Lcom/google/android/gms/internal/zzla$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzla$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfs$zzc;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    return-void
.end method
