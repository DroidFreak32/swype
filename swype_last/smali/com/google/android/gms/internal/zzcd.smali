.class public abstract Lcom/google/android/gms/internal/zzcd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcd$zzb;,
        Lcom/google/android/gms/internal/zzcd$zza;,
        Lcom/google/android/gms/internal/zzcd$zzc;,
        Lcom/google/android/gms/internal/zzcd$zzd;
    }
.end annotation


# instance fields
.field protected final zzail:Ljava/lang/Object;

.field private zzane:Z

.field private zzaqb:Lcom/google/android/gms/internal/zzkr;

.field private final zzaqh:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzju;",
            ">;"
        }
    .end annotation
.end field

.field private zzaqi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaqj:Lcom/google/android/gms/internal/zzck;

.field protected final zzaqk:Lcom/google/android/gms/internal/zzcf;

.field private final zzaql:Landroid/content/Context;

.field private final zzaqm:Landroid/view/WindowManager;

.field private final zzaqn:Landroid/os/PowerManager;

.field private final zzaqo:Landroid/app/KeyguardManager;

.field private zzaqp:Lcom/google/android/gms/internal/zzch;

.field private zzaqq:Z

.field private zzaqr:Z

.field private zzaqs:Z

.field private zzaqt:Z

.field private zzaqu:Z

.field zzaqv:Landroid/content/BroadcastReceiver;

.field final zzaqw:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzce;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaqx:Lcom/google/android/gms/internal/zzep;

.field private final zzaqy:Lcom/google/android/gms/internal/zzep;

.field private final zzaqz:Lcom/google/android/gms/internal/zzep;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;)V
    .registers 13

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzane:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqr:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqw:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/gms/internal/zzcd$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcd$2;-><init>(Lcom/google/android/gms/internal/zzcd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqx:Lcom/google/android/gms/internal/zzep;

    new-instance v0, Lcom/google/android/gms/internal/zzcd$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcd$3;-><init>(Lcom/google/android/gms/internal/zzcd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqy:Lcom/google/android/gms/internal/zzep;

    new-instance v0, Lcom/google/android/gms/internal/zzcd$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcd$4;-><init>(Lcom/google/android/gms/internal/zzcd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqz:Lcom/google/android/gms/internal/zzep;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqh:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcd;->zzaqj:Lcom/google/android/gms/internal/zzck;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqs:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqu:Z

    new-instance v0, Lcom/google/android/gms/internal/zzkr;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzkr;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqb:Lcom/google/android/gms/internal/zzkr;

    new-instance v0, Lcom/google/android/gms/internal/zzcf;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaur:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/android/gms/internal/zzju;->zzcie:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzju;->zzho()Z

    move-result v5

    iget-boolean v6, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauu:Z

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcf;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqm:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqn:Landroid/os/PowerManager;

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqo:Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd;->zzaql:Landroid/content/Context;

    return-void
.end method

.method private static zza(ILandroid/util/DisplayMetrics;)I
    .registers 4

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p0

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method private zzgz()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqp:Lcom/google/android/gms/internal/zzch;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqp:Lcom/google/android/gms/internal/zzch;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzch;->zza(Lcom/google/android/gms/internal/zzcd;)V

    :cond_9
    return-void
.end method

.method private zzhc()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_10
.end method

.method private zzhd()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "afmaVersion"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    .line 6000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzcf;->zzarj:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "activeViewJSON"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    .line 7000
    iget-object v3, v3, Lcom/google/android/gms/internal/zzcf;->zzarh:Lorg/json/JSONObject;

    .line 0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "adFormat"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    .line 8000
    iget-object v3, v3, Lcom/google/android/gms/internal/zzcf;->zzarg:Ljava/lang/String;

    .line 0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "hashCode"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    .line 9000
    iget-object v3, v3, Lcom/google/android/gms/internal/zzcf;->zzari:Ljava/lang/String;

    .line 0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isMraid"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    .line 10000
    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzcf;->zzark:Z

    .line 0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isStopped"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqr:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isPaused"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcd;->zzane:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isScreenOn"

    .line 11000
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqn:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isNative"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    .line 12000
    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzcf;->zzarl:Z

    .line 0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method protected destroy()V
    .registers 6

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcd;->zzhc()V

    .line 1000
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2b

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqv:Landroid/content/BroadcastReceiver;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_28

    if-eqz v0, :cond_17

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaql:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_14} :catch_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_2e
    .catchall {:try_start_d .. :try_end_14} :catchall_28

    :goto_14
    const/4 v0, 0x0

    :try_start_15
    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqv:Landroid/content/BroadcastReceiver;

    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_28

    .line 0
    const/4 v0, 0x0

    :try_start_19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqs:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcd;->zzgz()V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_2b

    return-void

    .line 1000
    :catch_20
    move-exception v0

    :try_start_21
    const-string/jumbo v3, "Failed trying to unregister the receiver"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :catchall_28
    move-exception v0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0

    .line 0
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2b

    throw v0

    .line 1000
    :catch_2e
    move-exception v0

    :try_start_2f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzjx;->zzb(Ljava/lang/Throwable;Z)V
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_28

    goto :goto_14
.end method

.method public onGlobalLayout()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    return-void
.end method

.method public onScrollChanged()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    return-void
.end method

.method public final pause()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzane:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public final resume()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzane:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public final stop()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqr:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzce;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqw:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzch;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqp:Lcom/google/android/gms/internal/zzch;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected final zza(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v2, "units"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzcd;->zzb(Lorg/json/JSONObject;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string/jumbo v1, "Skipping active view message."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method protected final zza$6e25d58()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    return-void
.end method

.method protected abstract zzb(Lorg/json/JSONObject;)V
.end method

.method protected final zzb(Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    const-string/jumbo v0, "hashCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    .line 5000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzcf;->zzari:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_4

    :cond_20
    move v0, v1

    goto :goto_4
.end method

.method protected final zzc(Lcom/google/android/gms/internal/zzft;)V
    .registers 4

    const-string/jumbo v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqx:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqy:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqz:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    return-void
.end method

.method protected final zzd(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 0
    if-nez p1, :cond_24

    .line 13000
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcd;->zzhd()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "isAttachedToWindow"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "isScreenOn"

    .line 14000
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqn:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    .line 13000
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "isVisible"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 0
    :goto_23
    return-object v0

    :cond_24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzki;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    new-array v2, v3, [I

    new-array v0, v3, [I

    :try_start_30
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_21b

    :goto_36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aget v0, v2, v5

    iput v0, v4, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x1

    aget v0, v2, v0

    iput v0, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v5, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v8

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcd;->zzhd()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v10, "windowVisibility"

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "isAttachedToWindow"

    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v10, "viewBox"

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v12, "top"

    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "bottom"

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "left"

    iget v13, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "right"

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v2

    invoke-virtual {v11, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "adBox"

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v11, "top"

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "bottom"

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "left"

    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "right"

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "globalVisibleBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v10, "top"

    iget v11, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v10, "bottom"

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v10, "left"

    iget v11, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v10, "right"

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-virtual {v4, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "globalVisibleBoxVisible"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "localVisibleBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "top"

    iget v6, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "bottom"

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "left"

    iget v6, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "right"

    iget v6, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "localVisibleBoxVisible"

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "hitBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "top"

    iget v6, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "bottom"

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "left"

    iget v6, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "right"

    iget v6, v9, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "screenDensity"

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isVisible"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqn:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcd;->zzaqo:Landroid/app/KeyguardManager;

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_23

    :catch_21b
    move-exception v0

    const-string/jumbo v3, "Failure getting view location."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36
.end method

.method protected final zzd(Lcom/google/android/gms/internal/zzft;)V
    .registers 4

    const-string/jumbo v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqz:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqy:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqx:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    return-void
.end method

.method protected final zzgw()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqv:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzcd$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzcd$1;-><init>(Lcom/google/android/gms/internal/zzcd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqv:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaql:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v1

    goto :goto_8

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public zzgy()V
    .registers 5

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqs:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqt:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3c

    .line 2000
    :try_start_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcd;->zzhd()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "doneReasonCode"

    const-string/jumbo v3, "u"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zza(Lorg/json/JSONObject;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1a} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_1a} :catch_3f
    .catchall {:try_start_a .. :try_end_1a} :catchall_3c

    :goto_1a
    :try_start_1a
    const-string/jumbo v2, "Untracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Lcom/google/android/gms/internal/zzcf;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcf;->zzari:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    :cond_32
    monitor-exit v1

    return-void

    :catch_34
    move-exception v0

    const-string/jumbo v2, "JSON failure while processing active view data."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_1a .. :try_end_3e} :catchall_3c

    throw v0

    :catch_3f
    move-exception v0

    :try_start_40
    const-string/jumbo v2, "Failure while processing active view data."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_3c

    goto :goto_2f
.end method

.method public final zzha()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqs:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected abstract zzhe()Z
.end method

.method protected final zzk(I)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzhe()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqs:Z

    if-nez v2, :cond_11

    :cond_f
    monitor-exit v3

    :goto_10
    return-void

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqj:Lcom/google/android/gms/internal/zzck;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzck;->zzhh()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_45

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqn:Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcd;->zzaqo:Landroid/app/KeyguardManager;

    invoke-static {v4, v2, v5}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v2

    if-eqz v2, :cond_45

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_45

    move v2, v1

    :goto_33
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqu:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcd;->zzaqj:Lcom/google/android/gms/internal/zzck;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzck;->zzhi()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzgy()V

    monitor-exit v3

    goto :goto_10

    :catchall_42
    move-exception v0

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_42

    throw v0

    :cond_45
    move v2, v0

    goto :goto_33

    :cond_47
    if-ne p1, v1, :cond_4a

    move v0, v1

    :cond_4a
    if-eqz v0, :cond_5a

    :try_start_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqb:Lcom/google/android/gms/internal/zzkr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkr;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqu:Z

    if-ne v2, v0, :cond_5a

    monitor-exit v3

    goto :goto_10

    :cond_5a
    if-nez v2, :cond_64

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqu:Z

    if-nez v0, :cond_64

    if-ne p1, v1, :cond_64

    monitor-exit v3
    :try_end_63
    .catchall {:try_start_4c .. :try_end_63} :catchall_42

    goto :goto_10

    :cond_64
    :try_start_64
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzcd;->zzd(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zza(Lorg/json/JSONObject;)V
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_6b} :catch_b2
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_6b} :catch_aa
    .catchall {:try_start_64 .. :try_end_6b} :catchall_42

    .line 4000
    :goto_6b
    :try_start_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqj:Lcom/google/android/gms/internal/zzck;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzck;->zzhj()Lcom/google/android/gms/internal/zzck;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzck;->zzhh()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eq v1, v0, :cond_a4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcd;->zzhc()V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqq:Z

    if-eqz v2, :cond_94

    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_9d

    :cond_94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqq:Z

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_9d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Ljava/lang/ref/WeakReference;

    .line 0
    :cond_a4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcd;->zzgz()V

    monitor-exit v3

    goto/16 :goto_10

    :catch_aa
    move-exception v0

    :goto_ab
    const-string/jumbo v1, "Active view update failed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b1
    .catchall {:try_start_6b .. :try_end_b1} :catchall_42

    goto :goto_6b

    :catch_b2
    move-exception v0

    goto :goto_ab
.end method
