.class public final Lcom/google/android/gms/clearcut/zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/clearcut/zzb$zza;,
        Lcom/google/android/gms/clearcut/zzb$zzd;,
        Lcom/google/android/gms/clearcut/zzb$zzb;,
        Lcom/google/android/gms/clearcut/zzb$zzc;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final bJ:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzpc;",
            ">;"
        }
    .end annotation
.end field

.field public static final bK:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzpc;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final pZ:Lcom/google/android/gms/clearcut/zzc;


# instance fields
.field private final aM:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final qa:I

.field private qb:Ljava/lang/String;

.field private qc:I

.field private qd:Ljava/lang/String;

.field private qe:Ljava/lang/String;

.field private final qf:Z

.field private qg:I

.field private final qh:Lcom/google/android/gms/clearcut/zzc;

.field private final qi:Lcom/google/android/gms/clearcut/zza;

.field private qj:Lcom/google/android/gms/clearcut/zzb$zzd;

.field private final qk:Lcom/google/android/gms/clearcut/zzb$zzb;

.field private final zzaoc:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->bJ:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/clearcut/zzb$1;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/zzb$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->bK:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string/jumbo v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/clearcut/zzb;->bK:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/clearcut/zzb;->bJ:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzpb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpb;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zzb;->pZ:Lcom/google/android/gms/clearcut/zzc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    sget-object v3, Lcom/google/android/gms/clearcut/zzb;->pZ:Lcom/google/android/gms/clearcut/zzc;

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzavm()Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/clearcut/zza;->pY:Lcom/google/android/gms/clearcut/zza;

    new-instance v6, Lcom/google/android/gms/internal/zzpg;

    invoke-direct {v6, p1}, Lcom/google/android/gms/internal/zzpg;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/clearcut/zzb;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/clearcut/zzc;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/clearcut/zza;Lcom/google/android/gms/clearcut/zzb$zzb;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/clearcut/zzc;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/clearcut/zza;Lcom/google/android/gms/clearcut/zzb$zzb;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/clearcut/zzb;->qc:I

    iput v1, p0, Lcom/google/android/gms/clearcut/zzb;->qg:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->aM:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzbl(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb;->qa:I

    iput v2, p0, Lcom/google/android/gms/clearcut/zzb;->qc:I

    iput-object p2, p0, Lcom/google/android/gms/clearcut/zzb;->qb:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/clearcut/zzb;->qd:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/clearcut/zzb;->qe:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/clearcut/zzb;->qf:Z

    iput-object p3, p0, Lcom/google/android/gms/clearcut/zzb;->qh:Lcom/google/android/gms/clearcut/zzc;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/zzb;->zzaoc:Lcom/google/android/gms/common/util/zze;

    new-instance v0, Lcom/google/android/gms/clearcut/zzb$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/zzb$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->qj:Lcom/google/android/gms/clearcut/zzb$zzd;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/zzb;->qi:Lcom/google/android/gms/clearcut/zza;

    iput v1, p0, Lcom/google/android/gms/clearcut/zzb;->qg:I

    iput-object p6, p0, Lcom/google/android/gms/clearcut/zzb;->qk:Lcom/google/android/gms/clearcut/zzb$zzb;

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb;->qf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->qd:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "can\'t be anonymous with an upload account"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic zza(Lcom/google/android/gms/clearcut/zzb;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/zzb;->qc:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->qb:Ljava/lang/String;

    return-object v0
.end method

.method private static zzbl(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "ClearcutLogger"

    const-string/jumbo v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->qd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->qe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zze$4b6941f3()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zze$97c022f()[I
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->zzaoc:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method static synthetic zzf$1d3331e4()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2000
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/clearcut/zzb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzg$26044621()[[B
    .locals 1

    .prologue
    .line 3000
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->qi:Lcom/google/android/gms/clearcut/zza;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->qj:Lcom/google/android/gms/clearcut/zzb$zzd;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/clearcut/zzb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb;->qf:Z

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->aM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/clearcut/zzb;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/zzb;->qa:I

    return v0
.end method

.method public static synthetic zzm(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->qk:Lcom/google/android/gms/clearcut/zzb$zzb;

    return-object v0
.end method

.method public static synthetic zzn(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb;->qh:Lcom/google/android/gms/clearcut/zzc;

    return-object v0
.end method
