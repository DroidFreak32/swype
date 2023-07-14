.class final Lcom/google/android/gms/internal/zzip$3;
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
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzceb:Lcom/google/android/gms/internal/zzio;

.field final synthetic zzcec:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzcee:Lcom/google/android/gms/internal/zzir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzio;Landroid/content/Context;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzip$3;->zzceb:Lcom/google/android/gms/internal/zzio;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzip$3;->zzala:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzip$3;->zzcee:Lcom/google/android/gms/internal/zzir;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzip$3;->zzcec:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$3;->zzceb:Lcom/google/android/gms/internal/zzio;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzio;->zzcdr:Lcom/google/android/gms/internal/zzix;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$3;->zzcee:Lcom/google/android/gms/internal/zzir;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzip$3;->zzcec:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzix;->zza$26a23421(Lcom/google/android/gms/internal/zzir;)V

    return-void
.end method
