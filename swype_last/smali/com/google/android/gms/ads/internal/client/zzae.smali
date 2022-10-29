.class public Lcom/google/android/gms/ads/internal/client/zzae;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzahz:Lcom/google/android/gms/ads/internal/client/zzh;

.field private zzakp:Z

.field private zzaln:Ljava/lang/String;

.field private zzatk:Lcom/google/android/gms/ads/internal/client/zza;

.field private zzatl:Lcom/google/android/gms/ads/AdListener;

.field private zzaux:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private zzauy:[Lcom/google/android/gms/ads/AdSize;

.field private final zzawb:Lcom/google/android/gms/internal/zzgi;

.field private final zzawc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzawd:Lcom/google/android/gms/ads/VideoController;

.field final zzawe:Lcom/google/android/gms/ads/internal/client/zzo;

.field private zzawf:Lcom/google/android/gms/ads/Correlator;

.field private zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

.field private zzawh:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

.field private zzawi:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private zzawj:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private zzawk:Lcom/google/android/gms/ads/VideoOptions;

.field private zzawl:Ljava/lang/String;

.field private zzawm:Landroid/view/ViewGroup;

.field private zzawn:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzih()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;ZB)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .registers 11

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzih()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;ZB)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzgi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawb:Lcom/google/android/gms/internal/zzgi;

    new-instance v0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawd:Lcom/google/android/gms/ads/VideoController;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzae$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzae$1;-><init>(Lcom/google/android/gms/ads/internal/client/zzae;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzo;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawm:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzahz:Lcom/google/android/gms/ads/internal/client/zzh;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawn:Z

    if-eqz p2, :cond_5e

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_2f
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzk;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/ads/internal/client/zzk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/client/zzk;->zzl(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzk;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzaln:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_40} :catch_5f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    aget-object v2, v2, v3

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawn:Z

    .line 1000
    new-instance v4, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v4, v3}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzk(Z)V

    .line 0
    const-string/jumbo v1, "Ads by Google"

    invoke-virtual {v0, p1, v4, v1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    return-void

    :catch_5f
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;ZB)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZZ)V
    .registers 12

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzih()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;ZB)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzih()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;ZB)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/client/zzae;)Lcom/google/android/gms/ads/VideoController;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawd:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method private static zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzk(Z)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->destroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string/jumbo v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzatl:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzij()Lcom/google/android/gms/ads/AdSize;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const-string/jumbo v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_10

    :cond_22
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzaln:Ljava/lang/String;

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzaux:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawh:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->getMediationAdapterClassName()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string/jumbo v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawi:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawd:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawk:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public isLoading()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->isLoading()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    const-string/jumbo v1, "Failed to check if ad is loading."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public pause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->pause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string/jumbo v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public recordManualImpression()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zzdp()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_9

    :catch_14
    move-exception v0

    const-string/jumbo v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public resume()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->resume()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string/jumbo v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzatl:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzo;->zza(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzae;->zza([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzaln:Ljava/lang/String;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzaln:Ljava/lang/String;

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzaux:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzj;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzw;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    :catch_15
    move-exception v0

    const-string/jumbo v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public setCorrelator(Lcom/google/android/gms/ads/Correlator;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawf:Lcom/google/android/gms/ads/Correlator;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawf:Lcom/google/android/gms/ads/Correlator;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_d
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzy;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawf:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/Correlator;->zzdd()Lcom/google/android/gms/ads/internal/client/zzn;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_d

    :catch_18
    move-exception v0

    const-string/jumbo v1, "Failed to set correlator."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawj:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :try_start_d
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawh:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/zzht;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzht;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    :goto_1c
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzho;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_22

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_1c

    :catch_22
    move-exception v0

    const-string/jumbo v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public setManualImpressionsEnabled(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzakp:Z

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzakp:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->setManualImpressionsEnabled(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "Failed to set manual impressions."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawi:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/zzdp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdp;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzdo;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    :catch_15
    move-exception v0

    const-string/jumbo v1, "Failed to set the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawh:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "InAppPurchaseListener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :try_start_d
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawj:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_22

    new-instance v0, Lcom/google/android/gms/internal/zzhx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzhx;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_1e
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzhs;Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_21} :catch_24

    :cond_21
    :goto_21
    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_1e

    :catch_24
    move-exception v0

    const-string/jumbo v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawk:Lcom/google/android/gms/ads/VideoOptions;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-nez p1, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    new-instance v0, Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_b

    :catch_15
    move-exception v0

    const-string/jumbo v1, "Failed to set video options."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zza;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzb;-><init>(Lcom/google/android/gms/ads/internal/client/zza;)V

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzp;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    :catch_15
    move-exception v0

    const-string/jumbo v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzad;)V
    .registers 7

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-nez v0, :cond_cd

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzaln:Ljava/lang/String;

    if-nez v0, :cond_21

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_19

    .line 0
    :catch_19
    move-exception v0

    const-string/jumbo v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    return-void

    .line 3000
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawm:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawn:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/client/zzae;->zzb(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Z

    move-result v2

    if-eqz v2, :cond_eb

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzix()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzaln:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    .line 2000
    :goto_3f
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzc;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzb;-><init>(Lcom/google/android/gms/ads/internal/client/zza;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzp;)V

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzaux:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzj;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzaux:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzj;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzw;)V

    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawh:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/internal/zzht;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawh:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzht;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzho;)V

    :cond_7d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawj:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/internal/zzhx;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawj:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzhx;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzhs;Ljava/lang/String;)V

    :cond_8f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawi:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/internal/zzdp;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawi:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzdp;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzdo;)V

    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawf:Lcom/google/android/gms/ads/Correlator;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawf:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/Correlator;->zzdd()Lcom/google/android/gms/ads/internal/client/zzn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzy;)V

    :cond_ae
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawk:Lcom/google/android/gms/ads/VideoOptions;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawk:Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;)V

    :cond_be
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzakp:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->setManualImpressionsEnabled(Z)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_c5} :catch_19

    .line 4000
    :try_start_c5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zzdm()Lcom/google/android/gms/dynamic/zzd;
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_ca} :catch_105

    move-result-object v0

    if-nez v0, :cond_f9

    .line 0
    :cond_cd
    :goto_cd
    :try_start_cd
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzahz:Lcom/google/android/gms/ads/internal/client/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawm:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzad;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawb:Lcom/google/android/gms/internal/zzgi;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzad;->zzjg()Ljava/util/Map;

    move-result-object v1

    .line 5000
    iput-object v1, v0, Lcom/google/android/gms/internal/zzgi;->zzbpg:Ljava/util/Map;

    goto/16 :goto_20

    .line 3000
    :cond_eb
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzix()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzaln:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawb:Lcom/google/android/gms/internal/zzgi;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/client/zzu;
    :try_end_f6
    .catch Landroid/os/RemoteException; {:try_start_cd .. :try_end_f6} :catch_19

    move-result-object v0

    goto/16 :goto_3f

    .line 4000
    :cond_f9
    :try_start_f9
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawm:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_104} :catch_105

    goto :goto_cd

    :catch_105
    move-exception v0

    :try_start_106
    const-string/jumbo v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10c
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_10c} :catch_19

    goto :goto_cd
.end method

.method public varargs zza([Lcom/google/android/gms/ads/AdSize;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawm:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauy:[Lcom/google/android/gms/ads/AdSize;

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawn:Z

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_19} :catch_1f

    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawm:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_1f
    move-exception v0

    const-string/jumbo v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Z
    .registers 4

    const-string/jumbo v0, "search_v2"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zzjk()Lcom/google/android/gms/ads/internal/client/zzab;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zzdq()Lcom/google/android/gms/ads/internal/client/zzab;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_5

    :catch_d
    move-exception v1

    const-string/jumbo v2, "Failed to retrieve VideoController."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
