.class final Lcom/google/android/gms/internal/zzeq$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbig:Lorg/json/JSONObject;

.field final synthetic zzbih:Lcom/google/android/gms/internal/zzeq$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeq$1;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeq$1$1;->zzbih:Lcom/google/android/gms/internal/zzeq$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeq$1$1;->zzbig:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq$1$1;->zzbih:Lcom/google/android/gms/internal/zzeq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeq$1;->zzbie:Lcom/google/android/gms/internal/zzlh;

    const-string/jumbo v1, "fetchHttpRequestCompleted"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeq$1$1;->zzbig:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzlh;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "Dispatched http response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    return-void
.end method
