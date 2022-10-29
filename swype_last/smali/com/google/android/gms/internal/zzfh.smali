.class public final Lcom/google/android/gms/internal/zzfh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final zzajv:Lcom/google/android/gms/ads/internal/zzd;

.field final zzajz:Lcom/google/android/gms/internal/zzgj;

.field final zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfh;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfh;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfh;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfh;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    return-void
.end method
