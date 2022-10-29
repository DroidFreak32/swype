.class final Lcom/google/android/gms/internal/zzip$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzip;->zza$3b3f878a(Landroid/content/Context;Lcom/google/android/gms/internal/zzfs;Lcom/google/android/gms/internal/zzio;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzceb:Lcom/google/android/gms/internal/zzio;

.field final synthetic zzcec:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzced:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzio;Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzip$1;->zzceb:Lcom/google/android/gms/internal/zzio;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzip$1;->zzala:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzip$1;->zzcec:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzip$1;->zzced:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$1;->zzcec:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcas:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 0
    return-object v0
.end method
