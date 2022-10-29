.class final Lcom/google/android/gms/internal/zzeq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeq;->zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgn:Ljava/util/Map;

.field final synthetic zzbie:Lcom/google/android/gms/internal/zzlh;

.field final synthetic zzbif:Lcom/google/android/gms/internal/zzeq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeq;Ljava/util/Map;Lcom/google/android/gms/internal/zzlh;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeq$1;->zzbif:Lcom/google/android/gms/internal/zzeq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeq$1;->zzbgn:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeq$1;->zzbie:Lcom/google/android/gms/internal/zzlh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const-string/jumbo v0, "Received Http request."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq$1;->zzbgn:Ljava/util/Map;

    const-string/jumbo v1, "http_request"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq$1;->zzbif:Lcom/google/android/gms/internal/zzeq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzeq;->zzav(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "Response should not be null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->e(Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    sget-object v1, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzeq$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzeq$1$1;-><init>(Lcom/google/android/gms/internal/zzeq$1;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f
.end method
