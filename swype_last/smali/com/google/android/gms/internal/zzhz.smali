.class public final Lcom/google/android/gms/internal/zzhz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzhz$zza;
    }
.end annotation


# instance fields
.field private final zzaie:I

.field private final zzaif:I

.field protected final zzbgf:Lcom/google/android/gms/internal/zzlh;

.field final zzbxx:Landroid/os/Handler;

.field final zzbxy:J

.field private zzbxz:J

.field private zzbya:Lcom/google/android/gms/internal/zzli$zza;

.field protected zzbyb:Z

.field protected zzbyc:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzli$zza;Lcom/google/android/gms/internal/zzlh;II)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbxy:J

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbxz:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbxx:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhz;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhz;->zzbya:Lcom/google/android/gms/internal/zzli$zza;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhz;->zzbyb:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhz;->zzbyc:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzhz;->zzaif:I

    iput p3, p0, Lcom/google/android/gms/internal/zzhz;->zzaie:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzli$zza;Lcom/google/android/gms/internal/zzlh;IIB)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzhz;-><init>(Lcom/google/android/gms/internal/zzli$zza;Lcom/google/android/gms/internal/zzlh;II)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhz;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzhz;->zzaie:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzhz;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzhz;->zzaif:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzhz;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbxz:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbxz:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzhz;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbxz:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzhz;)Lcom/google/android/gms/internal/zzli$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbya:Lcom/google/android/gms/internal/zzli$zza;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzhz;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbxy:J

    return-wide v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzhz;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbxx:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhz;->zzqb()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbya:Lcom/google/android/gms/internal/zzli$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhz;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzli$zza;->zza(Lcom/google/android/gms/internal/zzlh;Z)V

    :goto_12
    return-void

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/zzhz$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhz;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzhz$zza;-><init>(Lcom/google/android/gms/internal/zzhz;Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhz$zza;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/zzlr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhz;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccf:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzlr;-><init>(Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/internal/zzlh;Ljava/lang/String;)V

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhz;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzlh;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbto:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    move-object v1, v5

    :goto_1a
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlh;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    return-void

    .line 1000
    :cond_26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbto:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzco(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a
.end method

.method public final declared-synchronized zzqa()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbyb:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzqb()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbyb:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzqc()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhz;->zzbyc:Z

    return v0
.end method
