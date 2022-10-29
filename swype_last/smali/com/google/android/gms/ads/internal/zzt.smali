.class public Lcom/google/android/gms/ads/internal/zzt;
.super Lcom/google/android/gms/ads/internal/client/zzu$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzt$zzb;,
        Lcom/google/android/gms/ads/internal/zzt$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

.field private final zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field private final zzanj:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzbw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzank:Lcom/google/android/gms/ads/internal/zzt$zzb;

.field private zzanl:Landroid/webkit/WebView;

.field private zzanm:Lcom/google/android/gms/internal/zzbw;

.field private zzann:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzu$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzt;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzt;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    .line 1000
    new-instance v0, Lcom/google/android/gms/ads/internal/zzt$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzt$3;-><init>(Lcom/google/android/gms/ads/internal/zzt;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkg;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzky;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Ljava/util/concurrent/Future;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzt$zzb;

    invoke-direct {v0, p3}, Lcom/google/android/gms/ads/internal/zzt$zzb;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/ads/internal/zzt$zzb;

    .line 2000
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zzt;->zzj(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzt$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzt$1;-><init>(Lcom/google/android/gms/ads/internal/zzt;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzt$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzt$2;-><init>(Lcom/google/android/gms/ads/internal/zzt;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzt;Lcom/google/android/gms/internal/zzbw;)Lcom/google/android/gms/internal/zzbw;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanm:Lcom/google/android/gms/internal/zzbw;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzt;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzt;->zzx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/internal/zzbw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanm:Lcom/google/android/gms/internal/zzbw;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzt;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 0
    .line 13000
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 0
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/zzt;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/internal/zzt;)Ljava/util/concurrent/Future;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/internal/zzt;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    return-object v0
.end method

.method private zzx(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanm:Lcom/google/android/gms/internal/zzbw;

    if-nez v0, :cond_5

    :goto_4
    return-object p1

    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanm:Lcom/google/android/gms/internal/zzbw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    .line 12000
    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbw;->zzaip:Lcom/google/android/gms/internal/zzca;

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/zzca;->zzb(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_30

    new-instance v0, Lcom/google/android/gms/internal/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbx;-><init>()V

    throw v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_23} :catch_23
    .catch Lcom/google/android/gms/internal/zzbx; {:try_start_9 .. :try_end_23} :catch_37

    .line 0
    :catch_23
    move-exception v0

    const-string/jumbo v2, "Unable to process ad data"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_2b
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 12000
    :cond_30
    :try_start_30
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_36} :catch_23
    .catch Lcom/google/android/gms/internal/zzbx; {:try_start_30 .. :try_end_36} :catch_37

    goto :goto_2b

    .line 0
    :catch_37
    move-exception v0

    const-string/jumbo v2, "Unable to parse ad click url"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2b
.end method


# virtual methods
.method public destroy()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    const-string/jumbo v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzann:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    return-void
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showInterstitial()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopLoading()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AdSize must be set before initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzalf:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzw;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzy;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzdo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzho;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhs;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    const-string/jumbo v1, "This Search Ad has already been torn down"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/ads/internal/zzt$zzb;

    .line 3000
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatt:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxl:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzanr:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatw:Landroid/os/Bundle;

    if-eqz v1, :cond_79

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatw:Landroid/os/Bundle;

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v0

    :goto_23
    if-eqz v2, :cond_6a

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbdc:Lcom/google/android/gms/internal/zzcy;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 3000
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzans:Ljava/lang/String;

    goto :goto_39

    :cond_52
    const-string/jumbo v5, "csa_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzanq:Ljava/util/Map;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 0
    :cond_6a
    new-instance v0, Lcom/google/android/gms/ads/internal/zzt$zza;

    invoke-direct {v0, p0, v7}, Lcom/google/android/gms/ads/internal/zzt$zza;-><init>(Lcom/google/android/gms/ads/internal/zzt;B)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzt$zza;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzann:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    return v0

    :cond_79
    move-object v2, v0

    goto :goto_23
.end method

.method public zzdm()Lcom/google/android/gms/dynamic/zzd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzani:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    return-object v0
.end method

.method public zzdp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzdq()Lcom/google/android/gms/ads/internal/client/zzab;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method final zzfe()Ljava/lang/String;
    .registers 6

    .prologue
    .line 0
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v0, "https://"

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbdb:Lcom/google/android/gms/internal/zzcy;

    .line 5000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v0, "query"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/ads/internal/zzt$zzb;

    .line 6000
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzanr:Ljava/lang/String;

    .line 0
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v0, "pubId"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/ads/internal/zzt$zzb;

    .line 7000
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzanp:Ljava/lang/String;

    .line 0
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/ads/internal/zzt$zzb;

    .line 8000
    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzanq:Ljava/util/Map;

    .line 0
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3b

    :cond_51
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanm:Lcom/google/android/gms/internal/zzbw;

    if-eqz v0, :cond_7a

    :try_start_59
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanm:Lcom/google/android/gms/internal/zzbw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    .line 9000
    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbw;->zzaip:Lcom/google/android/gms/internal/zzca;

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/zzca;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_b7

    new-instance v0, Lcom/google/android/gms/internal/zzbx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbx;-><init>()V

    throw v0
    :try_end_73
    .catch Lcom/google/android/gms/internal/zzbx; {:try_start_59 .. :try_end_73} :catch_73
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_73} :catch_be

    .line 0
    :catch_73
    move-exception v0

    :goto_74
    const-string/jumbo v2, "Unable to process ad data"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7a
    move-object v0, v1

    :goto_7b
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzt;->zzff()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9000
    :cond_b7
    :try_start_b7
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_bd
    .catch Lcom/google/android/gms/internal/zzbx; {:try_start_b7 .. :try_end_bd} :catch_73
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_bd} :catch_be

    goto :goto_7b

    .line 0
    :catch_be
    move-exception v0

    goto :goto_74
.end method

.method final zzff()Ljava/lang/String;
    .registers 7

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/ads/internal/zzt$zzb;

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzans:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    const-string/jumbo v0, "www.google.com"

    move-object v1, v0

    :goto_e
    const-string/jumbo v0, "https://"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbdb:Lcom/google/android/gms/internal/zzcy;

    .line 11000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_53
    move-object v1, v0

    goto :goto_e
.end method

.method final zzj(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method final zzw(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    :goto_12
    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;I)I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_20} :catch_22

    move-result v0

    goto :goto_12

    :catch_22
    move-exception v1

    goto :goto_12
.end method
