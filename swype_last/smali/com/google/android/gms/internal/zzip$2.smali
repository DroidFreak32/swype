.class final Lcom/google/android/gms/internal/zzip$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzip;->zza$3b3f878a(Landroid/content/Context;Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzio;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakg:Lcom/google/android/gms/internal/zzdk;

.field final synthetic zzakw:Lcom/google/android/gms/internal/zzfs;

.field final synthetic zzcee:Lcom/google/android/gms/internal/zzir;

.field final synthetic zzcef:Lcom/google/android/gms/internal/zzdi;

.field final synthetic zzceg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzip$2;->zzakw:Lcom/google/android/gms/internal/zzfs;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzip$2;->zzcee:Lcom/google/android/gms/internal/zzir;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzip$2;->zzakg:Lcom/google/android/gms/internal/zzdk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzip$2;->zzcef:Lcom/google/android/gms/internal/zzdi;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzip$2;->zzceg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$2;->zzakw:Lcom/google/android/gms/internal/zzfs;

    .line 1000
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfs;->zzc(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$2;->zzcee:Lcom/google/android/gms/internal/zzir;

    .line 2000
    iput-object v0, v1, Lcom/google/android/gms/internal/zzir;->zzceo:Lcom/google/android/gms/internal/zzfs$zzc;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$2;->zzakg:Lcom/google/android/gms/internal/zzdk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzip$2;->zzcef:Lcom/google/android/gms/internal/zzdi;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "rwc"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$2;->zzakg:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzip$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzip$2$1;-><init>(Lcom/google/android/gms/internal/zzip$2;Lcom/google/android/gms/internal/zzdi;)V

    new-instance v1, Lcom/google/android/gms/internal/zzip$2$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzip$2$2;-><init>(Lcom/google/android/gms/internal/zzip$2;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzfs$zzc;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    return-void
.end method
