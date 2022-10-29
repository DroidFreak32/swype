.class public Lcom/google/android/gms/internal/zzli;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzli$zzc;,
        Lcom/google/android/gms/internal/zzli$zze;,
        Lcom/google/android/gms/internal/zzli$zzd;,
        Lcom/google/android/gms/internal/zzli$zzb;,
        Lcom/google/android/gms/internal/zzli$zza;
    }
.end annotation


# static fields
.field private static final zzcoj:[Ljava/lang/String;

.field private static final zzcok:[Ljava/lang/String;


# instance fields
.field final zzail:Ljava/lang/Object;

.field zzark:Z

.field private zzatk:Lcom/google/android/gms/ads/internal/client/zza;

.field protected zzbgf:Lcom/google/android/gms/internal/zzlh;

.field private zzbhm:Lcom/google/android/gms/internal/zzel;

.field private zzbir:Lcom/google/android/gms/internal/zzet;

.field public zzbit:Lcom/google/android/gms/ads/internal/zze;

.field public zzbiu:Lcom/google/android/gms/internal/zzha;

.field private zzbiw:Lcom/google/android/gms/internal/zzer;

.field private zzbqn:Lcom/google/android/gms/internal/zzhg;

.field public zzbya:Lcom/google/android/gms/internal/zzli$zza;

.field private final zzcol:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzep;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzcom:Lcom/google/android/gms/ads/internal/overlay/zzg;

.field public zzcon:Lcom/google/android/gms/internal/zzli$zzb;

.field zzcoo:Z

.field private zzcop:Z

.field private zzcoq:Lcom/google/android/gms/ads/internal/overlay/zzp;

.field public final zzcor:Lcom/google/android/gms/internal/zzhe;

.field public zzcos:Lcom/google/android/gms/internal/zzli$zzd;

.field protected zzcot:Lcom/google/android/gms/internal/zzjo;

.field private zzcou:Z

.field private zzcov:Z

.field private zzcow:Z

.field private zzcox:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "UNKNOWN"

    aput-object v1, v0, v3

    const-string/jumbo v1, "HOST_LOOKUP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "UNSUPPORTED_AUTH_SCHEME"

    aput-object v1, v0, v5

    const-string/jumbo v1, "AUTHENTICATION"

    aput-object v1, v0, v6

    const-string/jumbo v1, "PROXY_AUTHENTICATION"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "IO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "REDIRECT_LOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "UNSUPPORTED_SCHEME"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "FAILED_SSL_HANDSHAKE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "BAD_URL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "FILE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "FILE_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "TOO_MANY_REQUESTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzli;->zzcoj:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NOT_YET_VALID"

    aput-object v1, v0, v3

    const-string/jumbo v1, "EXPIRED"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ID_MISMATCH"

    aput-object v1, v0, v5

    const-string/jumbo v1, "UNTRUSTED"

    aput-object v1, v0, v6

    const-string/jumbo v1, "DATE_INVALID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "INVALID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzli;->zzcok:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzlh;Z)V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/zzhe;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->zzuf()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzcu;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzhe;-><init>(Lcom/google/android/gms/internal/zzlh;Landroid/content/Context;Lcom/google/android/gms/internal/zzcu;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzli;-><init>(Lcom/google/android/gms/internal/zzlh;ZLcom/google/android/gms/internal/zzhe;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzlh;ZLcom/google/android/gms/internal/zzhe;)V
    .registers 5

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcol:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzail:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcoo:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzli;->zzark:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzli;->zzcor:Lcom/google/android/gms/internal/zzhe;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    return-void
.end method

.method private zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbav:Lcom/google/android/gms/internal/zzcy;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    :goto_12
    return-void

    :cond_13
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "err"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "code"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "host"

    .line 3000
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_53

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 0
    :goto_3b
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzum()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    const-string/jumbo v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_12

    .line 3000
    :cond_53
    const-string/jumbo v0, ""

    goto :goto_3b
.end method

.method private zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzha;->zzmw()Z

    move-result v0

    :goto_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfo()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-virtual {v2, v3, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcot:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_2b

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtj:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtj:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->url:Ljava/lang/String;

    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    goto :goto_b
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzli;)V
    .registers 3

    .prologue
    .line 0
    .line 6000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcop:Z

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_11

    iget v0, p0, Lcom/google/android/gms/internal/zzli;->zzcox:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzli;->zzcox:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzli;->zzve()V

    .line 0
    return-void

    .line 6000
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method static synthetic zza$73fd7829(Lcom/google/android/gms/internal/zzli;)Lcom/google/android/gms/internal/zzli$zzb;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcon:Lcom/google/android/gms/internal/zzli$zzb;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzli;)V
    .registers 2

    .prologue
    .line 0
    .line 7000
    iget v0, p0, Lcom/google/android/gms/internal/zzli;->zzcox:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzli;->zzcox:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzli;->zzve()V

    .line 0
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzli;)V
    .registers 2

    .prologue
    .line 0
    .line 8000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcow:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzli;->zzve()V

    .line 0
    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzli;)Lcom/google/android/gms/internal/zzli$zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcon:Lcom/google/android/gms/internal/zzli$zzb;

    return-object v0
.end method

.method private zzi(Landroid/net/Uri;)V
    .registers 10

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcol:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9c

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkh;->zzf(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzaz(I)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string/jumbo v2, "Received GMSG: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_80

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2d
    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    goto :goto_38

    :cond_80
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    :cond_86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzep;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzep;->zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V

    goto :goto_8a

    :cond_9c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "No GMSG handler found for GMSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    :cond_c1
    return-void
.end method

.method private zzve()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbya:Lcom/google/android/gms/internal/zzli$zza;

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcov:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/zzli;->zzcox:I

    if-lez v0, :cond_10

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcow:Z

    if-eqz v0, :cond_1f

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbya:Lcom/google/android/gms/internal/zzli$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcow:Z

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_19
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzli$zza;->zza(Lcom/google/android/gms/internal/zzlh;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbya:Lcom/google/android/gms/internal/zzli$zza;

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuv()V

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string/jumbo v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzli;->zzi(Landroid/net/Uri;)V

    :cond_35
    return-void

    :cond_36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcou:Z

    if-eqz v0, :cond_14

    const-string/jumbo v0, "Blank page loaded, 1..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuo()V

    monitor-exit v1

    :goto_13
    return-void

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcov:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzli;->zzve()V

    goto :goto_13

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    if-gez p2, :cond_21

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/zzli;->zzcoj:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    sget-object v0, Lcom/google/android/gms/internal/zzli;->zzcoj:[Ljava/lang/String;

    neg-int v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/zzli;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 8

    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_29

    sget-object v1, Lcom/google/android/gms/internal/zzli;->zzcok:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    sget-object v1, Lcom/google/android/gms/internal/zzli;->zzcok:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "ssl_err"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/zzki;->zza(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzli;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void

    :cond_29
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public final reset()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcot:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_7

    iput-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzcot:Lcom/google/android/gms/internal/zzjo;

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcol:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcom:Lcom/google/android/gms/ads/internal/overlay/zzg;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbya:Lcom/google/android/gms/internal/zzli$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbhm:Lcom/google/android/gms/internal/zzel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcoo:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzark:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbiw:Lcom/google/android/gms/internal/zzer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcoq:Lcom/google/android/gms/ads/internal/overlay/zzp;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcon:Lcom/google/android/gms/internal/zzli$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzha;->zzs(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    :cond_3a
    monitor-exit v1

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    const/4 v0, 0x0

    :goto_8
    return v0

    :sswitch_9
    const/4 v0, 0x1

    goto :goto_8

    nop

    :sswitch_data_c
    .sparse-switch
        0x4f -> :sswitch_9
        0x55 -> :sswitch_9
        0x56 -> :sswitch_9
        0x57 -> :sswitch_9
        0x58 -> :sswitch_9
        0x59 -> :sswitch_9
        0x5a -> :sswitch_9
        0x5b -> :sswitch_9
        0x7e -> :sswitch_9
        0x7f -> :sswitch_9
        0x80 -> :sswitch_9
        0x81 -> :sswitch_9
        0x82 -> :sswitch_9
        0xde -> :sswitch_9
    .end sparse-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 0
    const-string/jumbo v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string/jumbo v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzli;->zzi(Landroid/net/Uri;)V

    :goto_37
    move v0, v8

    :goto_38
    return v0

    :cond_39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_3f
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzli;->zzcoo:Z

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_88

    .line 4000
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    const-string/jumbo v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    :cond_61
    move v1, v8

    .line 0
    :goto_62
    if-eqz v1, :cond_88

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v0, :cond_81

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzazu:Lcom/google/android/gms/internal/zzcy;

    .line 5000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    :cond_81
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_38

    .line 4000
    :cond_86
    const/4 v1, 0x0

    goto :goto_62

    .line 0
    :cond_88
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_f2

    :try_start_94
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzul()Lcom/google/android/gms/internal/zzas;

    move-result-object v1

    if-eqz v1, :cond_ac

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzas;->zzc(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzas;->zzb(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_ab
    .catch Lcom/google/android/gms/internal/zzat; {:try_start_94 .. :try_end_ab} :catch_ce

    move-result-object v0

    :cond_ac
    move-object v2, v0

    :goto_ad
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbit:Lcom/google/android/gms/ads/internal/zze;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbit:Lcom/google/android/gms/ads/internal/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zze;->zzel()Z

    move-result v0

    if-eqz v0, :cond_eb

    :cond_b9
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;)V

    goto/16 :goto_37

    :catch_ce
    move-exception v1

    const-string/jumbo v2, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e5

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_e0
    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_ad

    :cond_e5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_e0

    :cond_eb
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbit:Lcom/google/android/gms/ads/internal/zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/zze;->zzt(Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_f2
    const-string/jumbo v1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_108

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_103
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_108
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_103
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzel;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzer;Lcom/google/android/gms/internal/zzet;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzhg;Lcom/google/android/gms/internal/zzjo;)V
    .registers 14

    .prologue
    .line 0
    if-nez p8, :cond_d

    new-instance p8, Lcom/google/android/gms/ads/internal/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p8, v0}, Lcom/google/android/gms/ads/internal/zze;-><init>(Landroid/content/Context;)V

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/zzha;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-direct {v0, v1, p9}, Lcom/google/android/gms/internal/zzha;-><init>(Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/internal/zzhg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzli;->zzcot:Lcom/google/android/gms/internal/zzjo;

    const-string/jumbo v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/zzek;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/zzek;-><init>(Lcom/google/android/gms/internal/zzel;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/backButton"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbhx:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/refresh"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbhy:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbho:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/canOpenIntents"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbhp:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbhq:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbhr:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbht:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbic:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/delayPageLoaded"

    new-instance v1, Lcom/google/android/gms/internal/zzli$zze;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzli$zze;-><init>(Lcom/google/android/gms/internal/zzli;B)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbhu:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbhv:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/mraid"

    new-instance v1, Lcom/google/android/gms/internal/zzev;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    invoke-direct {v1, p8, v2}, Lcom/google/android/gms/internal/zzev;-><init>(Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/mraidLoaded"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzcor:Lcom/google/android/gms/internal/zzhe;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/zzew;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzli;->zzbiu:Lcom/google/android/gms/internal/zzha;

    invoke-direct {v1, p6, p8, v2}, Lcom/google/android/gms/internal/zzew;-><init>(Lcom/google/android/gms/internal/zzer;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/precache"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbib:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbhw:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbhz:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbia:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/appStreaming"

    sget-object v1, Lcom/google/android/gms/internal/zzeo;->zzbhs:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    if-eqz p7, :cond_d6

    const-string/jumbo v0, "/setInterstitialProperties"

    new-instance v1, Lcom/google/android/gms/internal/zzes;

    invoke-direct {v1, p7}, Lcom/google/android/gms/internal/zzes;-><init>(Lcom/google/android/gms/internal/zzet;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    :cond_d6
    iput-object p1, p0, Lcom/google/android/gms/internal/zzli;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzli;->zzcom:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzli;->zzbhm:Lcom/google/android/gms/internal/zzel;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzli;->zzbiw:Lcom/google/android/gms/internal/zzer;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzli;->zzcoq:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzli;->zzbit:Lcom/google/android/gms/ads/internal/zze;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzli;->zzbqn:Lcom/google/android/gms/internal/zzhg;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzli;->zzbir:Lcom/google/android/gms/internal/zzet;

    .line 1000
    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzli;->zzcoo:Z

    .line 0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzun()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlh;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-nez v2, :cond_28

    move-object v2, v3

    :goto_16
    if-eqz v1, :cond_2b

    :goto_18
    iget-object v4, p0, Lcom/google/android/gms/internal/zzli;->zzcoq:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzum()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_28
    iget-object v2, p0, Lcom/google/android/gms/internal/zzli;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    goto :goto_16

    :cond_2b
    iget-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzcom:Lcom/google/android/gms/ads/internal/overlay/zzg;

    goto :goto_18
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcol:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzli;->zzcol:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public final zza(ZI)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzun()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-nez v1, :cond_2a

    const/4 v1, 0x0

    :goto_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzli;->zzcom:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzcoq:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzlh;->zzum()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/zzlh;ZILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    goto :goto_15
.end method

.method public final zza(ZILjava/lang/String;)V
    .registers 15

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzun()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-nez v1, :cond_30

    move-object v1, v2

    :goto_16
    if-eqz v3, :cond_33

    :goto_18
    iget-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzbhm:Lcom/google/android/gms/internal/zzel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzli;->zzcoq:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzlh;->zzum()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/zzli;->zzbiw:Lcom/google/android/gms/internal/zzer;

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzel;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/zzlh;ZILjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzer;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    goto :goto_16

    :cond_33
    new-instance v2, Lcom/google/android/gms/internal/zzli$zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzli;->zzcom:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzli$zzc;-><init>(Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/ads/internal/overlay/zzg;)V

    goto :goto_18
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzun()Z

    move-result v2

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v2, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlh;->zzdn()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-nez v1, :cond_32

    const/4 v1, 0x0

    :goto_15
    if-eqz v2, :cond_35

    const/4 v2, 0x0

    :goto_18
    iget-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzbhm:Lcom/google/android/gms/internal/zzel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzli;->zzcoq:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzlh;->zzum()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/zzli;->zzbiw:Lcom/google/android/gms/internal/zzer;

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzel;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/zzlh;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzer;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzatk:Lcom/google/android/gms/ads/internal/client/zza;

    goto :goto_15

    :cond_35
    new-instance v2, Lcom/google/android/gms/internal/zzli$zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzli;->zzcom:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzli$zzc;-><init>(Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/ads/internal/overlay/zzg;)V

    goto :goto_18
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcol:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    monitor-exit v1

    :goto_e
    return-void

    :cond_f
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_e

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public final zzho()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzark:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzlh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    return-void
.end method

.method public final zzuy()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcop:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzuz()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzcou:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    const-string/jumbo v2, "about:blank"

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzlh;->zzcy(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public final zzva()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzcot:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzli$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzli$1;-><init>(Lcom/google/android/gms/internal/zzli;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method
