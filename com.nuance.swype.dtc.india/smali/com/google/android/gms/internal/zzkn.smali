.class public final Lcom/google/android/gms/internal/zzkn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzkn$zzc;,
        Lcom/google/android/gms/internal/zzkn$zzb;,
        Lcom/google/android/gms/internal/zzkn$zza;
    }
.end annotation


# static fields
.field static zzcmc:Lcom/google/android/gms/internal/zzl;

.field private static final zzcmd:Ljava/lang/Object;

.field public static final zzcme:Lcom/google/android/gms/internal/zzkn$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzkn$zza",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzkn;->zzcmd:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzkn$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkn$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzkn;->zzcme:Lcom/google/android/gms/internal/zzkn$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkn;->zzap(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;

    return-void
.end method

.method private static zzap(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;
    .locals 2

    .prologue
    .line 0
    sget-object v1, Lcom/google/android/gms/internal/zzkn;->zzcmd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzkn;->zzcmc:Lcom/google/android/gms/internal/zzl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1000
    invoke-static {v0}, Lcom/google/android/gms/internal/zzac;->zza$575a9856(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;

    move-result-object v0

    .line 0
    sput-object v0, Lcom/google/android/gms/internal/zzkn;->zzcmc:Lcom/google/android/gms/internal/zzl;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzkn;->zzcmc:Lcom/google/android/gms/internal/zzl;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
