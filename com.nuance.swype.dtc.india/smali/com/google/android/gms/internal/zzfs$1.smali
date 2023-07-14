.class final Lcom/google/android/gms/internal/zzfs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzblw:Lcom/google/android/gms/internal/zzas;

.field final synthetic zzblx:Lcom/google/android/gms/internal/zzfs$zzd;

.field final synthetic zzbly:Lcom/google/android/gms/internal/zzfs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzfs$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfs$1;->zzblw:Lcom/google/android/gms/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfs$1;->zzblx:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs;->mContext:Landroid/content/Context;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzfs;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs$1;->zzblw:Lcom/google/android/gms/internal/zzas;

    .line 3000
    new-instance v3, Lcom/google/android/gms/internal/zzfr;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/zzfr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzas;)V

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/zzfs$1$1;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/zzfs$1$1;-><init>(Lcom/google/android/gms/internal/zzfs$1;Lcom/google/android/gms/internal/zzfp;)V

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzfp;->zza(Lcom/google/android/gms/internal/zzfp$zza;)V

    const-string/jumbo v0, "/jsLoaded"

    new-instance v1, Lcom/google/android/gms/internal/zzfs$1$2;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/zzfs$1$2;-><init>(Lcom/google/android/gms/internal/zzfs$1;Lcom/google/android/gms/internal/zzfp;)V

    invoke-interface {v3, v0, v1}, Lcom/google/android/gms/internal/zzfp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    new-instance v0, Lcom/google/android/gms/internal/zzks;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzks;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzfs$1$3;

    invoke-direct {v1, p0, v3, v0}, Lcom/google/android/gms/internal/zzfs$1$3;-><init>(Lcom/google/android/gms/internal/zzfs$1;Lcom/google/android/gms/internal/zzfp;Lcom/google/android/gms/internal/zzks;)V

    .line 4000
    iput-object v1, v0, Lcom/google/android/gms/internal/zzks;->zzcmu:Ljava/lang/Object;

    .line 0
    const-string/jumbo v0, "/requestReload"

    invoke-interface {v3, v0, v1}, Lcom/google/android/gms/internal/zzfp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs;->zzblr:Ljava/lang/String;

    .line 0
    const-string/jumbo v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs;->zzblr:Ljava/lang/String;

    .line 0
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzfp;->zzbg(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzfs$1$4;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/zzfs$1$4;-><init>(Lcom/google/android/gms/internal/zzfs$1;Lcom/google/android/gms/internal/zzfp;)V

    sget v2, Lcom/google/android/gms/internal/zzfs$zza;->zzbmg:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs;->zzblr:Ljava/lang/String;

    .line 0
    const-string/jumbo v1, "<html>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 8000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs;->zzblr:Ljava/lang/String;

    .line 0
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzfp;->zzbi(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs;->zzblr:Ljava/lang/String;

    .line 0
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzfp;->zzbh(Ljava/lang/String;)V

    goto :goto_0
.end method
