.class public final Lcom/google/android/gms/internal/zzjx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkf$zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public final zzail:Ljava/lang/Object;

.field public zzaju:Lcom/google/android/gms/internal/zzcg;

.field private zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzamt:Z

.field private zzask:Lcom/google/android/gms/internal/zzcn;

.field private zzasl:Lcom/google/android/gms/internal/zzcm;

.field private zzbjf:Ljava/lang/String;

.field private zzcff:Z

.field private zzcfg:Z

.field private zzcfo:Z

.field public final zzcjm:Ljava/lang/String;

.field private final zzcjn:Lcom/google/android/gms/internal/zzjy;

.field private zzcjo:Ljava/math/BigInteger;

.field public final zzcjp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjv;",
            ">;"
        }
    .end annotation
.end field

.field public final zzcjq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzka;",
            ">;"
        }
    .end annotation
.end field

.field private zzcjr:Z

.field private zzcjs:I

.field private zzcjt:Lcom/google/android/gms/internal/zzde;

.field private zzcju:Lcom/google/android/gms/internal/zzco;

.field private zzcjv:Ljava/lang/String;

.field zzcjw:Ljava/lang/Boolean;

.field public zzcjx:Z

.field private zzcjy:Z

.field public zzcjz:Z

.field private zzcka:Ljava/lang/String;

.field private zzckb:J


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjo:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjp:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjq:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcjr:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzjx;->zzcff:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcjs:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjx;->zzamt:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzcjt:Lcom/google/android/gms/internal/zzde;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzjx;->zzcfg:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzask:Lcom/google/android/gms/internal/zzcn;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzcju:Lcom/google/android/gms/internal/zzco;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzasl:Lcom/google/android/gms/internal/zzcm;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzcjw:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcjx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcjy:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcfo:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcjz:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcka:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjx;->zzckb:J

    invoke-static {}, Lcom/google/android/gms/internal/zzkh;->zztf()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjm:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzjy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcjm:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzjy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjn:Lcom/google/android/gms/internal/zzjy;

    return-void
.end method

.method private zzsi()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcfg:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method


# virtual methods
.method public final getResources()Landroid/content/res/Resources;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcnm:Z

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/internal/zzsb;->KI:Lcom/google/android/gms/internal/zzsb$zzb;

    const-string/jumbo v3, "com.google.android.gms.ads.dynamite"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzsb$zzb;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsb;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 25000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzsb;->KN:Landroid/content/Context;

    .line 0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_20
    .catch Lcom/google/android/gms/internal/zzsb$zza; {:try_start_e .. :try_end_20} :catch_22

    move-result-object v0

    goto :goto_d

    :catch_22
    move-exception v1

    const-string/jumbo v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjz;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcjn:Lcom/google/android/gms/internal/zzjy;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/zzjy;->zze(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjq:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcjq:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzka;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzka;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_23

    :catchall_3f
    move-exception v0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    :try_start_42
    const-string/jumbo v0, "slots"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjv;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_67
    const-string/jumbo v0, "ads"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjp:Ljava/util/HashSet;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzjz;->zza(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_42 .. :try_end_78} :catchall_3f

    return-object v3
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjv;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final zzaa(Landroid/content/Context;)Lcom/google/android/gms/internal/zzco;
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 0
    sget-object v1, Lcom/google/android/gms/internal/zzdc;->zzazh:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2000
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v1

    .line 0
    if-eqz v1, :cond_21

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjx;->zzsi()Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_21
    move-object v1, v2

    :goto_22
    return-object v1

    :cond_23
    iget-object v3, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v3

    :try_start_26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_2e

    if-nez p1, :cond_31

    :cond_2e
    monitor-exit v3

    move-object v1, v2

    goto :goto_22

    :cond_31
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzask:Lcom/google/android/gms/internal/zzcn;

    if-nez v1, :cond_48

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lcom/google/android/gms/internal/zzcn;

    if-nez v1, :cond_43

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    move-object v1, v0

    :cond_43
    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/zzcn;-><init>(Landroid/app/Application;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzask:Lcom/google/android/gms/internal/zzcn;

    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzasl:Lcom/google/android/gms/internal/zzcm;

    if-nez v1, :cond_53

    new-instance v1, Lcom/google/android/gms/internal/zzcm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcm;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzasl:Lcom/google/android/gms/internal/zzcm;

    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcju:Lcom/google/android/gms/internal/zzco;

    if-nez v1, :cond_6d

    new-instance v1, Lcom/google/android/gms/internal/zzco;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzask:Lcom/google/android/gms/internal/zzcn;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzjx;->zzasl:Lcom/google/android/gms/internal/zzcm;

    new-instance v5, Lcom/google/android/gms/internal/zzim;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzjx;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzjx;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/zzim;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/gms/internal/zzco;-><init>(Lcom/google/android/gms/internal/zzcn;Lcom/google/android/gms/internal/zzcm;Lcom/google/android/gms/internal/zzim;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcju:Lcom/google/android/gms/internal/zzco;

    :cond_6d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcju:Lcom/google/android/gms/internal/zzco;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzco;->zzhz()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzcju:Lcom/google/android/gms/internal/zzco;

    monitor-exit v3

    goto :goto_22

    :catchall_76
    move-exception v1

    monitor-exit v3
    :try_end_78
    .catchall {:try_start_26 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public final zzae(Z)V
    .registers 5

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcfg:Z

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->mContext:Landroid/content/Context;

    .line 3000
    new-instance v2, Lcom/google/android/gms/internal/zzkf$7;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzkf$7;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    .line 0
    :cond_11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzjx;->zzcfg:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzjx;->zzaa(Landroid/content/Context;)Lcom/google/android/gms/internal/zzco;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzco;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo v2, "start fetching content..."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzco;->zzhz()V

    :cond_2a
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzamt:Z

    if-nez v0, :cond_a7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjx;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 8000
    new-instance v0, Lcom/google/android/gms/internal/zzkf$5;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/zzkf$5;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkf$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    .line 9000
    new-instance v0, Lcom/google/android/gms/internal/zzkf$6;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/zzkf$6;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkf$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    .line 10000
    new-instance v0, Lcom/google/android/gms/internal/zzkf$8;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/zzkf$8;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkf$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    .line 11000
    new-instance v0, Lcom/google/android/gms/internal/zzkf$10;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/zzkf$10;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkf$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    .line 12000
    new-instance v0, Lcom/google/android/gms/internal/zzkf$2;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/zzkf$2;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkf$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    .line 13000
    new-instance v0, Lcom/google/android/gms/internal/zzkf$4;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/zzkf$4;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkf$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    .line 0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 14000
    iget-object v2, p0, Lcom/google/android/gms/internal/zzjx;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjx;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/zzim;->zza(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzim;

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzkh;->zzg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzbjf:Ljava/lang/String;

    .line 15000
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_6b

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-nez v0, :cond_6b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjy:Z

    :cond_6b
    new-instance v0, Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjx;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzkh;->zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzfs;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzcg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzfs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzaju:Lcom/google/android/gms/internal/zzcg;

    .line 16000
    new-instance v2, Lcom/google/android/gms/internal/zzdd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjx;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/zzdd;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_be

    :try_start_8b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfv()Lcom/google/android/gms/internal/zzdf;

    .line 18000
    iget-boolean v0, v2, Lcom/google/android/gms/internal/zzdd;->zzbdo:Z

    .line 17000
    if-nez v0, :cond_a9

    const-string/jumbo v0, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16000
    :goto_99
    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjt:Lcom/google/android/gms/internal/zzde;
    :try_end_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_9b} :catch_b6
    .catchall {:try_start_8b .. :try_end_9b} :catchall_be

    .line 0
    :goto_9b
    :try_start_9b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzga()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjx;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzt(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzamt:Z

    :cond_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_9b .. :try_end_a8} :catchall_be

    return-void

    .line 19000
    :cond_a9
    :try_start_a9
    iget-object v0, v2, Lcom/google/android/gms/internal/zzdd;->mContext:Landroid/content/Context;

    .line 17000
    if-nez v0, :cond_c1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Context can\'t be null. Please set up context in CsiConfiguration."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a9 .. :try_end_b6} :catch_b6
    .catchall {:try_start_a9 .. :try_end_b6} :catchall_be

    .line 16000
    :catch_b6
    move-exception v0

    :try_start_b7
    const-string/jumbo v2, "Cannot initialize CSI reporter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9b

    .line 0
    :catchall_be
    move-exception v0

    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_be

    throw v0

    .line 20000
    :cond_c1
    :try_start_c1
    iget-object v0, v2, Lcom/google/android/gms/internal/zzdd;->zzarj:Ljava/lang/String;

    .line 17000
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "AfmaVersion can\'t be null or empty. Please set up afmaVersion in CsiConfiguration."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d2
    new-instance v0, Lcom/google/android/gms/internal/zzde;

    .line 21000
    iget-object v3, v2, Lcom/google/android/gms/internal/zzdd;->mContext:Landroid/content/Context;

    .line 22000
    iget-object v4, v2, Lcom/google/android/gms/internal/zzdd;->zzarj:Ljava/lang/String;

    .line 23000
    iget-object v5, v2, Lcom/google/android/gms/internal/zzdd;->zzbdp:Ljava/lang/String;

    .line 24000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzdd;->zzbdq:Ljava/util/Map;

    .line 17000
    invoke-direct {v0, v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzde;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_df
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c1 .. :try_end_df} :catch_b6
    .catchall {:try_start_c1 .. :try_end_df} :catchall_be

    goto :goto_99
.end method

.method public final zzb(Ljava/lang/Throwable;Z)V
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzim;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzalo:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzim;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzim;->zza(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final zzc(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .registers 5

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcff:Z

    if-eq p2, v0, :cond_16

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzjx;->zzcff:Z

    .line 4000
    new-instance v0, Lcom/google/android/gms/internal/zzkf$1;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzkf$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 0
    monitor-exit v1

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_15

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public final zzcm(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 5

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_1e

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjx;->zzcjv:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->mContext:Landroid/content/Context;

    .line 5000
    new-instance v2, Lcom/google/android/gms/internal/zzkf$9;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzkf$9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 0
    monitor-exit v1

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1d

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 7

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjx;->zzckb:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_28

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcka:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjx;->zzcka:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjx;->zzckb:J

    .line 7000
    new-instance v0, Lcom/google/android/gms/internal/zzkf$3;

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/zzkf$3;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 0
    monitor-exit v1

    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_27

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public final zzd(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .registers 5

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcfo:Z

    if-eq p2, v0, :cond_16

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzjx;->zzcfo:Z

    .line 6000
    new-instance v0, Lcom/google/android/gms/internal/zzkf$11;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzkf$11;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 0
    monitor-exit v1

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_15

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public final zzg(Landroid/os/Bundle;)V
    .registers 5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    const-string/jumbo v0, "use_https"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string/jumbo v0, "use_https"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcff:Z

    const-string/jumbo v0, "webview_cache_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    const-string/jumbo v0, "webview_cache_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_25
    iput v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjs:I

    const-string/jumbo v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "content_url_opted_out"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzjx;->zzae(Z)V

    :cond_3a
    const-string/jumbo v0, "content_url_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string/jumbo v0, "content_url_hashes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjv:Ljava/lang/String;

    :cond_4c
    const-string/jumbo v0, "auto_collect_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string/jumbo v0, "auto_collect_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_5c
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcfo:Z

    const-string/jumbo v0, "app_settings_json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const-string/jumbo v0, "app_settings_json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6e
    iput-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcka:Ljava/lang/String;

    const-string/jumbo v0, "app_settings_last_update_ms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string/jumbo v0, "app_settings_last_update_ms"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_80
    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjx;->zzckb:J

    monitor-exit v2

    return-void

    :cond_84
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcff:Z

    goto :goto_13

    :cond_87
    iget v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjs:I

    goto :goto_25

    :cond_8a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcfo:Z

    goto :goto_5c

    :cond_8d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcka:Ljava/lang/String;

    goto :goto_6e

    :cond_90
    const-wide/16 v0, 0x0

    goto :goto_80

    :catchall_93
    move-exception v0

    monitor-exit v2
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw v0
.end method

.method public final zzsj()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjo:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzcjo:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzcjo:Ljava/math/BigInteger;

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final zzsk()Lcom/google/android/gms/internal/zzjy;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjn:Lcom/google/android/gms/internal/zzjy;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzsl()Lcom/google/android/gms/internal/zzde;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjt:Lcom/google/android/gms/internal/zzde;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzsm()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjr:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzjx;->zzcjr:Z

    monitor-exit v1

    return v0

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final zzsn()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcff:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjy:Z

    if-eqz v0, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final zzso()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzbjf:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzsp()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjv:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzsq()Ljava/lang/Boolean;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjw:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzsr()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcfo:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzst()Lcom/google/android/gms/internal/zzjw;
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/zzjw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzcka:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzjx;->zzckb:J

    invoke-direct {v0, v2, v4, v5}, Lcom/google/android/gms/internal/zzjw;-><init>(Ljava/lang/String;J)V

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final zzsv()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzcjx:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
