.class final Lcom/google/android/gms/internal/zzfq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzblf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field final synthetic zzblg:Lcom/google/android/gms/internal/zzfq$zza;

.field final synthetic zzblh:Lcom/google/android/gms/internal/zzas;

.field final synthetic zzbli:Ljava/lang/String;

.field final synthetic zzblj:Lcom/google/android/gms/internal/zzfq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfq;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzfq$zza;Lcom/google/android/gms/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfq$1;->zzblj:Lcom/google/android/gms/internal/zzfq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfq$1;->zzala:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfq$1;->zzblf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfq$1;->zzblg:Lcom/google/android/gms/internal/zzfq$zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzfq$1;->zzblh:Lcom/google/android/gms/internal/zzas;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzfq$1;->zzbli:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq$1;->zzblj:Lcom/google/android/gms/internal/zzfq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfq$1;->zzala:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq$1;->zzblf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfq$1;->zzblg:Lcom/google/android/gms/internal/zzfq$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfq$1;->zzblh:Lcom/google/android/gms/internal/zzas;

    .line 2000
    new-instance v5, Lcom/google/android/gms/internal/zzfr;

    invoke-direct {v5, v1, v2, v4}, Lcom/google/android/gms/internal/zzfr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzas;)V

    iput-object v5, v3, Lcom/google/android/gms/internal/zzfq$zza;->zzblk:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzfq$2;

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/zzfq$2;-><init>(Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzfq$zza;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/zzfp;->zza(Lcom/google/android/gms/internal/zzfp$zza;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq$1;->zzbli:Ljava/lang/String;

    invoke-interface {v5, v0}, Lcom/google/android/gms/internal/zzfp;->zzbh(Ljava/lang/String;)V

    return-void
.end method
