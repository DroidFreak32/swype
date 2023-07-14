.class public final Lcom/google/android/gms/ads/internal/request/zzd$zza;
.super Lcom/google/android/gms/ads/internal/request/zzd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzla",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/zzc$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/zzd;-><init>(Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zza;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic zzpy()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzpv()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final zzqw()V
    .locals 0

    return-void
.end method

.method public final zzqx()Lcom/google/android/gms/ads/internal/request/zzk;
    .locals 10

    .prologue
    .line 0
    new-instance v8, Lcom/google/android/gms/internal/zzcv;

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzaxy:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/zzcv;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/request/zzd$zza;->mContext:Landroid/content/Context;

    .line 2000
    new-instance v0, Lcom/google/android/gms/internal/zzio;

    new-instance v1, Lcom/google/android/gms/internal/zzjr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzjr;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzcw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcw;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzja;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzja;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzfx;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzfx;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/zzjs;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzjs;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/zzjc;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzjc;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzjb;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzjb;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzio;-><init>(Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzcx;Lcom/google/android/gms/internal/zzix;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zzjt;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zziy;)V

    .line 0
    invoke-static {v9, v8, v0}, Lcom/google/android/gms/internal/zzip;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzio;)Lcom/google/android/gms/internal/zzip;

    move-result-object v0

    return-object v0
.end method
