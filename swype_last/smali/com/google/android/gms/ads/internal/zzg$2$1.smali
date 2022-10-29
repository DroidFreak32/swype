.class final Lcom/google/android/gms/ads/internal/zzg$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzg$2;->run()V
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
.field final synthetic zzalb:Lcom/google/android/gms/ads/internal/zzg$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzg$2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzalb:Lcom/google/android/gms/ads/internal/zzg$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzft;

    .line 1000
    const-string/jumbo v0, "/appSettingsFetched"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzalb:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzg$2;->zzakv:Lcom/google/android/gms/ads/internal/zzg;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzg;->zzaku:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzalb:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzg$2;->zzakx:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzalb:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzg$2;->zzakx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_27
    :goto_27
    const-string/jumbo v1, "is_init"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzalb:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/zzg$2;->zzakz:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "pn"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzalb:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzg$2;->zzala:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "AFMA_fetchAppSettings"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_45
    return-void

    :cond_46
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzalb:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzg$2;->zzaky:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string/jumbo v1, "ad_unit_id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzalb:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzg$2;->zzaky:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5a} :catch_5b

    goto :goto_27

    :catch_5b
    move-exception v0

    const-string/jumbo v1, "/appSettingsFetched"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzg$2$1;->zzalb:Lcom/google/android/gms/ads/internal/zzg$2;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzg$2;->zzakv:Lcom/google/android/gms/ads/internal/zzg;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzg;->zzaku:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/zzft;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v1, "Error requesting application settings"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45
.end method
