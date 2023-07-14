.class public final Lcom/google/android/gms/internal/zzih;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzih$zza;
    }
.end annotation


# static fields
.field static final zzamr:Ljava/lang/Object;

.field static final zzbyt:J

.field static zzbyu:Z

.field static zzbyv:Lcom/google/android/gms/internal/zzfs;


# instance fields
.field final mContext:Landroid/content/Context;

.field final zzbfx:Lcom/google/android/gms/ads/internal/zzq;

.field final zzbgd:Lcom/google/android/gms/internal/zzas;

.field final zzbxr:Lcom/google/android/gms/internal/zzju$zza;

.field zzbyw:Lcom/google/android/gms/internal/zzfq;

.field zzbyx:Lcom/google/android/gms/internal/zzfs$zze;

.field zzbyy:Lcom/google/android/gms/internal/zzfp;

.field zzbyz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzih;->zzbyt:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzih;->zzamr:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzih;->zzbyu:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzih;->zzbyv:Lcom/google/android/gms/internal/zzfs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyz:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzih;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzih;->zzbgd:Lcom/google/android/gms/internal/zzas;

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcf:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyz:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzih;)Lcom/google/android/gms/ads/internal/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    return-object v0
.end method

.method static zzd(Lcom/google/android/gms/internal/zzju$zza;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbac:Lcom/google/android/gms/internal/zzcy;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbto:Ljava/lang/String;

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https:"

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v1, "http:"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzih$zza;)V
    .locals 3

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyz:Z

    if-eqz v0, :cond_1

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyx:Lcom/google/android/gms/internal/zzfs$zze;

    .line 0
    if-nez v0, :cond_0

    const-string/jumbo v0, "SharedJavascriptEngine not initialized"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzih$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzih$1;-><init>(Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/internal/zzih$zza;)V

    new-instance v2, Lcom/google/android/gms/internal/zzih$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzih$2;-><init>(Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/internal/zzih$zza;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfs$zze;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    goto :goto_0

    .line 3000
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyy:Lcom/google/android/gms/internal/zzfp;

    .line 0
    if-nez v0, :cond_2

    const-string/jumbo v0, "JavascriptEngine not initialized"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzih$zza;->zze(Lcom/google/android/gms/internal/zzft;)V

    goto :goto_0
.end method
