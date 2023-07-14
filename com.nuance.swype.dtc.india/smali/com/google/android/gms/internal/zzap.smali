.class public Lcom/google/android/gms/internal/zzap;
.super Lcom/google/android/gms/internal/zzaq;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field zzafm:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzap;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzaq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzak;->zza$166451eb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zze(Landroid/content/Context;)Lcom/google/android/gms/internal/zzap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzap;->zza(Landroid/content/Context;Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzap;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzap;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzae$zza;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzax;->zzci()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzap;->zzafm:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzap;->zzafm:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzay;->zzo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/zzae$zza;->zzeg:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/zzae$zza;->zzeh:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzap;->zzafm:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/zzae$zza;->zzei:Ljava/lang/Boolean;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzap;->zzafm:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzap;->zzb(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzae$zza;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzap;->zza(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzae$zza;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzax;",
            "Lcom/google/android/gms/internal/zzae$zza;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzax;->zzagg:Ljava/util/concurrent/ExecutorService;

    .line 0
    if-nez v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzax;->zzat()I

    move-result v5

    new-instance v0, Lcom/google/android/gms/internal/zzbh;

    .line 2000
    const-string/jumbo v2, "lLpTIaE60qRmDJilKTnB6dMslmEDCMG+aJ7xPwxeE01HtxatTPhAFeGxL2EFpKqq"

    .line 3000
    const-string/jumbo v3, "LwAyv7R7EEW6/T7p6KlsghmfaITLnkCV2ffewHyZJ4E="

    move-object v1, p1

    move-object v4, p2

    .line 0
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbh;-><init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzae$zza;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    goto :goto_0
.end method

.method protected final zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzae$zza;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
