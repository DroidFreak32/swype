.class public Lcom/google/android/gms/ads/internal/client/zzl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/client/zzl$zza;
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private zzauz:Lcom/google/android/gms/ads/internal/client/zzx;

.field private final zzava:Lcom/google/android/gms/ads/internal/client/zze;

.field private final zzavb:Lcom/google/android/gms/ads/internal/client/zzd;

.field private final zzavc:Lcom/google/android/gms/ads/internal/client/zzai;

.field private final zzavd:Lcom/google/android/gms/internal/zzef;

.field private final zzave:Lcom/google/android/gms/ads/internal/reward/client/zzf;

.field private final zzavf:Lcom/google/android/gms/internal/zzhu;

.field private final zzavg:Lcom/google/android/gms/internal/zzhh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zze;Lcom/google/android/gms/ads/internal/client/zzd;Lcom/google/android/gms/ads/internal/client/zzai;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/reward/client/zzf;Lcom/google/android/gms/internal/zzhu;Lcom/google/android/gms/internal/zzhh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzava:Lcom/google/android/gms/ads/internal/client/zze;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzavb:Lcom/google/android/gms/ads/internal/client/zzd;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzavc:Lcom/google/android/gms/ads/internal/client/zzai;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzavd:Lcom/google/android/gms/internal/zzef;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzave:Lcom/google/android/gms/ads/internal/reward/client/zzf;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzavf:Lcom/google/android/gms/internal/zzhu;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzavg:Lcom/google/android/gms/internal/zzhh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zzx;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzl;->zzil()Lcom/google/android/gms/ads/internal/client/zzx;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/google/android/gms/ads/internal/client/zzl$zza",
            "<TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Google Play Services is not available"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcv(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/client/zzl$zza;->zziu()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/client/zzl$zza;->zzin()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/client/zzl$zza;->zzin()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/client/zzl$zza;->zziu()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static zza(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v1, "useClientJar flag not found in activity intent extras."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic zza$69ae8221(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 0
    .line 1000
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "action"

    const-string/jumbo v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "flow"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 0
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzava:Lcom/google/android/gms/ads/internal/client/zze;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzavb:Lcom/google/android/gms/ads/internal/client/zzd;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/client/zzai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzavc:Lcom/google/android/gms/ads/internal/client/zzai;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/zzef;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzavd:Lcom/google/android/gms/internal/zzef;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/ads/internal/reward/client/zzf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzave:Lcom/google/android/gms/ads/internal/reward/client/zzf;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/zzhu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzavf:Lcom/google/android/gms/internal/zzhu;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/zzhh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzavg:Lcom/google/android/gms/internal/zzhh;

    return-object v0
.end method

.method private static zzik()Lcom/google/android/gms/ads/internal/client/zzx;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Lcom/google/android/gms/ads/internal/client/zzl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string/jumbo v0, "ClientApi class is not an instance of IBinder"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcx(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzx$zza;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Failed to instantiate ClientApi class."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private zzil()Lcom/google/android/gms/ads/internal/client/zzx;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzauz:Lcom/google/android/gms/ads/internal/client/zzx;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzik()Lcom/google/android/gms/ads/internal/client/zzx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzauz:Lcom/google/android/gms/ads/internal/client/zzx;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzauz:Lcom/google/android/gms/ads/internal/client/zzx;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/client/zzl$2;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzu;

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzl$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzl$1;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)V

    invoke-static {p1, v6, v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzu;

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzl$7;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Lcom/google/android/gms/internal/zzgj;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/reward/client/zzb;

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzdt;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$6;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/ads/internal/client/zzl$6;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdt;

    return-object v0
.end method

.method public zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/client/zzs;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/client/zzl$4;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzs;

    return-object v0
.end method

.method public zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzl$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzl$3;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)V

    invoke-static {p1, v6, v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzu;

    return-object v0
.end method

.method public zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzhp;
    .locals 2

    const-string/jumbo v0, "com.google.android.gms.ads.internal.purchase.useClientJar"

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/client/zzl$8;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/app/Activity;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhp;

    return-object v0
.end method

.method public zzc(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzhi;
    .locals 2

    const-string/jumbo v0, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/client/zzl$9;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/app/Activity;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhi;

    return-object v0
.end method

.method public zzl(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzz;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzl$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/client/zzl$5;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/client/zzl$zza;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzz;

    return-object v0
.end method
