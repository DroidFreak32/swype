.class public final Lcom/google/android/gms/auth/api/zza;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/auth/api/zzb;",
            ">;"
        }
    .end annotation
.end field

.field public static final cH:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzna;",
            ">;"
        }
    .end annotation
.end field

.field private static final cI:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzna;",
            "Lcom/google/android/gms/auth/api/zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/zza;->cH:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/auth/api/zza$1;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/zza$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/zza;->cI:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string/jumbo v1, "Auth.PROXY_API"

    sget-object v2, Lcom/google/android/gms/auth/api/zza;->cI:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/auth/api/zza;->cH:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/auth/api/zza;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method
