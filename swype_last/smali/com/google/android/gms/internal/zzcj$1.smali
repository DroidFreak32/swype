.class final Lcom/google/android/gms/internal/zzcj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;Lcom/google/android/gms/internal/zzfs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzla$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzft;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzars:Lorg/json/JSONObject;

.field final synthetic zzart:Lcom/google/android/gms/internal/zzcj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcj;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcj$1;->zzart:Lcom/google/android/gms/internal/zzcj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcj$1;->zzars:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcj$1;->zzart:Lcom/google/android/gms/internal/zzcj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcj$1;->zzars:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcj;->zza(Lorg/json/JSONObject;)V

    .line 0
    return-void
.end method
